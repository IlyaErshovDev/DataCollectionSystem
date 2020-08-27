using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class proverka_dannyh : System.Web.UI.Page
{
    string recordID = "";
    string godn = "";
 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "SELECT * FROM ROUGH_DATA WHERE ID_WHEEL=" + Request.QueryString["ID_wheel"] + " AND YEAR_WHEEL= " + Request.QueryString["year_wheel"] + " AND ID_MELT= " + Request.QueryString["ID_melt"] + " AND YEAR_MELT= " + Request.QueryString["year_melt"];

                OracleCommand command = new OracleCommand(queryString, conn);
                conn.Open();
                OracleDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                      recordID = reader["REC_ID"].ToString();
                      TextBox4.Text = reader["ID_WHEEL"].ToString();
                      TextBox1.Text = reader["YEAR_WHEEL"].ToString();
                      TextBox2.Text = reader["YEAR_MELT"].ToString();
                      TextBox3.Text = reader["ID_MELT"].ToString();
                      TextBox5.Text = reader["KALIBROVKA"].ToString();
                      TextBox6.Text = reader["RASTOCHKA"].ToString();
                      TextBox7.Text = reader["GODNOST"].ToString();
                        godn = reader["GODNOST"].ToString();
                    }
                }
                else
                {
                    Errormes.Text = "No rows found";
                }
                reader.Close();
                conn.Close();
            }

            catch
            {

                Errormes.Text = "ERROR";

                conn.Close();
            };
            Label8.Text = DateTime.Now.ToString();
            Label9.Text = Request.QueryString["recID"];
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["kalibrovka"] == "1")
        {
            using (OracleConnection conn = new OracleConnection(ConnectionString))
            {
                try
                {
                    string queryString = "INSERT INTO WHEEL (ID_REC, ID_OPER, GODNOST, ID_USER) VALUES('" + recordID + "', 5 ,'" + TextBox7.Text.ToString() + "','" + Request.QueryString["userID"] + "')";

                    OracleCommand command = new OracleCommand(queryString, conn);
                    command.Connection.Open();
                    command.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("vvod1.aspx?userID=" + Request.QueryString["userID"]);
                }

                catch
                {

                    Errormes.Text = "Ошибка ввода данных";

                    conn.Close();
                };
            }
        }
        switch (godn)
        {
            case "Т":
                if (Request.QueryString["checkin"] == "0")
                    Response.Redirect("vvod_geom_par_ns.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                else Response.Redirect("vvod_geom_par_vs.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                break;
            case "Зд":
                if (Request.QueryString["checkin"] == "0")
                    Response.Redirect("vvod_geom_par_ns.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                else Response.Redirect("vvod_geom_par_vs.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                break;
            case "П":
                Response.Redirect("Peretochka.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                break;
            case "Р":
                Response.Redirect("Remont.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + Request.QueryString["userID"]);
                break;
            case "Б-к":
                Response.Redirect("Vvod1.aspx?userID="+ Request.QueryString["userID"]);
                break;
            default:
                Errormes.Text = "ERROR";
                break;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("vvod1.aspx?userID=" + Request.QueryString["userID"]);
    }
}
