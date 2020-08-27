using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class Remont : System.Web.UI.Page
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
        int checkin2;
        if (CheckBox2.Checked == true) checkin2 = 1;
        else checkin2 = 0;
        if (TextBox15.Text != "" & TextBox9.Text != "" & TextBox16.Text != "" & TextBox17.Text != "" & TextBox21.Text != "" & TextBox22.Text != "" & TextBox23.Text != "")
        {
            using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "INSERT INTO WHEEL (ID_REC, ID_OPER, GODNOST, ID_USER, REC_DATE, SHIRINA_OBODA_NS, UTOPANIE_NS, DIAM_STUPICI_NS, VNUTRENNIY_DIAM_OBODA_NS, TOLSHINA_DISKA_U_OBODA_VS, TOLSHINA_DISKA_U_STUPICI_VS, TOLSHINA_DISKA_V_SEREDINE_VS, VNUTRENNIY_DIAM_OBODA_VS, PRICHINA_BRAKA, MARKIROVKA, VIYAVLENNIY_DEFEKT) VALUES('" + recordID + "', 4 ,'" + Select1.Value.ToString() + "','" + Request.QueryString["userID"] + "','" + DateTime.Now.ToString() + "','" + TextBox15.Text.ToString() + "','" + TextBox9.Text.ToString() + "','" + checkin + "','" + TextBox16.Text.ToString() + "','" + TextBox23.Text.ToString() +  "','" + TextBox21.Text.ToString() + "','" + TextBox22.Text.ToString() + "','" + TextBox23.Text.ToString() + "','" + Select2.Value.ToString() + "','" + checkin2 + "','" + Select3.Value.ToString() + "')";

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
