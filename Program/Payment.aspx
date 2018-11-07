<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">

        <div class="container-fluid PaymentContainer">

            <div class="card mx-auto ProgramCard" style="opacity: .8;">
                <div class="card-body">
                    <div class="row">
                        <asp:Button ID="gridRefresh" class="btn btn-warning btn-lg" runat="server" Text="Refresh Tables" onclick="gridRefresh_Click"/>
                    </div>
                    <div class="row">
                        <div id="outInvGrids" class="col-md-12">
                            <h3 id="outPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">Outstanding Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                            <div id="outInvoices" style="overflow-x: auto;">
                                <asp:GridView ID="outInvGrid" runat="server" DataKeyNames="InvoiceID" EnableSortingAndPagingCallbacks="false" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="outstandingSource" AllowPaging="True" AllowSorting="True" >
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>'>
                                                    <asp:ListItem>Incompleted</asp:ListItem>
                                                    <asp:ListItem>Completed</asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("InvoiceStatus") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="outstandingSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                    SelectCommand="SELECT InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
                                                    WHERE InvoiceStatus = 'Incompleted'"
                                    UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                    <UpdateParameters>
                                        <asp:Parameter Name="InvoiceStatus" Type="String" />
                                        <asp:Parameter Name="InvoiceID" Type="String" />
                                    </UpdateParameters>

                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <button id="Button1" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button>


                    <div class="row">
                        <div id="paidInvGrids" class="col-md-12">
                            <h3 id="paidTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">Fulfilled Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                            <div id="paidInvoices" style="overflow-x: auto;">
                                <asp:GridView ID="paidGrid" runat="server" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="paidSource" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>'>
                                                    <asp:ListItem>Incompleted</asp:ListItem>
                                                    <asp:ListItem>Completed</asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("InvoiceStatus") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="paidSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                    SelectCommand="SELECT InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
                                                    WHERE InvoiceStatus = 'Completed'"
                                    UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                    <UpdateParameters>
                                        <asp:Parameter Name="InvoiceStatus" Type="String" />
                                        <asp:Parameter Name="InvoiceID" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <button id="Button2" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button>




                    <div class="row">
                        <div id="allPayGrids" class="col-md-12">
                            <h3 id="allPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">All Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                            <div id="allInvoices" style="overflow-x: auto;">
                                <asp:GridView ID="allInvGrid" runat="server" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="programSource" AllowPaging="True" AllowSorting="True">
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>'>
                                                    <asp:ListItem>Incompleted</asp:ListItem>
                                                    <asp:ListItem>Completed</asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("InvoiceStatus") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="programSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                    SelectCommand="SELECT InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                FROM 
                                                dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                inner join dbo.Address a on a.AddressID = np.AddressID
                                                inner join dbo.Organization o on o.AddressID = a.AddressID"
                                    UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                    <UpdateParameters>
                                        <asp:Parameter Name="InvoiceStatus" Type="String" />
                                        <asp:Parameter Name="InvoiceID" Type="String" />
                                    </UpdateParameters>

                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <button id="Button3" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

