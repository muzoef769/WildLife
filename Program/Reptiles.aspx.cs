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

public partial class Reptiles : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void AnimalInfo_Click(object sender, EventArgs e)
    {
        String strGetUser = "Select Status, AnimalType, AnimalName, Species, ScientificName from [dbo].[Animal] where AnimalID = @AnimalID";
        string tempStatus;
        string tempType;
        // CHECK FOR EXISTING USERNAMES IN USER RECORD
        using (SqlCommand getAnimal = new SqlCommand(strGetUser, sc))
        {
            sc.Open();

            string btn = ((ImageButton)sender).ID;
            string btnID = btn.ToString();
            Int32 id = Convert.ToInt32(btnID.Substring(3));

            txtRepName.Text = id.ToString();
            
            getAnimal.Parameters.AddWithValue("@AnimalID", id);
            SqlDataReader reader = getAnimal.ExecuteReader();

            // if the username exists, process will stop
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    tempStatus = reader["Status"].ToString();
                    if (tempStatus == "1")
                    {
                        txtRepStatus.Text = "Active";
                    }
                    else
                    {
                        txtRepStatus.Text = "Deactive";
                    }
                    txtRepType.Text = reader.GetString(1);
                  
                    txtRepName.Text = reader.GetString(2);
                    txtRepSpecies.Text = reader.GetString(3);
                    txtRepSciName.Text = reader.GetString(4);
                    
                    


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
           txtRepName.Text,
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




























}