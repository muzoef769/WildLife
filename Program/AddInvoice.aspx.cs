using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class AddInvoice : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    public int getNewProgramID;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void viewGridView(object sender, EventArgs e)
    {
        int id = Int32.Parse(drpInvoiceOrganization.SelectedValue);

        string sql = "SELECT NewProgram.DateCompleted, NewProgram.TimeSlot, NewProgram.NewProgramID,NewProgram.NewProgramStatus, Program.ProgramName, NewProgram.LastUpdatedBy FROM Address INNER JOIN Organization ON Address.AddressID = Organization.AddressID INNER JOIN NewProgram ON Address.AddressID = NewProgram.AddressID INNER JOIN Program ON NewProgram.ProgramID = Program.ProgramID WHERE (Organization.OrganizationID = CAST(@Org_ID as int))";

        SqlCommand command = sc.CreateCommand();

        command.CommandType = CommandType.Text;
        command.Parameters.AddWithValue("@Org_ID", id);
        command.CommandText = sql;

        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView5.DataSource = dt;
        GridView5.DataBind();
        using (SqlCommand cmd = new SqlCommand(sql))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Org_ID", id);
            cmd.Connection = sc;
            sc.Open();
            ProgramListInvoice.DataSource = cmd.ExecuteReader();
            ProgramListInvoice.DataTextField = "ProgramName";
            ProgramListInvoice.DataValueField = "NewProgramID";
            ProgramListInvoice.DataBind();
        }
        sc.Close();
    }
    protected void AddProgram(object sender, EventArgs e)
    {
        //Invoice ID, New ProgramID, DateCreated, InvoiceStatus, LastUpdated, LUB
        Invoice addInvoice = new Invoice(Int32.Parse(drpInvoiceOrganization.SelectedValue), 150 , DateTime.Now, "Incomplete",DateTime.Now, Session["UserFullName"].ToString());
    }

    protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Cells[2].Visible = false;
    }
}