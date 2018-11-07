    
<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddOrganization.aspx.cs" Inherits="AddOrganization" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

  <div class="container-fluid ContactContainer">

<div class="card mx-auto  ProgramCard">
  <div class="card-body">
       <div class="justify-content-center "> 
       <div class="row">
                    <div class="col-md-6 text-center mx-auto">
                <h3 class="modal-title">Add an Organization</h3>
                </div>
                    </div>
       <div class="row">
                    <div class="col-md-6 text-center mx-auto">
                <h5 class="modal-title">Organization Name</h5>
                </div>
                    </div>
           <br />
           <div class="row">
                    <div class="col-md-6 text-center mx-auto">
                <asp:TextBox ID="txtOrgName" runat="server" placeholder=" Organization Name" ></asp:TextBox>
                </div>
                    </div>
	  
     
    <hr />
      <div class="row">
                    <div class="col-md-6 text-center mx-auto">
                <h5 class="modal-title">Organization Address</h5>
                        <br />
                </div>
                    </div>

            <div class="row">
                    <div class="col-md-4 text-center mx-auto">
                <asp:TextBox ID="txtStreet" runat="server"  placeholder=" Organization Address"></asp:TextBox>
                </div>
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
                <asp:DropDownList ID="drpCountry" runat="server"  >
            <asp:ListItem>United States</asp:ListItem>
            <asp:ListItem>Canada</asp:ListItem>                                                                            
        </asp:DropDownList>
                </div>
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:DropDownList ID="drpState" runat="server"  >
          <asp:ListItem Value ="VA">Virginia</asp:ListItem>
<asp:ListItem Value="AL">Alabama</asp:ListItem>
	<asp:ListItem Value="AK">Alaska</asp:ListItem>
	<asp:ListItem Value="AZ">Arizona</asp:ListItem>
	<asp:ListItem Value="AR">Arkansas</asp:ListItem>
	<asp:ListItem Value="CA">California</asp:ListItem>
	<asp:ListItem Value="CO">Colorado</asp:ListItem>
	<asp:ListItem Value="CT">Connecticut</asp:ListItem>
	<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	<asp:ListItem Value="DE">Delaware</asp:ListItem>
	<asp:ListItem Value="FL">Florida</asp:ListItem>
	<asp:ListItem Value="GA">Georgia</asp:ListItem>
	<asp:ListItem Value="HI">Hawaii</asp:ListItem>
	<asp:ListItem Value="ID">Idaho</asp:ListItem>
	<asp:ListItem Value="IL">Illinois</asp:ListItem>
	<asp:ListItem Value="IN">Indiana</asp:ListItem>
	<asp:ListItem Value="IA">Iowa</asp:ListItem>
	<asp:ListItem Value="KS">Kansas</asp:ListItem>
	<asp:ListItem Value="KY">Kentucky</asp:ListItem>
	<asp:ListItem Value="LA">Louisiana</asp:ListItem>
	<asp:ListItem Value="ME">Maine</asp:ListItem>
	<asp:ListItem Value="MD">Maryland</asp:ListItem>
	<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	<asp:ListItem Value="MI">Michigan</asp:ListItem>
	<asp:ListItem Value="MN">Minnesota</asp:ListItem>
	<asp:ListItem Value="MS">Mississippi</asp:ListItem>
	<asp:ListItem Value="MO">Missouri</asp:ListItem>
	<asp:ListItem Value="MT">Montana</asp:ListItem>
	<asp:ListItem Value="NE">Nebraska</asp:ListItem>
	<asp:ListItem Value="NV">Nevada</asp:ListItem>
	<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	<asp:ListItem Value="NM">New Mexico</asp:ListItem>
	<asp:ListItem Value="NY">New York</asp:ListItem>
	<asp:ListItem Value="NC">North Carolina</asp:ListItem>
	<asp:ListItem Value="ND">North Dakota</asp:ListItem>
	<asp:ListItem Value="OH">Ohio</asp:ListItem>
	<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	<asp:ListItem Value="OR">Oregon</asp:ListItem>
	<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	<asp:ListItem Value="SC">South Carolina</asp:ListItem>
	<asp:ListItem Value="SD">South Dakota</asp:ListItem>
	<asp:ListItem Value="TN">Tennessee</asp:ListItem>
	<asp:ListItem Value="TX">Texas</asp:ListItem>
	<asp:ListItem Value="UT">Utah</asp:ListItem>
	<asp:ListItem Value="VT">Vermont</asp:ListItem>
	<asp:ListItem Value="WA">Washington</asp:ListItem>
	<asp:ListItem Value="WV">West Virginia</asp:ListItem>
	<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	<asp:ListItem Value="WY">Wyoming</asp:ListItem>
    </asp:DropDownList>
                </div>
                   
                    </div>


             <br />
            <div class="row">
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:TextBox ID="txtCity" placeholder=" City" runat="server"></asp:TextBox>
                </div>
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:Textbox ID="txtCounty" placeholder=" County" runat="server"></asp:Textbox>
                </div>
                
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:TextBox ID="txtZipCode" placeholder=" Zip Code" runat="server"></asp:TextBox>
                </div>
                    </div>
  
  
     
    
     
   
                 <br />
    <hr />
      <div class="row">
                    <div class="col-md-6 text-center mx-auto">
                <h5 class="modal-title">Contact information </h5>
                        <br />
                </div>
                    </div>



               <div class="row">
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:TextBox ID="txtFirstName" placeholder=" First Namke" runat="server"></asp:TextBox>
                         </div>
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
              <asp:Textbox ID="txtLastName" placeholder=" Last Name" runat="server"></asp:Textbox>
                </div>
                
                    <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
               <asp:TextBox ID="txtEmail" placeholder=" Email" runat="server"></asp:TextBox>
                </div>
                    </div>

       
       <br />
 
               <div class="row">
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
              <asp:Textbox ID="txtPrimaryPhone"  placeholder=" Primary Phone" runat="server"></asp:Textbox>
                       </div>
                   <div class=" col-xl-4 col-lg-3 col-md-6  mx-auto">
             <asp:TextBox ID="txtSecondaryPhone" placeholder=" Secondary Phone"  runat="server"></asp:TextBox>
                </div>
                
                   <div class="col-md-4 col-s-0 text-center mx-auto">
              
                </div>
                    </div>
      
   
                            <br />
    <hr />
           <br />
           <div class="row">
                   <div class="col-md-6 text-center mx-auto">
              <asp:Button ID="btnAddOrganization" runat="server" Text="Add Organization" Style="color:white;" Cssclass=" btn btn-login btn-AddAnimal" OnClick="btnAddOrganization_Click" />
                       </div>
               <br />
                   <div class="col-md-6 text-center mx-auto">
             <asp:Button ID="btnReturn" runat="server" Text="Return"  Style="color:white;" Cssclass=" btn btn-login btn-AddAnimal" OnClick="btnReturn_Click" />
                </div>
                
                  
                    </div>
        <%--<asp:Button ID="btnAddOrganization" runat="server" Text="Add Organization" Cssclass=" btn btn-login btn-AddAnimal" OnClick="btnAddOrganization_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="Return"  Cssclass=" btn btn-login btn-AddAnimal" OnClick="btnReturn_Click" />--%>
       
</div>
</div>
</div>

</asp:Content>

