using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mammals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void animal_OnClick(object sender, EventArgs e)
    //{
    //    //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$(function() { $('#animalModal').modal('show'); });</script>", false);

    //    string page = "Animal.aspx?field1=16";
    //    string newWin = "window.open('" + page +"');";
    //    ClientScript.RegisterStartupScript(this.GetType(), "pop", newWin, true);
    //}
    
    //protected void btnEdit_OnClick(object sender, EventArgs e)
    //{
        

    //    txtName.ReadOnly = false;
    //    txtSpecies.ReadOnly = false;
    //    txtScientificName.ReadOnly = false;
    //    // txtAge.ReadOnly = false;
    //    txtType.Visible = false;
    //    ddlType.Visible = true;


    //    if (txtType.Text == "Bird")
    //    {
    //        ddlType.SelectedIndex = 0;
    //    }
    //    if (txtType.Text == "Mammal")
    //    {
    //        ddlType.SelectedIndex = 1;
    //    }
    //    if (txtType.Text == "Reptile")
    //    {
    //        ddlType.SelectedIndex = 2;
    //    }
        
    //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$(function() { $('#animalModal').modal('show'); });</script>", false);
    //}
}