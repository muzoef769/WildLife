<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="OrganizationView.aspx.cs" Inherits="OrganizationView" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <br />
    <br />
    <br />
      <h1 id="ProgramMonth" class=" CardTitle mx-auto d-flex justify-content-center "> Organizations</h1>
	<div class="row">
        <div class="col-4 mx-auto">
            <div class="d-flex justify-content-center "> 
   <asp:Button ID="btnAddOrg" runat="server" CssClass="btn btn-success" Text="Add an Organization" href="AddOrganization.aspx" OnClick="btnAddOrg_Click" />
       </div>
        </div>


  <div class="card-body container-fluid">
      <li class="nav-item ml-auto">
                    <asp:TextBox ID="txtSearchAll" Placeholder="Search by Org Name" runat="server" AutoPostBack="True"
                                    OnTextChanged="txtSearchAll_TextChanged"></asp:TextBox>
                    <asp:Button
                        ID="btnSearchAll"
                        runat="server" 
                        CssClass="btn btn-success"
                        Text="Search"
                        OnClick="btnSearchAll_Click"/>
                    <asp:Button
                        ID="btnClearAll"
                        CssClass="btn btn-warning"
                        runat="server"
                        Text="Clear"
                        OnClick="btnClearAll_Click" />

                </li>

		</div>
    
        <br />
        <div class="table-responsive PaymentContainer d-flex justify-content-center " style="background-color: transparent; padding-top: 0% !important;">
 <div class="row mx-auto ">
            <div class="col-xl-12 col-lg-12 col-md-12 col-s-12 ">
                        
              <asp:GridView ID="grdOrganizations" EnableSortingAndPagingCallbacks="true"  HeaderStyle-ForeColor="black" Class =" table table-condensed table-bordered table-hover AnimalCard" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" >
   
                  <Columns>
        <asp:BoundField DataField="OrganizationName"  HeaderText="Organization Name" SortExpression="OrganizationName" />
        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="PrimaryPhoneNumber" HeaderText="Primary Phone"  SortExpression="PrimaryPhoneNumber" HeaderStyle-Width="200px" />
    </Columns>
                 <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
        
              </asp:GridView>
         <asp:Button id="orgButton" class=" btn btn-success" runat="server" OnClick="orgButton_Click" Text="Export To Excel"></asp:Button>
      </div>
           </div> </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT Organization.OrganizationName, Address.Street, Address.State, Address.County, (Contact.FirstName + ' '+  Contact.LastName) AS Name, Contact.Email, Contact.PrimaryPhoneNumber
FROM            Address INNER JOIN
                         Organization ON Address.AddressID = Organization.AddressID INNER JOIN
                         Contact ON Organization.OrganizationID = Contact.OrganizationID"></asp:SqlDataSource>

</div>


   
</asp:Content>


