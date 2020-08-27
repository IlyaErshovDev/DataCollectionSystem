using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;


public partial class vvod1 : System.Web.UI.Page
{
    string userID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string result = "";

        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "SELECT * FROM USERS WHERE USER_ID=" + Request.QueryString["userID"];

                OracleCommand command = new OracleCommand(queryString, conn);
                conn.Open();
                OracleDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        userID = reader["User_ID"].ToString();
                        result += string.Format("Станок {6} - {3} - Смена {4}",
                         reader.GetInt32(0), reader.GetValue(1), reader.GetValue(2), reader.GetValue(3), reader.GetValue(4), reader.GetValue(5), reader.GetValue(6));

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
            Label9.Text = result;
            Label8.Text = DateTime.Now.ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string REC_ID = "";
        string godn = "";
        string date = "";
        int checkin;
        if (CheckBox2.Checked == true) checkin = 1;
        else checkin = 0;
        

        int id_oper = 0;
        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            try
            {
                string queryString = "SELECT * FROM ROUGH_DATA WHERE ID_WHEEL=" + TextBox4.Text + " AND YEAR_WHEEL= " + TextBox1.Text + " AND ID_MELT= " + TextBox3.Text + " AND YEAR_MELT= " + TextBox2.Text;

                OracleCommand command = new OracleCommand(queryString, conn);
                conn.Open();
                OracleDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        REC_ID = reader["REC_ID"].ToString();
                        godn = reader["GODNOST"].ToString();
                        date = reader["REC_DATE"].ToString();

                    }
                    if (CheckBox1.Checked == false) 
                    {
                        switch (godn)
                                {
                            case "Т":
                                if (checkin == 0) id_oper = 1;
                                else id_oper = 2;
                                break;
                            case "Зд":
                                if (checkin == 0) id_oper = 1;
                                else id_oper = 2; break;
                            case "П":
                                id_oper = 3;
                                break;
                            case "Р":
                                id_oper = 4;
                                break;
                            case "Б-к":
                                Response.Redirect("proverka_dannyh.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + userID + "&checkin=" + checkin + "&kalibrovka=0" );

                                break;
                            default:
                                Errormes.Text = "ERROR";
                                break;
                                }
                    }
                    if (CheckBox1.Checked == true) {
                        
                        Response.Redirect("proverka_dannyh.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + userID + "&checkin=" + checkin + "&kalibrovka=1");

                    }
                    reader.Close();
                    conn.Close();

                }

                else Errormes.Text = "Колеса № " + TextBox1.Text + " - " + TextBox4.Text + " не существует";
                conn.Close();

            }

            catch
            {

                Errormes.Text = "ERROR";

                conn.Close();
            };
            try
            {
                string queryString = "SELECT * FROM WHEEL INNER JOIN USERS ON WHEEL.ID_USER=USERS.USER_ID WHERE WHEEL.ID_REC=" + REC_ID + " AND WHEEL.ID_OPER= " + id_oper;

                OracleCommand command = new OracleCommand(queryString, conn);
                conn.Open();
                OracleDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                      Errormes.Text = "Колесо № " + TextBox1.Text + " - " + TextBox4.Text + " уже обработано: Станок " + reader["ID_STANKA"] +" , "+reader["FIO"] + " , "+reader["REC_DATE"] + " , Смена " + reader["SMENA"];
                    }
                }
                else Response.Redirect("proverka_dannyh.aspx?ID_wheel=" + TextBox4.Text.ToString() + "&year_wheel=" + TextBox1.Text.ToString() + "&ID_melt=" + TextBox3.Text.ToString() + "&year_melt=" + TextBox2.Text.ToString() + "&recID=" + Label9.Text.ToString() + "&userID=" + userID + "&checkin=" + checkin + "&kalibrovka=0");

            }
            catch
            {

                Errormes.Text = "ERROR";

                conn.Close();
            };
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("authorization.aspx");
    }
}
