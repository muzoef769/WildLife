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
using System.Drawing;

public partial class Program : System.Web.UI.Page
{
    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    public static Int32 id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void redirectProgram(object sender, EventArgs e)
    {
        Response.Redirect("AddProgram.aspx");
    }

    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row.";



        }





    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        id = Convert.ToInt32(GridView1.SelectedValue.ToString());

        string AnimalList = " SELECT Animal.AnimalName, Animal.AnimalType FROM Animal INNER JOIN AssignAnimal ON Animal.AnimalID = AssignAnimal.AnimalID WHERE AssignAnimal.NewProgramID = @NewProgramID";



        SqlCommand cmd3 = sc.CreateCommand();
        cmd3.CommandType = CommandType.Text;
        cmd3.CommandText = AnimalList;
        cmd3.Parameters.AddWithValue("@NewProgramID", id);
        SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
        DataTable dt3 = new DataTable();
        da3.Fill(dt3);
        GridView2.DataSource = dt3;
        GridView2.DataBind();
    }
}