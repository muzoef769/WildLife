<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddInvoice.aspx.cs" Inherits="AddInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-md-6 mx-auto text-center">

            <h1 class="CardTitle">View Invoice Info</h1>
        </div>
    </div>
    <div class="row">
        <br />
        <div id="AddAnimalButton" class="col-lg-2 col-md-4 col-s-4 mx-auto">
            <asp:Button ID="btnInvoice" runat="server" CssClass="btn btn-primary d-flex  mx-auto justify-content-center" Text="Add Invoice"/>
        </div>
    </div>
    <div class="container-fluid PaymentContainer">
        <div class="card mx-auto ProgramCard" style="opacity: .8;">
            <div class="card-body">
                <div class="row mr-auto">
                    <asp:Label ID="lblInvoice" runat="server" Text="Invoice Number: "></asp:Label>
                    <asp:TextBox ID="txtInvoice" runat="server" Placeholder="Invoice Number"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblOrganization" runat="server" Text="Desired Organization: "></asp:Label>
                    <asp:DropDownList ID="drpInvoiceOrganization" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OrganizationName" DataValueField="OrganizationID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT [OrganizationID], [OrganizationName] FROM [Organization]"></asp:SqlDataSource>

                    <asp:GridView ID="GridView5" runat="server">
                    </asp:GridView>

                    
<%--                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT NewProgram.DateCompleted, NewProgram.TimeSlot, Program.ProgramName, Program.ProgramType, Program.ProgramCost FROM NewProgram INNER JOIN Program ON NewProgram.ProgramID = Program.ProgramID INNER JOIN Address ON NewProgram.AddressID = Address.AddressID INNER JOIN Organization ON Address.AddressID = Organization.AddressID WHERE Organization.OrganizationID = getOrganization()"></asp:SqlDataSource>--%>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

