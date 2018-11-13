﻿using System;
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
    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        //lblCurrentMonth.Text = DateTime.Today.ToString("MM/dd/yyyy");

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



    protected void btnAddModal_Click(object sender, EventArgs e)
    {


        Animals newAnimal = new Animals(
           "GG",
           "JackRicci",
           txtAddName.Text,
           ddlAddType.SelectedValue.ToString(),
          ddlAddStatus.SelectedValue,
           DateTime.Today,
           "Staff"



           );


        string creatAnimal = "Insert into [dbo].[Animal] values (@Species, @ScientificName, @AnimalName, @AnimalType, @Status, @LastUpdated, @LastUpdatedBy)";
        SqlCommand addAnimal = new SqlCommand(creatAnimal, sc);
        sc.Open();
        addAnimal.Parameters.AddWithValue("@Species", newAnimal.getSpecies());
        addAnimal.Parameters.AddWithValue("@ScientificName", newAnimal.getScientificName());
        addAnimal.Parameters.AddWithValue("@AnimalName", newAnimal.getAnimalName());
        addAnimal.Parameters.AddWithValue("@AnimalType", newAnimal.getAnimalType());
        addAnimal.Parameters.AddWithValue("@Status", newAnimal.getStatus());
        addAnimal.Parameters.AddWithValue("@LastUpdated", newAnimal.getLastUpdated());
        addAnimal.Parameters.AddWithValue("@LastUpdatedBy", newAnimal.getLastUpdatedBy());
        addAnimal.ExecuteNonQuery();

        txtAddName.Text = " ";


    }
    
    protected void btnStatusUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            foreach (GridViewRow row in statusGridView.Rows)
            {
                CheckBox chkStatus = (row.Cells[4].FindControl("chkStatus") as CheckBox);
                int userIDNo = Convert.ToInt32(row.Cells[0].Text);
                if (chkStatus.Checked)
                {
                    updateRow(userIDNo, "Approved");
                }
                else
                {
                    updateRow(userIDNo, "Not Approved");
                }
            }
        }
        catch(Exception E)
        {

        }
    }

    protected void updateRow(int userIDNo, string MarkStatus)
    {
        sc.Close();
        string updateStatus = "UPDATE [dbo].[User] SET UserStatus = '" + MarkStatus + "'WHERE userID =" + userIDNo;
        sc.Open();
        SqlCommand statusUpdate = new SqlCommand(updateStatus, sc);
        statusUpdate.ExecuteNonQuery();
        statusGridView.DataBind();

    }

















}