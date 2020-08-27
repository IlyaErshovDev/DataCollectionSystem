using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class peretochka : System.Web.UI.Page
{
    string recordID = "";
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
                        TextBox8.Text = reader["DIAMETR_KRUGA_KATANIYA"].ToString();
                        TextBox9.Text = reader["SHIRINA_OBODA"].ToString();
                        TextBox10.Text = reader["PRICHINA"].ToString();


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

        }

        Label8.Text = DateTime.Now.ToString();
        Label9.Text = Request.QueryString["recID"];
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        int checkin;
        if (CheckBox1.Checked == true) checkin = 1;
        else checkin = 0;
        if (TextBox12.Text != "" & TextBox13.Text != "")
        {
            using (OracleConnection conn = new OracleConnection(ConnectionString))
            {
                try
                {
                    string queryString = "INSERT INTO WHEEL (ID_REC, ID_OPER, GODNOST, ID_USER, REC_DATE, DIAM_KRUGA_KATANIYA_NS, SHIRINA_OBODA_NS, PROFIL, PRICHINA_BRAKA) VALUES('" + recordID + "', 3 ,'" + Select1.Value.ToString() + "','" + Request.QueryString["userID"] + "','" + DateTime.Now.ToString() + "','" + TextBox12.Text.ToString() + "','" + TextBox13.Text.ToString() + "','" + checkin + "','" + Select2.Value.ToString() + "')";

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
        else Errormes.Text = "Введено нулевое значение";
    }
}
