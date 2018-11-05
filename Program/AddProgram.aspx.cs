using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class AddProgram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static int programID;
    protected void drpOrganizationList_IndexChanged(object sender, EventArgs e)
    {
        if (drpOrganizationList.SelectedIndex > 0)
        {

            DataTable contactList = new DataTable();
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
            {
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select ContactID, CONCAT(FirstName,' ',LastName) as Name from Contact Where OrganizationID =" + drpOrganizationList.SelectedValue, connection);

                adapter.Fill(contactList);

                drpContact.DataSource = contactList;
                drpContact.DataTextField = "Name";
                drpContact.DataValueField = "ContactID";
                drpContact.DataBind();
                drpContact.Items.Insert(0, new ListItem("Contacts", String.Empty));
                drpContact.SelectedIndex = 0;


            }
        }
        else
        {
            drpContact.Items.Clear();
            drpContact.Items.Insert(0, new ListItem("Contacts", String.Empty));
            drpContact.SelectedIndex = 0;
            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtEmail.Text = null;
            txtPrimaryNumber.Text = null;
            txtSecondaryNumber.Text = null;
        }

    }

    protected void btnAddOrg_Click(object sender, EventArgs e)
    {

        Server.Transfer("AddOrganization.aspx", true);
    }


    protected void drpContact_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (drpContact.SelectedIndex > 0)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
            {

                string retrieveContact = "Select FirstName, LastName, Email, PrimaryPhoneNumber, SecondaryPhoneNumber from Contact where ContactID = @contactID";

                try
                {
                    connection.Open();
                    String getProgramID = "SELECT ProgramID FROM Program WHERE ProgramName = @ProgramName";
                    SqlCommand getIDCommand = new SqlCommand(getProgramID, connection);
                    getIDCommand.Parameters.AddWithValue("@ProgramName", drpProgramList.SelectedValue);
                    getIDCommand.ExecuteNonQuery();
                    connection.Close();

                }
                catch (Exception)
                {

                }


                using (SqlCommand command = new SqlCommand(retrieveContact, connection))
                {
                    connection.Open();

                    command.Parameters.AddWithValue("@ContactID", drpContact.SelectedValue);
                    SqlDataReader reader = command.ExecuteReader();

                    // if the username exists, process will stop
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {

                            txtFirstName.Text = reader.GetString(0);
                            txtLastName.Text = reader.GetString(1);
                            txtEmail.Text = reader.GetString(2);
                            txtPrimaryNumber.Text = reader.GetString(3);
                            txtSecondaryNumber.Text = reader.GetString(4);



                        }
                    }
                    connection.Close();
                }
            }

        }

        else
        {

            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtEmail.Text = null;
            txtPrimaryNumber.Text = null;
            txtSecondaryNumber.Text = null;

        }
    }





    protected void Submit_Click(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            programID = Convert.ToInt32(drpOrganizationList.SelectedValue);
            NewPrograms newProgram = new NewPrograms(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text), /* people*/ 50, drpAgeLevel.SelectedValue, /*mileage*/ 30, "Completed", txtMiscNotes.Value, DateTime.Now, Convert.ToDateTime(datepicker.Value), programID, DateTime.Now, "Raina");

            string insertIntoNewProgram = "INSERT INTO NewProgram([TotalKids], [TotalAdults]," +
               "[TotalPeople], [AgeLevel], [TotalMileage], [NewProgramStatus], [DateCreated]," +
               "[DateCompleted], [MiscNotes], [ProgramID], [LastUpdated], [LastUpdatedBy]) VALUES (" +
               "@kid, @adult, @totalPeople, @age, @mileage, @status, @created, @complete," +
               "@miscNotes, @programid, @LU, @LUB)";
            connection.Open();
            using (SqlCommand command = new SqlCommand(insertIntoNewProgram, connection))
            {
                command.Parameters.AddWithValue("@kid", newProgram.getNumKids());
                command.Parameters.AddWithValue("@adult", newProgram.getNumAdults());
                command.Parameters.AddWithValue("@totalpeople", newProgram.getTotalPeople());
                command.Parameters.AddWithValue("@age", newProgram.getAgeLevel());
                command.Parameters.AddWithValue("@mileage", newProgram.getTotalMileage());
                command.Parameters.AddWithValue("@status", newProgram.getProgramStatus());
                command.Parameters.AddWithValue("@created", newProgram.getDateCreated());
                command.Parameters.AddWithValue("@complete", newProgram.getDateCompleted());
                command.Parameters.AddWithValue("@miscNotes", newProgram.getMiscNotes());
                command.Parameters.AddWithValue("@programid", newProgram.getProgramID());
                command.Parameters.AddWithValue("@LU", newProgram.getLastUpdated());
                command.Parameters.AddWithValue("@LUB", newProgram.getLastUpdatedBy());

                command.ExecuteNonQuery();

            }
            int newProgramID;
            string findProgramID = "Select NewProgramID from NewProgram where NewProgramID = (Select Max(NewProgramID) from NewProgram)";
            using (SqlCommand command = new SqlCommand(findProgramID, connection))
            {



                newProgramID = Convert.ToInt32(command.ExecuteScalar());
            }
            List<int> AnimalList = new List<int>();




            for (int i = 0; i < CheckBoxList2.Items.Count; i++)
            {
                if (CheckBoxList2.Items[i].Selected)
                {
                    AnimalList.Add(Convert.ToInt32(CheckBoxList2.Items[i].Value));
                }
            }


            for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            {
                if (CheckBoxList3.Items[i].Selected)
                {
                    AnimalList.Add(Convert.ToInt32(CheckBoxList3.Items[i].Value));
                }
            }

            for (int i = 0; i < CheckBoxList4.Items.Count; i++)
            {
                if (CheckBoxList4.Items[i].Selected)
                {
                    AnimalList.Add(Convert.ToInt32(CheckBoxList4.Items[i].Value));
                }
            }






            string assignAnimals = "Insert into AssignAnimal([AnimalID], [NewProgramID], [LastUpdated], [LastUpdatedBy])VALUES (" +
               "@AnimalID, @NewProgramID, @LastUpdated, @LastUpdatedBy)";


            foreach (int animal in AnimalList)
            {





                using (SqlCommand command = new SqlCommand(assignAnimals, connection))
                {
                    command.Parameters.AddWithValue("@AnimalID", animal);
                    command.Parameters.AddWithValue("@NewProgramID", newProgramID);
                    command.Parameters.AddWithValue("@LastUpdated", DateTime.Today);
                    command.Parameters.AddWithValue("@LastUpdatedBy", "Raina"); ///Need to change this

                    command.ExecuteNonQuery();

                }
            }



            List<int> UserList = new List<int>();
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    UserList.Add(Convert.ToInt32(CheckBoxList1.Items[i].Value));
                }
            }

            string assignUser = "Insert into AssignUser([UserID], [NewProgramID], [LastUpdated], [LastUpdatedBy])VALUES (" +
               "@UserID, @NewProgramID, @LastUpdated, @LastUpdatedBy)";


            foreach (int user in UserList)
            {





                using (SqlCommand command = new SqlCommand(assignUser, connection))
                {
                    command.Parameters.AddWithValue("@UserID", user);
                    command.Parameters.AddWithValue("@NewProgramID", newProgramID);
                    command.Parameters.AddWithValue("@LastUpdated", DateTime.Today);
                    command.Parameters.AddWithValue("@LastUpdatedBy", "Raina"); ///Need to change this

                    command.ExecuteNonQuery();

                }
            }

            if (drpContact.SelectedIndex == 0)
            {

                string insertContact = "Insert into Contact([FirstName], [LastName], [Email], [PrimaryPhoneNumber],[SecondaryPhoneNumber], [OrganizationID], [LastUpdated], [LastUpdatedBy])VALUES (" +
               "@FirstName, @LastName, @Email, @Primary, @Secondary, @orgID, @LastUpdated, @LastUpdatedBy)";

                using (SqlCommand command = new SqlCommand(insertContact, connection))
                {


                    command.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    command.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);
                    command.Parameters.AddWithValue("@Primary", txtPrimaryNumber.Text);
                    command.Parameters.AddWithValue("@Secondary", txtSecondaryNumber.Text);
                    command.Parameters.AddWithValue("@orgID", drpOrganizationList.SelectedValue);
                    command.Parameters.AddWithValue("@LastUpdated", DateTime.Today);
                    command.Parameters.AddWithValue("@LastUpdatedBy", "Raina");

                    command.ExecuteNonQuery();

                }

            }


        }
    }

    protected void drpProgramList_SelectedIndexChanged(object sender, EventArgs e)
    {
        var value = drpProgramList.SelectedValue;
        if (value == "Display")
        {
            drpLocationTypeList.Text = "Onsite";
        }
    }
}