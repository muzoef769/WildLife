<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">

        <div class="container-fluid PaymentContainer">

            <div class="card mx-auto ProgramCard" style="opacity: .8;">
                <div class="card-body">
                    <div class="row">
                        <div id="outInvGrids" class="col-md-12">
                            <h3 id="outPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">Outstanding Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                            <div id="outInvoices" style="overflow-x: auto;">
                                <asp:gridview id="outInvGrid" runat="server" DataKeyNames="InvoiceID" autogeneratecolumns="False" datasourceid="outstandingSource" allowpaging="True" allowsorting="True" autogenerateeditbutton="True">
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" readonly="true" visible="False" />
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber"  readonly="true" />
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated"  readonly="true" />
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName"  readonly="true"/>
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName"  readonly="true"/>
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost"  readonly="true"/>
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
                                </asp:gridview>
                                <asp:sqldatasource id="outstandingSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                    selectcommand="SELECT InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
                                                    WHERE InvoiceStatus = 'Incompleted'"
                                    updatecommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                    <UpdateParameters>
                                        <asp:Parameter Name="InvoiceStatus" Type="String"/>
                                        <asp:Parameter Name="InvoiceID" Type="String" />
                                    </UpdateParameters>
                                    
                                </asp:sqldatasource>
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
                                <asp:gridview id="paidGrid" runat="server" autogeneratecolumns="False" datasourceid="paidSource" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber"  readonly="true"/>
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" readonly="true" />
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName"  readonly="true"/>
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName"  readonly="true"/>
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost"  readonly="true"/>
                                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Payment Status" SortExpression="InvoiceStatus" />
                                    </Columns>
                                </asp:gridview>
                                <asp:sqldatasource id="paidSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                    selectcommand="SELECT InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
                                                    WHERE InvoiceStatus = 'Completed'">
                                </asp:sqldatasource>
                            </div>
                        </div>
                    </div>





                    <div class="row">
                        <div id="allPayGrids" class="col-md-12">
                            <h3 id="allPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">All Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                            <div id="allInvoices" style="overflow-x: auto;">
                                <asp:gridview id="allInvGrid" runat="server" autogeneratecolumns="False" datasourceid="programSource" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber"  readonly="true"/>
                                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated"  readonly="true"/>
                                        <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName"  readonly="true"/>
                                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName"  readonly="true"/>
                                        <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" SortExpression="ProgramCost" />
                                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Payment Status" SortExpression="InvoiceStatus" />
                                    </Columns>
                                </asp:gridview>
                                <asp:sqldatasource id="programSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                    selectcommand="SELECT InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                FROM 
                                                dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                inner join dbo.Invoice i on i.NewProgramID = np.NewProgramID
                                                inner join dbo.Address a on a.AddressID = np.AddressID
                                                inner join dbo.Organization o on o.AddressID = a.AddressID"></asp:sqldatasource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

