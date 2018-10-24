using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Animal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection myConnection = new SqlConnection("server=localhost;database=WildlifeCenter;Trusted_Connection=True");
        myConnection.Open();
        string myQuery = "SELECT [CommonName], [ScientificName], [Name], [Type] FROM [WildlifeCenter].[dbo].[Animal] WHERE Name = @Name";
        SqlCommand myCommand = new SqlCommand(myQuery, myConnection);
        myCommand.Parameters.AddWithValue("@Name", DropDownList1.SelectedItem.Text);
        try
        {
            
            SqlDataReader myReader = myCommand.ExecuteReader();
            while (myReader.Read())
            {
                
                txtCommonName.Text = myReader.GetString(0);
                txtScientificName.Text = myReader.GetString(1);
                txtName.Text = myReader.GetString(2);
                txtType.Text = myReader.GetString(3);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

        finally
        {
            myConnection.Close();
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {

        txtName.ReadOnly = false;
        txtCommonName.ReadOnly = false;
        txtScientificName.ReadOnly = false;
       // txtAge.ReadOnly = false;
        txtType.ReadOnly = false;

        btnUpdate.Visible = true;
        btnDelete.Visible = true;



    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        SqlConnection myConnection = new SqlConnection("server=localhost;database=WildlifeCenter;Trusted_Connection=True");
        
        string myQuery = "UPDATE [WildlifeCenter].[dbo].[Animal] SET [CommonName] = @CommonName,[ScientificName] = @ScientificName, [Name] = @Name, [Type] = @Type WHERE Name = @Name";
        


        try
        {
            myConnection.Open();

            SqlCommand myCommand = new SqlCommand(myQuery, myConnection);
            myCommand.Parameters.AddWithValue("@CommonName", txtCommonName.Text);
            myCommand.Parameters.AddWithValue("@ScientificName", txtScientificName.Text);
            myCommand.Parameters.AddWithValue("@Name", txtName.Text);
            myCommand.Parameters.AddWithValue("@Type", txtType.Text);
            myCommand.ExecuteNonQuery();
        }
        catch (Exception E)
        {
            txtName.Text = E.ToString();
        }
        finally
        {
            myConnection.Close();
        }


    }
}





