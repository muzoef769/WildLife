using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class Animal : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    
    int animalID;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Animals pageAnimal = new Animals(txtSpecies.Text, txtScientificName.Text, txtName.Text, txtType.Text, DateTime.Today, "Muzo");
        sc.Open();
        String aID = Request.QueryString["field1"];
        //SqlCommand animal_Id = new SqlCommand("SELECT AnimalID from Animal", sc);
        //int selectPerson = Convert.ToInt32(animal_Id.ExecuteScalar());
        
        string myQuery = "SELECT [Species], [ScientificName], [AnimalName], [AnimalType] FROM [WildlifeCenter].[dbo].[Animal] WHERE [AnimalID] = @AnimalID";
        SqlCommand myCommand = new SqlCommand(myQuery, sc);
        myCommand.Parameters.AddWithValue("@AnimalID", aID);
        try
        {

            SqlDataReader myReader = myCommand.ExecuteReader();
            while (myReader.Read())
            {
                //animalID = int.Parse(myReader["AnimalID"].ToString());
                animalID = Convert.ToInt32(aID);
                txtSpecies.Text = myReader.GetString(0);
                txtScientificName.Text = myReader.GetString(1);
                txtName.Text = myReader.GetString(2);
                txtType.Text = myReader.GetString(3);
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("Error.aspx", false);
            throw ex;
        }

        finally
        {
            sc.Close();
        }




    }



    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    sc.Open();
    //    string myQuery = "SELECT [CommonName], [ScientificName], [Name], [Type] FROM [WildlifeCenter].[dbo].[Animal] WHERE Name = @Name";
    //    SqlCommand myCommand = new SqlCommand(myQuery, sc);
    //    //myCommand.Parameters.AddWithValue("@Name", DropDownList1.SelectedItem.Text);
    //    try
    //    {

    //        SqlDataReader myReader = myCommand.ExecuteReader();
    //        while (myReader.Read())
    //        {

    //            txtSpecies.Text = myReader.GetString(0);
    //            txtScientificName.Text = myReader.GetString(1);
    //            txtName.Text = myReader.GetString(2);
    //            txtType.Text = myReader.GetString(3);
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        throw ex;
    //    }

    //    finally
    //    {
    //        sc.Close();
    //    }
    //}

    protected void btnEdit_Click(object sender, EventArgs e)
    {

        txtName.ReadOnly = false;
        txtSpecies.ReadOnly = false;
        txtScientificName.ReadOnly = false;
        // txtAge.ReadOnly = false;
        txtType.Visible = false;
        ddlType.Visible = true;
        btnUpdate.Visible = true;
        btnDelete.Visible = true;

        if (txtType.Text == "Bird")
        {
            ddlType.SelectedIndex = 0;
        }
        if (txtType.Text == "Mammal")
        {
            ddlType.SelectedIndex = 1;
        }
        if (txtType.Text == "Reptile")
        {
            ddlType.SelectedIndex = 2;
        }



    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        

        string myQuery = "UPDATE [WildlifeCenter].[dbo].[Animal] SET [Species] = @Species,[ScientificName] = @ScientificName, [AnimalName] = @Name, [AnimalType] = @Type WHERE AnimalID = @AnimalID";



        try
        {
            sc.Open();

            SqlCommand myCommand = new SqlCommand(myQuery, sc);
            myCommand.Parameters.AddWithValue("@AnimalID", animalID);
            myCommand.Parameters.AddWithValue("@Species", txtSpecies.Text);
            myCommand.Parameters.AddWithValue("@ScientificName", txtScientificName.Text);
            myCommand.Parameters.AddWithValue("@Name", txtName.Text);
            myCommand.Parameters.AddWithValue("@Type", ddlType.SelectedValue);
            myCommand.ExecuteNonQuery();
        }
        catch (Exception E)
        {
            txtName.Text = E.ToString();
        }
        finally
        {
            sc.Close();
        }


    }
}





