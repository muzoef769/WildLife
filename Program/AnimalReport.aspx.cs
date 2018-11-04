using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;

public partial class AnimalReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }
    protected void SearchByDate(object sender, EventArgs e)
    {

    }
    protected void BindGrid()
    {
        //connection();
        //query = "select *from Employee";//not recommended this i have written for example,write stored procedure for security  
        //com = new SqlCommand(query, con);
        //SqlDataReader dr = com.ExecuteReader();
        //GridView1.DataSource = dr;
        //GridView1.DataBind();
        //con.Close();

        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            string sql = "SELECT DISTINCT Animal.AnimalName FROM Animal INNER JOIN AssignAnimal ON Animal.AnimalID = AssignAnimal.AnimalID WHERE AssignAnimal.NewProgramID = 1";

            connection.Open();
            using (SqlCommand command = new SqlCommand(sql, connection))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    command.Connection = connection;
                    sda.SelectCommand = command;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        grdViewReport.DataSource = dt;
                        grdViewReport.DataBind();
                    }
                }
            }
        }
    }
    protected void ExportToExcel()
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "Vithal" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        grdViewReport.GridLines = GridLines.Both;
        grdViewReport.HeaderStyle.Font.Bold = true;
        grdViewReport.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
    protected void generateMonthReport(object sender, EventArgs e)
    {
        ExportToExcel();
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        grdViewReport.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    protected void generateAnnualReport(object sender, EventArgs e)
    {

    }
}