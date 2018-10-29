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

public partial class Birds : System.Web.UI.Page
{

    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void AnimalInfo_Click(object sender, EventArgs e)
    {
        String strGetAnimal = "Select Status, AnimalType, AnimalName, Species, ScientificName from [dbo].[Animal] where AnimalID = @AnimalID";
        Boolean tempStatus;
        // CHECK FOR EXISTING USERNAMES IN USER RECORD
        using (SqlCommand getAnimal = new SqlCommand(strGetAnimal, sc))
        {
            sc.Open();

            string btn = ((ImageButton)sender).ID;
            string btnID = btn.ToString();
            Int32 id = Convert.ToInt32(btnID.Substring(3));

            txtBirdName.Text = id.ToString();

            getAnimal.Parameters.AddWithValue("@AnimalID", id);
            SqlDataReader reader = getAnimal.ExecuteReader();

            // if the username exists, process will stop
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    tempStatus = Convert.ToBoolean(reader["Status"]);
                    if (tempStatus == true)
                    {
                        txtBirdStatus.Text = "Active";
                    }
                    else
                    {
                        txtBirdStatus.Text = "Deactive";
                    }
                    txtBirdType.Text = reader.GetString(1);

                    txtBirdName.Text = reader.GetString(2);
                    txtBirdSpecies.Text = reader.GetString(3);
                    txtBirdSciName.Text = reader.GetString(4);
                    //Animal currentAnimal = new Animal(id, reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetString(1));

                }

            }
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$(function() { $('#myModal').modal('show'); });</script>", false);

            sc.Close();

        }
    }

    protected void btnAddModal_Click(object sender, EventArgs e)
    {


        Animals newAnimal = new Animals(
           txtSpecies.Text,
           txtScientificName.Text,
           txtBirdName.Text,
           ddlType.SelectedValue.ToString(),
          Convert.ToChar(DropDownList1.SelectedValue),
           DateTime.Today,
           "Staff"



           );


        string createAnimal = "Insert into [dbo].[Animal] values (@Species, @ScientificName, @AnimalName, @AnimalType, @Status, @LastUpdated, @LastUpdatedBy)";
        SqlCommand addAnimal = new SqlCommand(createAnimal, sc);
        sc.Open();
        addAnimal.Parameters.AddWithValue("@Species", newAnimal.getSpecies());
        addAnimal.Parameters.AddWithValue("@ScientificName", newAnimal.getScientificName());
        addAnimal.Parameters.AddWithValue("@AnimalName", newAnimal.getAnimalName());
        addAnimal.Parameters.AddWithValue("@AnimalType", newAnimal.getAnimalType());
        addAnimal.Parameters.AddWithValue("@Status", DropDownList1.SelectedValue);
        addAnimal.Parameters.AddWithValue("@LastUpdated", DateTime.Today);
        addAnimal.Parameters.AddWithValue("@LastUpdatedBy", "Staff");
        addAnimal.ExecuteNonQuery();






    }

    //protected void btnEdit_Click(object sender, EventArgs e)
    //{
    //    //Animals pageAnimal = new Animals(txtSpecies.Text, txtScientificName.Text, txtName.Text, txtType.Text, DateTime.Today, "Muzo");
    //    sc.Open();
    //    String aID = Request.QueryString["field1"];
    //    //SqlCommand animal_Id = new SqlCommand("SELECT AnimalID from Animal", sc);
    //    //int selectPerson = Convert.ToInt32(animal_Id.ExecuteScalar());

    //    string myQuery = "SELECT [Species], [ScientificName], [AnimalName], [AnimalType] FROM [WildlifeCenter].[dbo].[Animal] WHERE [AnimalID] = @AnimalID";
    //    SqlCommand myCommand = new SqlCommand(myQuery, sc);
    //    myCommand.Parameters.AddWithValue("@AnimalID", aID);
    //    try
    //    {

    //        SqlDataReader myReader = myCommand.ExecuteReader();
    //        while (myReader.Read())
    //        {
    //            //animalID = int.Parse(myReader["AnimalID"].ToString());
    //            animalID = Convert.ToInt32(aID);
    //            txtSpecies.Text = myReader.GetString(0);
    //            txtScientificName.Text = myReader.GetString(1);
    //            EditName.Text = myReader.GetString(2);
    //            txtType.Text = myReader.GetString(3);

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Redirect("Error.aspx", true);
    //        throw ex;
    //    }

    //    finally
    //    {
    //        sc.Close();
    //    }

    //}







}