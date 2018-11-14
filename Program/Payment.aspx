<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="main">
        <br />
        <br />
        <br />
        <div class="row">
        <div class="col-md-6 mx-auto text-center">
            <h1 class="CardTitle">View Program Info</h1>
        </div>
    </div>



        <div class="container-fluid PaymentContainer">

            <div class="card mx-auto ProgramCard" ">
                <div class="card-body">
                    <div class="row mr-auto">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="gridRefresh" class="btn btn-success" runat="server" Text="Refresh Tables" OnClick="gridRefresh_Click" />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="gridRefresh" />

                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                    <br />
                    <%--  <div class="row">
                        <div id="outInvGrids" class="col-md-12">
                            <h3 id="outPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">Outstanding Invoices</h3>
                        </div>
                    </div>--%>


                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <div class="d-flex justify-content-lg-start">
                                
                                    <button class="btn btn-block btn-accordion  " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Outstanding Invoices
                                    </button>
                               
                                    </div>
                            </div>

                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="col-12 PayTable mx-auto d-flex justify-content-center  table table-condensed table-bordered table-hover">
                                        <div id="outInvoices" style="overflow-x: auto;">
                                            <br />
                                            <asp:UpdatePanel ID="outstandingPan" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="outInvGrid" HeaderStyle-ForeColor="black" runat="server" DataKeyNames="InvoiceID" EnableSortingAndPagingCallbacks="false" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="outstandingSource" AllowPaging="True" AllowSorting="True">
                                                       <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" DataFormatString="${0:###,###,###.00}" SortExpression="ProgramCost" ReadOnly="true" />
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
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="outInvGrid" EventName="SelectedIndexChanged" />

                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <asp:SqlDataSource ID="outstandingSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID
                                                    WHERE InvoiceStatus = 'Incompleted'"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>

                                            </asp:SqlDataSource>
                                            <br />
                                            <asp:Button id="Button1" class=" btn btn-success" runat="server" OnClick="Button1_Click" Text="Export To Excel"></asp:Button>
                                            <br />
                                            <br />

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <div class="d-flex justify-content-lg-start">
                                    <button class="btn btn-block btn-accordion  collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Fulfilled Invoices
                                    </button>
                              </div>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="col-md-12 PayTable mx-auto d-flex justify-content-center   table table-condensed table-bordered table-hover ">
                                        <div id="paidInvoices" style="overflow-x: auto;">
                                            <br />
                                            <asp:UpdatePanel ID="paidPan" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="paidGrid" runat="server" HeaderStyle-ForeColor="black" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="paidSource" AllowPaging="True" AllowSorting="True">
                                                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" DataFormatString="${0:###,###,###.00}" SortExpression="ProgramCost" ReadOnly="true" />
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
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="paidGrid" EventName="SelectedIndexChanged" />

                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <asp:SqlDataSource ID="paidSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID
                                                    WHERE InvoiceStatus = 'Completed'"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />

                                            <asp:Button id="Button2" class=" btn btn-success" runat="server" OnClick="Button2_Click" Text="Export To Excel"></asp:Button>
                                            <br />
                                            <br />

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <div class="d-flex justify-content-lg-start">
                                    <button class="btn btn-block btn-accordion   collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        All Invoices
                                    </button>
                                </div>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    <div class="col-md-12 PayTable mx-auto d-flex justify-content-center  table table-condensed table-bordered table-hover ">
                                        <div id="allInvoices" style="overflow-x: auto;">
                                            <br />
                                            <asp:UpdatePanel ID="allInvPan" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="allInvGrid" runat="server" HeaderStyle-ForeColor="black" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="programSource" AllowPaging="True" AllowSorting="True">
                                                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramCost" HeaderText="Program Cost" DataFormatString="${0:###,###,###.00}" SortExpression="ProgramCost" ReadOnly="true" />
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
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="allInvGrid" EventName="SelectedIndexChanged" />

                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <asp:SqlDataSource ID="programSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>

                                            </asp:SqlDataSource>

                                            <br />

                                            <asp:Button id="Button3" class=" btn btn-success" runat="server" OnClick="Button3_Click" Text="Export To Excel"></asp:Button>
                                            <br />
                                            <br />

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>




                    <%--                    <div class="row table-responsive">
                        <div class="col-md-9 PayTable mx-auto d-flex justify-content-center  table table-borderless table-striped table-condensed ">
                           </div> 

                    <div class="row">
                        <div id="paidInvGrids" class="col-md-12">
                            <h3 id="paidTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">Fulfilled Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                        

                    <div class="row">
                        <div id="allPayGrids" class="col-md-12">
                            <h3 id="allPayTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px;">All Invoices</h3>
                        </div>
                    </div>
                    <div class="row table-responsive">
                       
                </div>
            </div>
        </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

