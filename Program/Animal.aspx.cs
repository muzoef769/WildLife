





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

    public static Int32 id;

    protected void Page_Load(object sender, EventArgs e)
    {
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
        //            txtName.Text = myReader.GetString(2);
        //            txtType.Text = myReader.GetString(3);

        //        }
        //}
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

        //protected void btnEdit_Click(object sender, EventArgs e)
        //{

        //    txtName.ReadOnly = false;
        //    txtSpecies.ReadOnly = false;
        //    txtScientificName.ReadOnly = false;
        //    txtAge.ReadOnly = false;
        //    txtType.Visible = false;
        //    ddlType.Visible = true;
        //    btnUpdate.Visible = true;


        //    if (txtType.Text == "Bird")
        //    {
        //        ddlType.SelectedIndex = 0;
        //    }
        //    if (txtType.Text == "Mammal")
        //    {
        //        ddlType.SelectedIndex = 1;
        //    }
        //    if (txtType.Text == "Reptile")
        //    {
        //        ddlType.SelectedIndex = 2;
        //    }



        //}

        //protected void btnUpdate_Click(object sender, EventArgs e)
        //{



        //    string myQuery = "UPDATE [WildlifeCenter].[dbo].[Animal] SET [Species] = @Species,[ScientificName] = @ScientificName, [AnimalName] = @Name, [AnimalType] = @Type, [Status] = @Status WHERE AnimalID = @AnimalID";



        //    try
        //    {
        //        sc.Open();

        //        SqlCommand myCommand = new SqlCommand(myQuery, sc);
        //        myCommand.Parameters.AddWithValue("@AnimalID", animalID);
        //        myCommand.Parameters.AddWithValue("@Species", txtSpecies.Text);
        //        myCommand.Parameters.AddWithValue("@ScientificName", txtScientificName.Text);
        //        myCommand.Parameters.AddWithValue("@Name", txtName.Text);
        //        myCommand.Parameters.AddWithValue("@Type", ddlType.SelectedValue);
        //        myCommand.Parameters.AddWithValue("@Status", DropDownList1.SelectedValue);
        //        myCommand.ExecuteNonQuery();
        //    }
        //    catch (Exception E)
        //    {
        //        txtName.Text = E.ToString();
        //    }
        //    finally
        //    {
        //        sc.Close();
        //    }


        //}

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

        GridView1.DataBind();




    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        //string AnimalProgram = "SELECT Animal.AnimalName, SUM(NewProgram.TotalKids) AS TotalKids, SUM(NewProgram.TotalAdults) AS TotalAdults, SUM(NewProgram.TotalPeople) AS TotalPeople, COUNT(NewProgram.ProgramID) AS 'Total Programs' " +
        //    "FROM AssignAnimal INNER JOIN  NewProgram ON AssignAnimal.NewProgramID = NewProgram.NewProgramID INNER JOIN  Animal ON AssignAnimal.AnimalID = Animal.AnimalID INNER JOIN  Program ON NewProgram.ProgramID = Program.ProgramID WHERE AssignAnimal.AnimalID = @AnimalID GROUP BY Animal.AnimalName";





        id = Convert.ToInt32(GridView1.SelectedValue.ToString());




        //SqlCommand cmd = sc.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = AnimalProgram;
        //cmd.Parameters.AddWithValue("@AnimalID", id);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //da.Fill(dt);
        //GridView2.DataSource = dt;
        //GridView2.DataBind();

        string programInfo = "SELECT Animal.AnimalName, Program.ProgramName, Program.ProgramType, format(Program.ProgramCost,'C','en-us') as [Cost], Convert(CHAR(10),[NewProgram].[DateCompleted],101) as [Date] FROM Animal INNER JOIN AssignAnimal ON Animal.AnimalID = AssignAnimal.AnimalID INNER JOIN NewProgram ON AssignAnimal.NewProgramID = NewProgram.NewProgramID INNER JOIN Program ON NewProgram.ProgramID = Program.ProgramID WHERE AssignAnimal.AnimalID = @AnimalID";



        SqlCommand cmd2 = sc.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = programInfo;
        cmd2.Parameters.AddWithValue("@AnimalID", id);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        GridView3.DataSource = dt2;
        GridView3.DataBind();



        //GridView2.Visible = true;
        GridView3.Visible = true;








    }

   
}





