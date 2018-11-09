<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="OrganizationView.aspx.cs" Inherits="OrganizationView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <br />
    <br />
    <br />
      <h1 id="ProgramMonth" class=" ProgramCardTitle d-flex justify-content-center "> Organizations</h1>
	<div class="row">
        <div class="col-4 mx-auto">
            <div class="d-flex justify-content-center "> 
   <asp:Button ID="btnAddOrg" runat="server" CssClass="btn btn-primary LoginButton" Text="Add an Organization" href="AddOrganization.aspx" OnClick="btnAddOrg_Click" />
       </div>
        </div>


  <div class="card-body container-fluid">
		</div>
    
        <br />
         <div class="row mx-auto d-flex justify-content-center table-responsive ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
              <asp:GridView ID="grdOrganizations"    HeaderStyle-ForeColor="black" Class ="table-responsive-md table table-condensed table-bordered table-hover AnimalCard" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" >
    <Columns>
        <asp:BoundField DataField="OrganizationName"  HeaderText="Organization Name" SortExpression="OrganizationName" />
        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="PrimaryPhoneNumber" HeaderText="Primary Phone Number" SortExpression="PrimaryPhoneNumber" />
    </Columns>
                  <HeaderStyle ForeColor="White" BackColor="#777678"></HeaderStyle>
        </asp:GridView>
          </div>
      </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT Organization.OrganizationName, Address.Street, Address.State, Address.County, (Contact.FirstName + ' '+  Contact.LastName) AS Name, Contact.Email, Contact.PrimaryPhoneNumber
FROM            Address INNER JOIN
                         Organization ON Address.AddressID = Organization.AddressID INNER JOIN
                         Contact ON Organization.OrganizationID = Contact.OrganizationID"></asp:SqlDataSource>

</div>


   
</asp:Content>


