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
using System.Text.RegularExpressions;

public partial class OrganizationView : System.Web.UI.Page
{

    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    public static Int32 id;
    private string SearchString = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddOrg_Click(object sender, EventArgs e)
    {

        Server.Transfer("AddOrganization.aspx", true);
    }

    public string HighlightText(string InputTxt)
    {
        string Search_Str = txtSearchAll.Text;
        // Setup the regular expression and add the Or operator.
        Regex RegExp = new Regex(Search_Str.Replace(" ", "|").Trim(), RegexOptions.IgnoreCase);
        // Highlight keywords by calling the
        //delegate each time a keyword is found.
        return RegExp.Replace(InputTxt, new MatchEvaluator(ReplaceKeyWords));
    }

    public string ReplaceKeyWords(Match m)
    {
        return ("<span class=highlight>" + m.Value + "</span>");
    }

    protected void btnSearchAll_Click(object sender, EventArgs e)
    {
        //  Set the value of the SearchString so it gets
        SearchString = txtSearchAll.Text;
    }

    protected void btnClearAll_Click(object sender, EventArgs e)
    {
        //  Simple clean up text to return the Gridview to it's default state
        txtSearchAll.Text = "";
        SearchString = "";
        grdOrganizations.DataBind();
    }

    protected void txtSearchAll_TextChanged(object sender, EventArgs e)
    {
        SearchString = txtSearchAll.Text;
    }
}