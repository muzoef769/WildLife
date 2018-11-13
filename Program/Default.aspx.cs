using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Web.SessionState;

public partial class Default : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection myConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    // SqlConnection myConnection = new SqlConnection("server=localhost;database=WildlifeCenter;Trusted_Connection=True");
    //NEED TO EDIT THIS CODE WHEN ON AWS
    public String userType;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
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
        //try
        //{
        //    //connect to database to retrieve stored password string

        //    myConnection.Open();
        //    System.Data.SqlClient.SqlCommand getUserType = new System.Data.SqlClient.SqlCommand();
        //    getUserType.Connection = myConnection;

        //    getUserType.CommandText = "SELECT UserType from [dbo].[User] where Username = @Username";
        //    getUserType.Parameters.AddWithValue("@Username", txtUsername.Text);
        //    SqlDataReader typeReader = getUserType.ExecuteReader();
        //    //userType = Convert.ToString(getUserType.ExecuteScalar());

        //    while (typeReader.Read())
        //    {
        //        Session["UserType"] = typeReader["UserType"].ToString();
        //    }
        //}
        //catch (Exception E)
        //{

        //}
        //finally
        //{
        //    myConnection.Close();
        //}

        //try
        //{
        SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);

        sc.Open();
        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
        findPass.Connection = sc;
        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
        findPass.CommandText = "select PasswordHash from [dbo].[Password] where Username = @Username";
        findPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));

        SqlDataReader reader = findPass.ExecuteReader(); // create a reader

        System.Data.SqlClient.SqlCommand getUserType = new System.Data.SqlClient.SqlCommand();
        getUserType.Connection = sc;

        //getUserType.CommandText = "SELECT UserType from [dbo].[User] where Username = @Username";
        //getUserType.Parameters.AddWithValue("@Username", txtUsername.Text);

        //Session["UserType"] = getUserType.ExecuteScalar().ToString();
        //SqlDataReader typeReader = getUserType.ExecuteReader();
        //userType = Convert.ToString(getUserType.ExecuteScalar());

        //while (typeReader.Read())
        //{
        //    Session["UserType"] = typeReader["UserType"].ToString();
        //}

        //if ((string)Session["UserType"] == "Volunteer")
        //{
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
                    Session["UserFullName"] = findFullName(txtUsername.Text);

                }
                else
                {
                    lblStatus.ForeColor = Color.White;
                    lblStatus.Text = "Password is wrong.";
                    lblStatus.Visible = true;
                }
            }

        }
        reader.Close();
        getUserType.Connection = sc;

        getUserType.CommandText = "SELECT UserType from [dbo].[User] where Username = @Username and UserType = @UserType";
        getUserType.Parameters.AddWithValue("@Username", txtUsername.Text);
        getUserType.Parameters.AddWithValue("UserType", "Volunteer");

        SqlDataReader typeReader = getUserType.ExecuteReader();

        if (typeReader.HasRows)
        {
            while (typeReader.Read())
            {
                Response.Redirect("VolunteerHome.aspx", false);
            }

        }
        else
        {
            Response.Redirect("Home.aspx", false);
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

        //Validate Form is completely filled out before entering into DB

        //if ((string.IsNullOrEmpty(txtFirstName.Text)) || (string.IsNullOrEmpty(txtLastName.Text) || (string.IsNullOrEmpty(txtNewUsername.Text))))
        //{

        //}


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
            myCommand.Parameters.AddWithValue("@lastUpdatedBy", "");

            myCommand.ExecuteNonQuery();


        }
        catch (Exception E)
        {

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
                "PBKDF2");

            String myQuery3 = "INSERT INTO [WildlifeCenter].[dbo].[Password] (UserId, Username, PasswordHash) VALUES ((SELECT MAX([UserID]) FROM [WildlifeCenter].[dbo].[User]), @Username, @PasswordHash)";

            myConnection.Open();

            SqlCommand myCommand3 = new SqlCommand(myQuery3, myConnection);
            //myCommand3.Parameters.AddWithValue("@UserID", newPassword.getUserID());
            myCommand3.Parameters.AddWithValue("@Username", newPassword.getUserName());
            myCommand3.Parameters.AddWithValue("@PasswordHash", PasswordHash.HashPassword(txtNewPassword.Value));


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

    protected string findFullName(string username)
    {
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            string query = "SELECT FirstName + ' ' + LastName as FullName FROM dbo.[User] where Username = '" + username + "'";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                connection.Open();
                string fullName = Convert.ToString(command.ExecuteScalar());
                return fullName;
                
            }
        }
    }
      

}