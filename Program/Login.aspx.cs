﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            lblStatus.Text = "";
            lblStatus.Visible = false;
            btnLogin.Enabled = true;
            txtUsername.Enabled = true;
            txtPassword.Enabled = true;
        }


    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // connect to database to retrieve stored password string
        try
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);


            lblStatus.Text = "Database Connection Successful";

            sc.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select PasswordHash from Pass where Username = @Username";
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
                        lblStatus.Text = "Success!";
                        lblStatus.Visible = true;
                        btnLogin.Enabled = false;
                        txtUsername.Text = null;
                        txtUsername.Enabled = false;
                        txtPassword.Enabled = false;
                        Response.Redirect("Home.aspx", false);
                    }
                    else
                    {
                        lblStatus.Text = "Password is wrong.";
                        lblStatus.Visible = true;
                    }
                }
            }
            // if the username doesn't exist, it will show failure
            else
            {
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
}