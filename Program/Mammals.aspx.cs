using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mammals : System.Web.UI.Page
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
                        txtStatus.Text = "Active";
                    }
                    else
                    {
                        txtStatus.Text = "Deactive";
                    }
                    txtType.Text = reader.GetString(1);

                    txtName.Text = reader.GetString(2);
                    txtSpecies.Text = reader.GetString(3);
                    txtSciName.Text = reader.GetString(4);


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
           txtAddSpecies.Text,
           txtAddSciName.Text,
           txtAddName.Text,
           ddlAddType.SelectedValue.ToString(),
          Convert.ToChar(ddlAddStatus.SelectedValue),
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
        addAnimal.Parameters.AddWithValue("@Status", newAnimal.getStatus());
        addAnimal.Parameters.AddWithValue("@LastUpdated", newAnimal.getLastUpdated());
        addAnimal.Parameters.AddWithValue("@LastUpdatedBy", newAnimal.getLastUpdatedBy());
        addAnimal.ExecuteNonQuery();






    }


























}