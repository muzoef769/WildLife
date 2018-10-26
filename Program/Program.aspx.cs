using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Program : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Program(object sender, EventArgs e)
    {
        Programs newPrograms = new Programs(Int32.Parse(txtKids.Text), Int32.Parse(txtAdults.Text),
            Int32.Parse(txtAdults.Text) + Int32.Parse(txtKids.Text), Int32.Parse(txtMileageAmount.Text),
            DateTime.Parse(txtMileage.Text), DateTime.Parse(txtDate.Text), "Age is 20",
            "Status", "Speial Needs", DateTime.Now, "Muzo");

        
    }
}