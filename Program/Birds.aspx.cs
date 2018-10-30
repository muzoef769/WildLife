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
                        ddlEditStatus.SelectedIndex = 0;
                    }
                    else
                    {
                        txtStatus.Text = "Deactive";
                        ddlEditStatus.SelectedIndex = 1;
                    }
                    txtType.Text = reader.GetString(1);

                    txtName.Text = reader.GetString(2);
                    txtSpecies.Text = reader.GetString(3);
                    txtSciName.Text = reader.GetString(4);
                    //Animal currentAnimal = new Animal(id, reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetString(1));

                    txtEditName.Text = txtName.Text;
                    txtEditSciName.Text = txtSciName.Text;
                    txtEditSpecies.Text = txtSpecies.Text;
                    ddlEditType.SelectedValue = txtType.Text;



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

    


    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        

        string myQuery = "UPDATE [WildlifeCenter].[dbo].[Animal] SET [Species] = @Species,[ScientificName] = @ScientificName, [AnimalName] = @AnimalName, [AnimalType] = @AnimalType, [Status] = @Status WHERE AnimalID = @AnimalID";



        try
        {
            sc.Open();

            SqlCommand myCommand = new SqlCommand(myQuery, sc);
            myCommand.Parameters.AddWithValue("@AnimalID", ID);
            myCommand.Parameters.AddWithValue("@Species", txtEditSpecies.Text);
            myCommand.Parameters.AddWithValue("@ScientificName", txtEditSciName.Text);
            myCommand.Parameters.AddWithValue("@AnimalName", txtEditName.Text);
            myCommand.Parameters.AddWithValue("@AnimalType", ddlEditType.SelectedValue);
            myCommand.Parameters.AddWithValue("@Status", ddlEditStatus.SelectedValue);
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







