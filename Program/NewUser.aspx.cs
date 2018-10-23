using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lblStatus.Text = null;


        }

    }



    protected void btnCreate_Click(object sender, EventArgs e)
    {


        Page.Validate();
        if (Page.IsValid)
        {
            // COMMIT VALUES
            try
            {
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                sc.ConnectionString = @"Server=LOCALHOST;Database=PBKDF2;Trusted_Connection=Yes;"; // connect to PBKDF2 database
                lblStatus.Text = "Database Connection Successful";
                ViewState["password"] = txtConfirmPw.Value;

                sc.Open();

                System.Data.SqlClient.SqlCommand createUser = new System.Data.SqlClient.SqlCommand();
                createUser.Connection = sc;
                // INSERT USER RECORD

                createUser.CommandText = "insert into[dbo].[Person] values(@FName, @LName, @Username)";
                createUser.Parameters.Add(new SqlParameter("@FName", txtFirstName.Text));
                createUser.Parameters.Add(new SqlParameter("@LName", txtLastName.Text));
                createUser.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
                createUser.ExecuteNonQuery();

                System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                setPass.Connection = sc;

                // INSERT PASSWORD RECORD AND CONNECT TO USER
                setPass.CommandText = "insert into[dbo].[Pass] values((select max(userid) from person), @Username, @Password)";
                setPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
                setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(ViewState["password"].ToString()))); // hash entered password
                setPass.ExecuteNonQuery();

                sc.Close();

                lblStatus.Text = "User Created!";

                // Modal popup when submitted
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$(function() { $('#newModal').modal('show'); });</script>", false);

                // Clear Fields
                txtUsername.Text = null;
                txtFirstName.Text = null;
                txtLastName.Text = null;

            }
            catch
            {
                lblStatus.Text = "Database Error - User not created.";
            }
        }
    }
}