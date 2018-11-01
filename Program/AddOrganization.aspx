
<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddOrganization.aspx.cs" Inherits="AddOrganization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="container-fluid ProgramContainer">

<div class="card mx-auto  ProgramCard">
  <div class="card-body">
       <div class="justify-content-center "> 
      <h3>Add an Organization
      </h3>
	  <asp:Label ID="lblOrgName" runat="server" Text="Organization Name: "> </asp:Label><asp:TextBox ID="txtOrgName" runat="server" ></asp:TextBox>
      <br />
      <asp:Label ID="lblStreet" runat="server" Text="Street Name: "></asp:Label><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
       <br />
        <asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label><asp:DropDownList ID="drpCountry" runat="server">
            <asp:ListItem>United States</asp:ListItem>
            <asp:ListItem>Canada</asp:ListItem>                                                                            
        </asp:DropDownList>
            <br />
      <asp:Label ID="lblState" runat="server" Text="State: "></asp:Label><asp:DropDownList ID="drpState" runat="server">
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
       <br />
      <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label><asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
       <br />
      <asp:Label ID="lblCounty" runat="server" Text="County: "></asp:Label><asp:Textbox ID="txtCounty" runat="server"></asp:Textbox>
       <br />
      <asp:Label ID="lblZipCode" runat="server" Text="Zip Code: "></asp:Label><asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
           <br />
        <asp:Button ID="btnAddOrganization" runat="server" Text="Add Organization" OnClick="btnAddOrganization_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="Return" href="Organization.aspx" OnClick="btnReturn_Click" />
       
</div>
</div>
</div>
</div>
</asp:Content>

