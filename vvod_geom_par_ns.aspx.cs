using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class vvod_geom_par_ns : System.Web.UI.Page
{
    string recordID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Object ID_wheel = Request.QueryString["ID_wheel"];
        if (ID_wheel == null) return;



        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "SELECT * FROM ROUGH_DATA WHERE ID_WHEEL=" + ID_wheel.ToString() + " AND YEAR_WHEEL= " + Request.QueryString["year_wheel"] + " AND ID_MELT= " + Request.QueryString["ID_melt"] + " AND YEAR_MELT= " + Request.QueryString["year_melt"];

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
                        TextBox10.Text = reader["UTOPANIE_STUPICI"].ToString();

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
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Boolean check = true;
        String message = "";
        if(String.IsNullOrEmpty(TextBox10.Text)) 
        {
            check = false;
            message += " TextBox10.Text пустое";
        }
        if (check == false)
        {
            Errormes.Text = message;
            return;
        }

        int checkin;
        if (CheckBox1.Checked == true) checkin = 1; 
        else checkin = 0;
              
        if (TextBox12.Text!=""&TextBox13.Text!=""&TextBox14.Text!=""&TextBox15.Text!="") {
            using (OracleConnection conn = new OracleConnection(ConnectionString))
            {
                try
                {
                    string queryString = "INSERT INTO WHEEL (ID_REC, ID_OPER, GODNOST, ID_USER, REC_DATE, DIAM_KRUGA_KATANIYA_NS, SHIRINA_OBODA_NS, UTOPANIE_NS, DIAM_STUPICI_NS, VNUTRENNIY_DIAM_OBODA_NS) VALUES('" + recordID + "', 1 ,'" + TextBox7.Text.ToString() + "','" + Request.QueryString["userID"] + "','" + DateTime.Now.ToString() + "','" + TextBox12.Text.ToString() + "','" + TextBox13.Text.ToString() + "','" + TextBox14.Text.ToString() + "','"+ checkin +"','" + TextBox15.Text.ToString() + "')";

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
