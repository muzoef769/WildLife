using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCurrentMonth.Text = DateTime.Today.ToString("MMMM");

    }

    protected void btnUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewUser.aspx", false);
    }
}