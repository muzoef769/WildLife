﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    //protected void julGrid_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(julGrid, "Select$" + e.Row.RowIndex);
    //        e.Row.ToolTip = "Click to select this row.";
    //    }
    //}

    //protected void julGrid_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    foreach (GridViewRow row in julGrid.Rows)
    //    {
    //        if (row.RowIndex == julGrid.SelectedIndex)
    //        {
    //            row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
    //            row.ToolTip = string.Empty;
    //        }
    //        else
    //        {
    //            row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
    //            row.ToolTip = "Click to select this row.";
    //        }
    //    }
    //}

    protected void btnOct_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "10";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "10";
    }

    protected void btnJan_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "1";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "1";
    }

    protected void btnFeb_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "2";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "2";
    }

    protected void btnMar_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "3";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "3";
    }

    protected void btnApr_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "4";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "4";
    }

    protected void btnMay_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "5";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "5";
    }

    protected void btnJun_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "6";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "6";
    }

    protected void btnJul_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "7";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "7";
    }

    protected void btnAug_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "8";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "8";
    }

    protected void btnSep_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "9";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "9";
    }

    protected void btnNov_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "11";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "11";
    }

    protected void btnDec_Click(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["month"].DefaultValue = "12";
        SqlDataSource3.SelectParameters["month"].DefaultValue = "12";
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
        ExportToExcel(annualGrid);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ExportToExcel(monthGrid);
    }

    protected void invoiceSearch_Click(object sender, EventArgs e)
    {
        using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
        {
            string query = "SELECT p.[InvoiceID], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = @invoice ORDER BY [InvoiceID]";

            //using (SqlCommand command = new SqlCommand(query, connection))
            //{ 
            //        string search = searchBox.Text;

            //        command.Parameters.AddWithValue("@search", "%" + search + "%");

            //        SqlDataAdapter da = new SqlDataAdapter(command);
            //        DataSet ds = new DataSet();
            //        da.Fill(ds);
            //        if (ds.Tables[0].Rows.Count > 0)
            //        {
            //            //GridView2.DataSource = ds;
            //            invoiceGrid.DataBind();
            //        }
            //        else
            //        {
            //            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            //            //GridView2.DataSource = ds;
            //            //GridView2.DataBind();
            //            int columncount = invoiceGrid.Rows[0].Cells.Count;
            //            invoiceGrid.Rows[0].Cells.Clear();
            //            invoiceGrid.Rows[0].Cells.Add(new TableCell());
            //            invoiceGrid.Rows[0].Cells[0].ColumnSpan = columncount;
            //            invoiceGrid.Rows[0].Cells[0].Text = "No Records Found";
            //        }
            //}
        }

            
    }
}