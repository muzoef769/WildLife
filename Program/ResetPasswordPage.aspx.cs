using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ResetPasswordPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword(object sender, EventArgs e)
    {
        string name = Users.USER_NAME;
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            connection.Open();
            SqlCommand getPassword = new SqlCommand("SELECT UserID FROM [dbo].[User] WHERE Username = @User1", connection);
            getPassword.Parameters.AddWithValue("@User1", name);
            int getUserID = Convert.ToInt32(getPassword.ExecuteScalar());


            string updatePassword = "UPDATE Password Set PasswordHash = @Pass WHERE UserID = @User";
            using (SqlCommand cmd2 = new SqlCommand(updatePassword, connection))
            {
                cmd2.Parameters.AddWithValue("@Pass", PasswordHash.HashPassword(txtConfirmPass.Text));
                cmd2.Parameters.AddWithValue("@User", getUserID);

                cmd2.ExecuteNonQuery();
            }
        }
        Users.USER_NAME = "";
    }
}