using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridRefresh_Click(object sender, EventArgs e)
    {
        outstandingSource.EnableCaching = false;
        outInvGrid.DataBind();
        outstandingSource.EnableCaching = true;

        paidSource.EnableCaching = false;
        paidGrid.DataBind();
        paidSource.EnableCaching = true;

        programSource.EnableCaching = false;
        allInvGrid.DataBind();
        programSource.EnableCaching = true;
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void ExportToExcel(GridView grid)
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
        grid.GridLines = GridLines.Both;
        grid.HeaderStyle.Font.Bold = true;
        grid.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Hides the first column in the grid (zero-based index)
        outInvGrid.HeaderRow.Cells[0].Visible = false;

        // Loop through the rows and hide the cell in the first column
        for (int i = 0; i < outInvGrid.Rows.Count; i++)
        {
            GridViewRow row = outInvGrid.Rows[i];
            row.Cells[0].Visible = false;
        }

        ExportToExcel(outInvGrid);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Hides the first column in the grid (zero-based index)
        paidGrid.HeaderRow.Cells[0].Visible = false;

        // Loop through the rows and hide the cell in the first column
        for (int i = 0; i < paidGrid.Rows.Count; i++)
        {
            GridViewRow row = paidGrid.Rows[i];
            row.Cells[0].Visible = false;
        }

        ExportToExcel(paidGrid);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // Hides the first column in the grid (zero-based index)
        allInvGrid.HeaderRow.Cells[0].Visible = false;

        // Loop through the rows and hide the cell in the first column
        for (int i = 0; i < allInvGrid.Rows.Count; i++)
        {
            GridViewRow row = allInvGrid.Rows[i];
            row.Cells[0].Visible = false;
        }

        ExportToExcel(allInvGrid);
    }
}