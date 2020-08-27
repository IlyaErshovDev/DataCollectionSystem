using System;
using System.Configuration;
using System.Collections.Generic;
using Oracle.ManagedDataAccess.Client;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class authorization : System.Web.UI.Page
{

    string userID = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Button1_Click(object sender, EventArgs e)
    {

        string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (OracleConnection conn = new OracleConnection(ConnectionString))
        {
            conn.Open();
            try
            {
                using (OracleCommand command = conn.CreateCommand())
                {
                    command.CommandText = "Select * From Users WHERE LOGIN=" + TextBox1.Text + " AND PASSWORD=" + TextBox2.Text;
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows && reader.Read())
                        {
                            userID = reader["User_ID"].ToString();
                            Response.Redirect("/vvod1.aspx?userID=" + userID);
                        }
                        else
                        {
                            erormess.Text = "Неверный логин или пароль";
                            erormess.Visible = true;
                        }

                    }
                }
            }
            catch(Exception ex)
            {
                erormess.Text = "ERROR " + ex.Message;
                erormess.Visible = true;
            };
            conn.Close();
        }
    }
}