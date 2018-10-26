using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

// not needed anymore

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCurrentMonth.Text = DateTime.Today.ToString("MMMM");

        System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);

        //if (Session["Username"] != null)
        //{


            //try
            //{

            //    sc.Open();
            //    System.Data.SqlClient.SqlCommand findType = new System.Data.SqlClient.SqlCommand();
            //    findType.Connection = sc;
            //    // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            //    findType.CommandText = "select [UserType] from [dbo].[User] where Username = @Username AND UserType = @UserType";

            //    findType.Parameters.AddWithValue("@Username", Session["Username"]);
            //    findType.Parameters.AddWithValue("@UserType", "Staff");


            //    SqlDataReader reader = findType.ExecuteReader(); // create a reader


            //    if (reader.HasRows) // if the username is an Admin, Create User button appears
            //    {
            //        while (reader.Read())
            //        {
            //            btnUser.Visible = true;
            //        }
            //    }
            //    sc.Close();
            //}
            //catch
            //{
            //    sc.Close();
            //    Response.Redirect("Error.aspx", false);
            //}
        //}

    }

    protected void btnUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewUser.aspx", false);
    }
}