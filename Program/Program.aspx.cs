using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Program : System.Web.UI.Page
{
    public static int programID;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            DataTable programList = new DataTable();
            DataTable organzationList = new DataTable();
            //DataTable typeList = new DataTable();

            //drpProgramType.Items.Insert(0, new ListItem("Select a Program Type", "NA"));


            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT ProgramName, ProgramID FROM Program", connection);
                    //SqlDataAdapter adapter1 = new SqlDataAdapter("SELECT OrganizationName, OrganizationID FROM Organization", connection);
                    //SqlDataAdapter adapter2 = new SqlDataAdapter("SELECT DISTINCT Live.LocationType FROM Program INNER JOIN Live ON Program.ProgramID = Live.ProgramID INNER JOIN NewProgram ON Program.ProgramID = NewProgram.ProgramID WHERE ProgramType = 'Live' AND LocationType != ' '", connection);
                    adapter.Fill(programList);
                    //adapter1.Fill(organzationList);
                    //adapter2.Fill(typeList);

                    //drpOrganizationList.DataSource = organzationList;
                    //drpOrganizationList.DataTextField = "OrganizationName";
                    //drpOrganizationList.DataValueField = "OrganizationID";
                    //drpOrganizationList.DataBind();

                    //drpProgramList.DataSource = programList;
                    //drpProgramList.DataTextField = "ProgramName";
                    //drpProgramList.DataValueField = "ProgramID";
                    //drpProgramList.DataBind();

                    //drpProgramType.DataSource = typeList;
                    //drpProgramType.DataTextField = "ProgramType";
                    //drpProgramType.DataValueField = "ProgramID";
                    //drpProgramType.DataBind();
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text = "Did not fill DropdownList!";
                }
                //using (SqlConnection aConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
                //{
                //    try
                //    {

                //        SqlDataAdapter adapter2 = new SqlDataAdapter("SELECT DISTINCT Live.LocationType FROM Program INNER JOIN Live ON Program.ProgramID = Live.ProgramID INNER JOIN NewProgram ON Program.ProgramID = NewProgram.ProgramID WHERE ProgramType = 'Live' AND LocationType != ' '", aConnection);
                //        adapter2.Fill(typeList);

                //        drpProgramType.DataSource = typeList;
                //        drpProgramType.DataTextField = "ProgramType";
                //        drpProgramType.DataValueField = "ProgramID";
                //        drpProgramType.DataBind();
                //    }
                //    catch (Exception E)
                //    {

                //    }
                //}
            }
        }
    }
    protected void btnSubmit_Program(object sender, EventArgs e)
    {

        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {

            try
            {
                connection.Open();
                String getProgramID = "SELECT ProgramID FROM Program WHERE ProgramName = @ProgramName";
                SqlCommand getIDCommand = new SqlCommand(getProgramID, connection);
                getIDCommand.Parameters.AddWithValue("@ProgramName", drpProgramList.SelectedValue);
                programID = getIDCommand.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception E)
            {

            }

            NewPrograms newProgram = new NewPrograms(Int32.Parse(txtKids.Text), Int32.Parse(txtKids.Text), Int32.Parse(txtProgramTotal.Text), "Second Grade", Int32.Parse(txtMileage.Text), "Completed", "Allergies", DateTime.Now, DateTime.Now, programID, DateTime.Now, "Raina");

            string insertIntoNewProgram = "INSERT INTO NewProgram([TotalKids], [TotalAdults]," +
                "[TotalPeople], [AgeLevel], [TotalMileage], [NewProgramStatus], [DateCreated]," +
                "[DateCompleted], [MiscNotes], [ProgramID], [LastUpdated], [LastUpdatedBy]) VALUES (" +
                "@kid, @adult, @totalPeople, @age, @mileage, @status, @created, @complete," +
                "@miscNotes, @programid, @LU, @LUB)"; /*@programid*/
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
                lblErrorMessage.Text = "Entry is in database";
            }
        }
    }
    //protected void btnAddOrganization(object sender, EventArgs e)
    //{
    //    lblErrorMessage.Text = "Organization Added!";

    //    using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
    //    {
    //        Organization organization = new Organization(1, 1, drpOrganizationList.SelectedItem.Text, DateTime.Now, "Muzo");

    //        string insertIntoOrganization = "INSERT INTO Organization (OrganizationName, AddressID, ContactID, LastUpdated, LastUpdatedBy) VALUES (" +
    //            "@OrgName, @AddressID, @ContactID, @LB, @LUB)";
    //        connection.Open();
    //        using (SqlCommand command = new SqlCommand(insertIntoOrganization, connection))
    //        {
    //            command.Parameters.AddWithValue("@OrgName", organization.OrgName);
    //            command.Parameters.AddWithValue("@AddressID", organization.AddressID);
    //            command.Parameters.AddWithValue("@ContactID", organization.ContactID);
    //            command.Parameters.AddWithValue("@LB", organization.LastUpdated);
    //            command.Parameters.AddWithValue("@LUB", organization.LastUpdatedBy);

    //            command.ExecuteNonQuery();
    //            lblErrorMessage.Text = "Organization Added!";
    //        }
    //    }
    //}

    protected void drpOrganizationList_IndexChanged(object sender, EventArgs e)
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



        }

    }


    protected void drpContact_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {

            string retrieveContact = "Select FirstName, LastName, Email, PrimaryPhoneNumber, SecondaryPhoneNumber from Contact where ContactID = @contactID";


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
                        String name = reader.GetString(0) + " " + reader.GetString(1);
                        txtContact.Text = name;
                        txtEmail.Text = reader.GetString(2);
                        txtPrimaryNumber.Text = reader.GetString(3);
                        txtSecondaryNumber.Text = reader.GetString(4);



                    }
                }
                connection.Close();

            }
        }
    }
}