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
    public static int programID;

    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void DrpOrganizationList_IndexChanged(object sender, EventArgs e)
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

    protected void BtnAddOrg_Click(object sender, EventArgs e)
    {

        Server.Transfer("AddOrganization.aspx", true);
    }

    protected void DrpContact_SelectedIndexChanged(object sender, EventArgs e)
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

    protected void DrpProgramList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string value = drpProgramList.SelectedValue;
        if (value == "19" || value == "20" || value == "21" || value == "22" || value == "23" || value == "24" || value == "25" || value == "26" || value == "27" || value == "28")
        {

            drpLocationTypeList.Enabled = false;
            drpLocationTypeList.Items.Add(("Online"));
            drpLocationTypeList.SelectedValue = "Online";
            txtMileage.Visible = false;
        }
        else
        {
            drpLocationTypeList.Enabled = true;
            drpLocationTypeList.Items.Remove(drpLocationTypeList.Items.FindByValue("Online"));
            drpLocationTypeList.SelectedIndex = 0;
            txtMileage.Visible = true;
        }


        if (value == "1" || value == "2" || value == "3" || value == "4" || value == "5" || value == "6" || value == "7" || value == "8" || value == "9" || value == "10" || value == "11" || value == "12" || value == "13" || value == "14" || value == "15" || value == "16" || value == "17" || value == "18")
        {

            drpLocationTypeList.Items.Remove(drpLocationTypeList.Items.FindByValue("Online"));
        }
        else
        {
            drpLocationTypeList.Items.Add(("Online"));
            txtMileage.Visible = false;
        }
    }

    protected void BtnAllBirds_Click(object sender, EventArgs e)
    {
        if (btnAllBirds.Text == "Select All")
        {
            foreach (ListItem bird in CheckBoxList2.Items)
            {
                bird.Selected = true;
            }
            btnAllBirds.Text = "Deselect All";

        }
        else
        {
            foreach (ListItem bird in CheckBoxList2.Items)
            {
                bird.Selected = false;
            }
            btnAllBirds.Text = "Select All";
        }
    }

    protected void BtnAllReptiles_Click(object sender, EventArgs e)
    {
        if (btnAllReptiles.Text == "Select All")
        {
            foreach (ListItem reptile in CheckBoxList3.Items)
            {
                reptile.Selected = true;
            }
            btnAllReptiles.Text = "Deselect All";

        }
        else
        {
            foreach (ListItem reptile in CheckBoxList3.Items)
            {
                reptile.Selected = false;
            }
            btnAllReptiles.Text = "Select All";
        }
    }

    protected void BtnAllMammals_Click(object sender, EventArgs e)
    {
        if (btnAllMammals.Text == "Select All")
        {
            foreach (ListItem mammal in CheckBoxList4.Items)
            {
                mammal.Selected = true;
            }
            btnAllMammals.Text = "Deselect All";

        }
        else
        {
            foreach (ListItem mammal in CheckBoxList4.Items)
            {
                mammal.Selected = false;
            }
            btnAllMammals.Text = "Select All";
        }
    }

    protected void SubmitProgram(object sender, EventArgs e)
    {

        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            connection.Open();
            for (int j = 0; j < NewProgram.programList.Count; j++)
            {
                string insertIntoNewProgram = "INSERT INTO NewProgram([TotalKids], [TotalAdults]," +
               "[TotalPeople], [AgeLevel], [TotalMileage], [NewProgramStatus], [TimeSlot]," +
               "[DateCompleted], [LocationType], [MiscNotes], [ProgramID], [AddressID],[LastUpdated], [LastUpdatedBy]) VALUES (" +
               "@kid, @adult, @totalPeople, @age, @mileage, @status, @time, @complete," +
               "@location, @miscNotes, @programid, @addressid, @LU, @LUB)";
                
                using (SqlCommand command = new SqlCommand(insertIntoNewProgram, connection))
                {
                    command.Parameters.AddWithValue("@kid", NewProgram.programList[j].getNumKids());
                    command.Parameters.AddWithValue("@adult", NewProgram.programList[j].getNumAdults());
                    command.Parameters.AddWithValue("@totalpeople", NewProgram.programList[j].getTotalPeople());
                    command.Parameters.AddWithValue("@age", NewProgram.programList[j].getAgeLevel());
                    command.Parameters.AddWithValue("@mileage", NewProgram.programList[j].getTotalMileage());
                    command.Parameters.AddWithValue("@status", NewProgram.programList[j].getProgramStatus());
                    command.Parameters.AddWithValue("@time", NewProgram.programList[j].getTimeSlot());
                    command.Parameters.AddWithValue("@complete", NewProgram.programList[j].getDateCompleted());
                    command.Parameters.AddWithValue("@location", NewProgram.programList[j].getLocationType());
                    command.Parameters.AddWithValue("@miscNotes", NewProgram.programList[j].getMiscNotes());
                    command.Parameters.AddWithValue("@programid", NewProgram.programList[j].getProgramID());
                    command.Parameters.AddWithValue("@addressid", NewProgram.programList[j].getAddressID());
                    command.Parameters.AddWithValue("@LU", NewProgram.programList[j].getLastUpdated());
                    command.Parameters.AddWithValue("@LUB", NewProgram.programList[j].getLastUpdatedBy());

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
            connection.Close();
        }
        NewProgram.programList.Clear();
    }

    protected void BtnAddProgram_Click(object sender, EventArgs e)
    {
        programID = Convert.ToInt32(drpOrganizationList.SelectedValue); /*Grab ProgramID*/

        if (txtMileage.Visible)
        {
            NewProgram newProgram = new NewProgram(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
                /* people*/ 50, drpAgeLevel.SelectedValue, /*mileage*/ Int32.Parse(txtMileage.Text), "Completed",
                /*time*/DateTime.Now, Convert.ToDateTime(datepicker.Value), drpLocationTypeList.SelectedValue,
                txtMiscNotes.Value, programID, /*addressID*/10, DateTime.Now, "Raina");
            NewProgram.programList.Add(newProgram);
        }
        else
        {
            NewProgram newProgram = new NewProgram(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
                /* people*/ 50, drpAgeLevel.SelectedValue, /*mileage*/ 0, "Completed",
                /*time*/DateTime.Now, Convert.ToDateTime(datepicker.Value), drpLocationTypeList.SelectedValue,
                txtMiscNotes.Value, programID, /*addressID*/10, DateTime.Now, "Raina");
            NewProgram.programList.Add(newProgram);
        }

        double totalCost;
        NewProgram.btnCount += 1;
        drpAgeLevel.SelectedValue = null;
        txtAdults.Text = null;
        txtKids.Text = null;
        txtMiscNotes.InnerText = null;
        drpLocationTypeList.SelectedValue = null;
        drpProgramList.SelectedValue = null;
        NewProgram.baseCost = 250 + (160 * (NewProgram.programList.Count - 1));

        //Assigning to textboxes for testing
        //totalCost = NewProgram.baseCost + (Convert.ToDouble(txtMileage.Text) * .57);
        txtProgramCost.Text = NewProgram.baseCost.ToString();
        txtMileage.Text = NewProgram.programList.Count.ToString();
        //txtTotalCost.Text = totalCost.ToString();()
    }
}