using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

    //protected void ShowData()
    //{
    //    using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
    //    {
    //        dt = new DataTable();

    //        string select = "";
    //        using (adapt = new SqlDataAdapter(select, connection))
    //        {
    //            adapt.Fill(dt);
    //            if (dt.Rows.Count > 0)
    //            {
    //                outInvGrid.DataSource = dt;
    //                outInvGrid.DataBind();
    //            }
    //        }
    //    }
    //}

    //protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    //{
    //    using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["connString"].ConnectionString))
    //    {
    //        //Finding the controls from Gridview for the row which is going to update  
    //        DropDownList ddl = outInvGrid.Rows[e.RowIndex].FindControl("dropdownlist1") as DropDownList;
    //        Label invNum = outInvGrid.Rows[e.RowIndex].FindControl("invNum") as Label;

    //        string query = "Update dbo.Invoice set InvoiceStatus = '" + ddl.Text + "' where InvoiceNumber='" + invNum.Text + "'";

    //        using (SqlCommand command = new SqlCommand(query, connection))
    //        {
    //            connection.Open();
    //            //updating the record  
    //            command.ExecuteNonQuery();

    //            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
    //            outInvGrid.EditIndex = -1;
    //            //Call ShowData method for displaying updated data  
    //            /ShowData();
    //            connection.Close();
    //        }

    //    }
    //}

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
}