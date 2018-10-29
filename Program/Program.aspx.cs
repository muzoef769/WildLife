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
    
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable programList = new DataTable();
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT ProgramName, ProgramID FROM Program", connection);
                adapter.Fill(programList);

                drpProgramList.DataSource = programList;
                drpProgramList.DataTextField = "ProgramName";
                drpProgramList.DataValueField = "ProgramID";
                drpProgramList.DataBind();
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "Did not fill DropdownList!";
            }
        }
    }
    protected void btnSubmit_Program(object sender, EventArgs e)
    {
        //Programs newPrograms = new Programs(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
        //    Int32.Parse(txtAdults.Text) + Int32.Parse(txtKids.Text), Int32.Parse(txtMileageAmount.Text),
        //    DateTime.Parse(txtMileage.Text), DateTime.Parse(txtDate.Text), "Age is 20",
        //    "Status", "Speial Needs", DateTime.Now, "Muzo");
        //Programs program1 = new Programs(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
        //    Int32.Parse(txtAdults.Text) + Int32.Parse(txtKids.Text), 45, DateTime.Now, DateTime.Now, "34",
        //    "Status", "Special needs", DateTime.Now, "Fernando");

        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            //Programs program1 = new Programs(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
            //Int32.Parse(txtAdults.Text) + Int32.Parse(txtKids.Text), 45, DateTime.Now, DateTime.Now, "34",
            //"Status", "Special needs", DateTime.Now, "Fernando", 78);

            Programs program1 = new Programs(20, 20, 40, 100, DateTime.Now, DateTime.Now, "20", "Status", "SpecialNeeds", DateTime.Now, "Muzo", 29); 

            string insertIntoNewProgram = "INSERT INTO NewProgram([TotalKids], [TotalAdults]," + 
                "[TotalPeople], [AgeLevel], [TotalMileage], [NewProgramStatus], [DateCreated]," +
                "[DateCompleted], [MiscNotes], [ProgramID], [LastUpdated], [LastUpdatedBy]) VALUES (" +
                "@kid, @adult, @totalPeople, @age, @mileage, @status, @created, @complete," +
                "@miscNotes, @programid, @LU, @LUB)"; /*@programid*/
            connection.Open();
            using (SqlCommand command = new SqlCommand(insertIntoNewProgram, connection))
            {
                command.Parameters.AddWithValue("@kid", program1.NumKids);
                command.Parameters.AddWithValue("@adult", program1.NumAdults);
                command.Parameters.AddWithValue("@totalpeople", program1.TotalPeople);
                command.Parameters.AddWithValue("@age", program1.AgeLevel);
                command.Parameters.AddWithValue("@mileage", program1.TotalMileage);
                command.Parameters.AddWithValue("@status", program1.Status);
                command.Parameters.AddWithValue("@created", program1.DateCreated);
                command.Parameters.AddWithValue("@complete", program1.DateCompleted);
                command.Parameters.AddWithValue("@miscNotes", program1.MiscNotes);
                command.Parameters.AddWithValue("@programid", program1.ProgramID2);
                command.Parameters.AddWithValue("@LU", program1.LastUpdated1);
                command.Parameters.AddWithValue("@LUB", program1.LastUpdatedBy1);

                command.ExecuteNonQuery();
                lblErrorMessage.Text = "Entry is in database";
            }
        }
    }
}