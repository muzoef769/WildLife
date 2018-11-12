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
    public static Int32 id;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Convert.ToInt32(drpInvoiceOrganization.SelectedValue);

        string sql = "SELECT NewProgram.DateCompleted, NewProgram.TimeSlot, Program.ProgramName, Program.ProgramType, Program.ProgramCost FROM NewProgram INNER JOIN Program ON NewProgram.ProgramID = Program.ProgramID INNER JOIN Address ON NewProgram.AddressID = Address.AddressID INNER JOIN Organization ON Address.AddressID = Organization.AddressID WHERE Organization.OrganizationID = @Org_ID";

        SqlCommand command = sc.CreateCommand();
        command.CommandType = CommandType.Text;
        command.CommandText = sql;
        command.Parameters.AddWithValue("@Org_ID", id);
        SqlDataAdapter da = new SqlDataAdapter(command);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView5.DataSource = dt;
        GridView5.DataBind();
    }
}