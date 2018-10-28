using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    SqlConnection myConnection = new SqlConnection("server=localhost;database=WildlifeCenter;Trusted_Connection=True");
    //NEED TO EDIT THIS CODE WHEN ON AWS

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lblStatus.ForeColor = Color.Transparent;
            lblStatus.Visible = false;
            btnLogin.Enabled = true;
            txtUsername.Enabled = true;
            txtPassword.Enabled = true;
        }


    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //connect to database to retrieve stored password string
        try
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);


            //lblStatus.Text = "Database Connection Successful";

            sc.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select PasswordHash from [dbo].[Password] where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));

            SqlDataReader reader = findPass.ExecuteReader(); // create a reader

            if (reader.HasRows) // if the username exists, it will continue
            {
                while (reader.Read()) // this will read the single record that matches the entered username
                {
                    string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

                    if (PasswordHash.ValidatePassword(txtPassword.Text, storedHash)) // if the entered password matches what is stored, it will show success
                    {
                        // Clear Fields
                        lblStatus.ForeColor = Color.White;
                        lblStatus.Text = "Success!";
                        lblStatus.Visible = true;
                        btnLogin.Enabled = false;

                        txtUsername.Enabled = false;
                        txtPassword.Enabled = false;
                        Session["Username"] = txtUsername.Text;

                        Response.Redirect("Home.aspx", false);

                    }
                    else
                    {
                        lblStatus.ForeColor = Color.White;
                        lblStatus.Text = "Password is wrong.";
                        lblStatus.Visible = true;
                    }
                }
            }
            // if the username doesn't exist, it will show failure
            else
            {
                lblStatus.ForeColor = Color.White;
                lblStatus.Text = "Username does not exist.";
                lblStatus.Visible = true;
            }

            sc.Close();
        }
        catch
        {
            lblStatus.Text = "Database Error.";
            lblStatus.Visible = true;

        }
    }

    protected void lnkCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("createUser.aspx", false);
    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        if (lblStatus.Equals("Username does not exist."))
        {
            txtUsername.Text = null;
            txtPassword.Text = null;
        }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        User newUser = new User(
           txtNewUsername.Text,
           txtFirstName.Text,
            txtLastName.Text,
            rdoPosition.SelectedValue,
            DateTime.Now,
            txtNewUsername.Text
            );
        String myQuery = "INSERT INTO [WildlifeCenter].[dbo].[User] (FirstName, LastName, Username, UserType, LastUpdated, LastUpdatedBy) VALUES (@firstName, @lastName, @userName, @userType, @lastUpdated, @lastUpdatedBy)";
       
        try
        {
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand(myQuery, myConnection);
            myCommand.Parameters.AddWithValue("@userName", newUser.getUserName());
            myCommand.Parameters.AddWithValue("@firstName", newUser.getFirstName());
            myCommand.Parameters.AddWithValue("@lastName", newUser.getLastName());
            myCommand.Parameters.AddWithValue("@userType", newUser.getUserType());
            myCommand.Parameters.AddWithValue("@lastUpdated", newUser.getLastUpdated());
            myCommand.Parameters.AddWithValue("@lastUpdatedBy", newUser.getLastUpdatedBy());

            myCommand.ExecuteNonQuery();


        }
        catch (Exception E)
        {
            txtNewUsername.Text = E.ToString();
        }
        finally
        {
            myConnection.Close();
        }
        try
        {
          
            //myConnection.Open();

            //String myQuery2 = "SELECT MAX([UserID]) FROM [WildlifeCenter].[dbo].[User]";
            //SqlCommand myCommand2 = new SqlCommand(myQuery2, myConnection);
            //myCommand2.ExecuteNonQuery();
            

            myConnection.Close();

            Password newPassword = new Password(
                newUser.getUserID(),
                txtNewUsername.Text,
                "PBKDF2"
                );

            String myQuery3 = "INSERT INTO [WildlifeCenter].[dbo].[Password] (UserId, Username, PasswordHash) VALUES ((SELECT MAX([UserID]) FROM [WildlifeCenter].[dbo].[User]), @Username, @PasswordHash)";

            myConnection.Open();

            SqlCommand myCommand3 = new SqlCommand(myQuery3, myConnection);
            //myCommand3.Parameters.AddWithValue("@UserID", newPassword.getUserID());
            myCommand3.Parameters.AddWithValue("@Username", newPassword.getUserName());
            myCommand3.Parameters.AddWithValue("@PasswordHash", PasswordHash.HashPassword(txtNewPassword.Text));


            myCommand3.ExecuteNonQuery();
        }
        catch (Exception E)
        {
            txtNewUsername.Text = E.ToString();
        }
        finally
        {
            myConnection.Close();
        }




    }

}