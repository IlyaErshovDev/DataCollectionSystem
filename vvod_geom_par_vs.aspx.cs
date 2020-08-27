using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class vvod_geom_par_vs : System.Web.UI.Page
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

        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "SELECT * FROM WHEEL WHERE ID_REC=" + recordID +" AND ID_OPER='1'";

                OracleCommand command = new OracleCommand(queryString, conn);
                conn.Open();
                OracleDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TextBox12.Text = reader["DIAM_KRUGA_KATANIYA_NS"].ToString();
                        TextBox13.Text = reader["SHIRINA_OBODA_NS"].ToString();
                        TextBox14.Text = reader["UTOPANIE_NS"].ToString();
                        TextBox15.Text = reader["VNUTRENNIY_DIAM_OBODA_NS"].ToString();
                        if (reader["DIAM_STUPICI_NS"].ToString() == "1") CheckBox1.Checked=true;

                    }
                }
                else
                {
                    Errormes.Text = "Обработка наружной стороны не была произведена";
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
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox16.Text != "" & TextBox17.Text != "" & TextBox18.Text != "" & TextBox19.Text != "" & TextBox20.Text != "")
        {
            using (OracleConnection conn = new OracleConnection(ConnectionString))
            {
                try
                {
                    string queryString = "INSERT INTO WHEEL (ID_REC, ID_OPER, GODNOST, ID_USER, REC_DATE, VILET_STUPICI_VS, TOLSHINA_DISKA_U_OBODA_VS, TOLSHINA_DISKA_U_STUPICI_VS, TOLSHINA_DISKA_V_SEREDINE_VS, VNUTRENNIY_DIAM_OBODA_VS) VALUES('" + recordID + "', 2 ,'" + TextBox7.Text.ToString() + "','" + Request.QueryString["userID"] + "','" + DateTime.Now.ToString() + "','" + TextBox16.Text.ToString() + "','" + TextBox17.Text.ToString() + "','" + TextBox18.Text.ToString() + "','" + TextBox19.Text.ToString() + "','" + TextBox20.Text.ToString() + "')";

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

