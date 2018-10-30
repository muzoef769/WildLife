using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentRecords : System.Web.UI.Page
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

}