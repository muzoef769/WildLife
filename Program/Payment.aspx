<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:scriptmanager id="ScriptManager1" runat="server"></asp:scriptmanager>

    <%--<div class="main">
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
                        
                        <asp:TextBox ID="txtYear" runat="server" class="form-control" placeholder="Filter By Year (e.g. '2018')"></asp:TextBox>
                        <asp:Button ID="btnFilter" runat="server" class="btn btn-success" Text="Filter By Year" OnClick="btnFilter_Click" />
                        <asp:RegularExpressionValidator ValidationExpression="^\d{4}$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid year (e.g. '2018')" ControlToValidate="txtYear" />
                    </div>
                    <br />


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
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
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
                                                FilterExpression="DateCreated LIKE '%{0}%'"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'MM/dd/yyyy') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID
                                                    WHERE InvoiceStatus = 'Unpaid'
                                                    GROUP BY i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'MM/dd/yyyy'), ProgramName, OrganizationName, ProgramCost, InvoiceStatus"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID "
                                                DeleteCommand="DELETE from dbo.AssignInvoice where NewProgramID = @NewProgramID">
                                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>
                                                <DeleteParameters>
                                                    <asp:Parameter Name="NewProgramID" Type="String" />
                                                </DeleteParameters>

                                            </asp:SqlDataSource>
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button4" />

                            </Triggers>
                        </asp:UpdatePanel>
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
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
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
                                                FilterExpression="DateCreated LIKE '%{0}%'"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'MM/dd/yyyy') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID
                                                    WHERE InvoiceStatus = 'Paid'"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button5" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button5" />

                            </Triggers>
                        </asp:UpdatePanel>
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
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
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
                                                FilterExpression="DateCreated LIKE '%{0}%'"
                                                SelectCommand="SELECT i.InvoiceID, InvoiceNumber, FORMAT(DateCreated, 'MM/dd/yyyy') as 'DateCreated', ProgramName, OrganizationName, ProgramCost, InvoiceStatus
                                                    FROM 
                                                    dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID 
                                                    inner join dbo.AssignInvoice ai on ai.NewProgramID = np.NewProgramID
                                                    inner join dbo.Address a on a.AddressID = np.AddressID
                                                    inner join dbo.Organization o on o.AddressID = a.AddressID
													inner join dbo.Invoice i on i.InvoiceID = ai.InvoiceID"
                                                UpdateCommand="UPDATE dbo.Invoice set InvoiceStatus = @InvoiceStatus where InvoiceID = @InvoiceID ">
                                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                </UpdateParameters>

                                            </asp:SqlDataSource>

                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel30" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button6" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button6" />

                            </Triggers>
                        </asp:UpdatePanel>
                                            <asp:Button id="Button3" class=" btn btn-success" runat="server" OnClick="Button3_Click" Text="Export To Excel"></asp:Button>
                                            <br />
                                            <br />

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <br />
    <br />
    <br />
    <script>$("button").click(function () {
            var columns_container = $(".dynamic-columns");
            if (!columns_container.hasClass("expanded")) {
                $(".dynamic-columns .col:first").removeClass("col-xs-2");
                $(".dynamic-columns .col:first").addClass("col-xs-1");

                $(".dynamic-columns .col:last-child").removeClass("col-xs-8");
                $(".dynamic-columns .col:last-child").addClass("col-xs-9");
                columns_container.toggleClass("expanded");
            }
            else {
                $(".dynamic-columns .col:first").removeClass("col-xs-1");
                $(".dynamic-columns .col:first").addClass("col-xs-2");

                $(".dynamic-columns .col:last-child").removeClass("col-xs-9");
                $(".dynamic-columns .col:last-child").addClass("col-xs-8");
                columns_container.toggleClass("expanded");
            }
        });</script>




    <div class="row">
        <div class="col-md-6 mx-auto text-center">
            <h1 class="CardTitle">Payments</h1>
        </div>
    </div>
    <br />
    <div class="">
        <div class="row mx-auto d-flex justify-content-center  ">
            <ul class="nav nav-tabs  col-xl-7 col-lg-12 col-md-12 col-s-12 " style="padding-left: 15px; border-bottom: none;" id="myTab" role="tablist">
                <li class="nav-item ">
                    <a style="margin-right: 5px; color: black;" class="nav-link active " id="homee-tab" data-toggle="tab" href="#All" role="tab" aria-controls="homee" aria-selected="true">All</a>
                </li>
                <li class="nav-item ">
                    <a style="margin-right: 5px; color: black;" class="nav-link" id="home-tab" data-toggle="tab" href="#Outstanding" role="tab" aria-controls="home" aria-selected="false">Outstanding</a>
                </li>
                <li class="nav-item ">
                    <a style="margin-right: 5px; color: black;" class="nav-link " id="profile-tab" data-toggle="tab" href="#Fulfilled" role="tab" aria-controls="profile" aria-selected="false">Fulfilled</a>
                </li>
                <asp:textbox id="txtYear" runat="server" width="25%" class="form-control" placeholder="Filter By Year (e.g. '2018')"></asp:textbox>
                <asp:button id="btnFilter" runat="server" class="btn btn-success" text="Filter By Year" onclick="btnFilter_Click" />
                <asp:Button runat="server" class="btn btn-primary" id="dateClear" OnClick="dateClear_Click" Text="Clear Filter"/>
                <asp:regularexpressionvalidator validationexpression="^\d{4}$" id="RegularExpressionValidator1" runat="server" errormessage="Please enter a valid year (e.g. '2018')" controltovalidate="txtYear" />
            </ul>

        </div>
        
        <div class="tab-content">
            <div id="All" class="tab-pane fade show active">
                <div class="table-responsive">

                    <div class="row mx-auto d-flex justify-content-center ">
                        <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">

                            <asp:UpdatePanel runat="server" ID="updateAllInvoices">
                                <ContentTemplate>


                            <asp:gridview id="allInvGrid" runat="server" headerstyle-forecolor="black" datakeynames="InvoiceID" autogenerateeditbutton="True" autogeneratecolumns="False" datasourceid="programSource" allowpaging="True" allowsorting="True">
                                                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:TemplateField HeaderText="Payment Type" SortExpression="PaymentType">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="ddlPayTypeAll" runat="server" SelectedValue='<%# Bind ("PaymentType") %>'>
                                                                        <asp:ListItem Value="TBD">TBD</asp:ListItem>
                                                                        <asp:ListItem Value="Cash">Cash</asp:ListItem>
                                                                        <asp:ListItem Value="Check">Check</asp:ListItem>
                                                                        <asp:ListItem Value="Credit/Debit">Credit/Debit</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblPayTypeAll" runat="server" Text='<%# Bind("PaymentType") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="TotalCost" HeaderText="Total Cost" DataFormatString="${0:###,###,###.00}" SortExpression="TotalCost" ReadOnly="true" />
                                                            <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>' OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("InvoiceStatus") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:gridview>

                                    </ContentTemplate>

                            </asp:UpdatePanel>


                            <asp:sqldatasource id="programSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                filterexpression="Convert(DateCreated, 'System.String') LIKE '%{0}%'"
                                selectcommand="SELECT        Invoice.InvoiceID, Invoice.InvoiceNumber, Payment.PaymentType, Invoice.DateCreated, Program.ProgramName, Organization.OrganizationName, Invoice.TotalCost, Invoice.InvoiceStatus
                        
FROM            Program INNER JOIN
                         NewProgram ON Program.ProgramID = NewProgram.ProgramID INNER JOIN
                         AssignInvoice ON NewProgram.NewProgramID = AssignInvoice.NewProgramID FULL OUTER JOIN
                         Invoice ON AssignInvoice.AssignInvoiceID = Invoice.InvoiceID FULL OUTER JOIN 
                         Payment ON Invoice.InvoiceID = Payment.InvoiceID LEFT OUTER JOIN
                         Organization ON Payment.OrganizationID = Organization.OrganizationID"
                                UpdateCommandType="StoredProcedure"
                                updatecommand="updatePaymentInvoice">
                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                    <asp:Parameter Name="PaymentType" Type="String" />
                                                </UpdateParameters>

                                            </asp:sqldatasource>

                            <br />

                            <asp:updatepanel id="UpdatePanel10" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button3" />

                            </Triggers>
                        </asp:updatepanel>
                            <asp:button id="Button6" class=" btn btn-success" runat="server" onclick="Button2_Click" text="Export To Excel"></asp:button>


                        </div>
                    </div>
                </div>
            </div>
            <div id="Outstanding" class="tab-pane fade">
                <div class="table-responsive">

                    <div class="row mx-auto d-flex justify-content-center ">
                        <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                            <asp:updatepanel id="outstandingPan" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="outInvGrid" HeaderStyle-ForeColor="black" runat="server" DataKeyNames="InvoiceID" EnableSortingAndPagingCallbacks="false" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="outstandingSource" AllowPaging="True" AllowSorting="True">
                                                       <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:TemplateField HeaderText="Payment Type" SortExpression="PaymentType">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="ddlPayTypeOut" runat="server" SelectedValue='<%# Bind ("PaymentType") %>'>
                                                                        <asp:ListItem Value="TBD">TBD</asp:ListItem>
                                                                        <asp:ListItem Value="Cash">Cash</asp:ListItem>
                                                                        <asp:ListItem Value="Check">Check</asp:ListItem>
                                                                        <asp:ListItem Value="Credit/Debit">Credit/Debit</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblPayTypeOut" runat="server" Text='<%# Bind("PaymentType") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="TotalCost" HeaderText="Total Cost" DataFormatString="${0:###,###,###.00}" SortExpression="TotalCost" ReadOnly="true" />
                                                            
                                                            <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>' OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
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
                                            </asp:updatepanel>
                            <asp:sqldatasource id="outstandingSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                filterexpression="Convert(DateCreated, 'System.String') LIKE '%{0}%'"
                                selectcommand="SELECT        Invoice.InvoiceID, Invoice.InvoiceNumber, Payment.PaymentType, Invoice.DateCreated, Program.ProgramName, Organization.OrganizationName, Invoice.TotalCost, Invoice.InvoiceStatus
                        
FROM            Program INNER JOIN
                         NewProgram ON Program.ProgramID = NewProgram.ProgramID INNER JOIN
                         AssignInvoice ON NewProgram.NewProgramID = AssignInvoice.NewProgramID FULL OUTER JOIN
                         Invoice ON AssignInvoice.AssignInvoiceID = Invoice.InvoiceID FULL OUTER JOIN 
                         Payment ON Invoice.InvoiceID = Payment.InvoiceID LEFT OUTER JOIN
                         Organization ON Payment.OrganizationID = Organization.OrganizationID
WHERE InvoiceStatus = 'Unpaid'"
                                UpdateCommandType="StoredProcedure"
                                updatecommand="updatePaymentInvoice">             
                                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                    <asp:Parameter Name="PaymentType" Type="String" />
                                                </UpdateParameters>
                                                <DeleteParameters>
                                                    <asp:Parameter Name="NewProgramID" Type="String" />
                                                </DeleteParameters>

                                            </asp:sqldatasource>
                            <br />
                            <br />
                            <asp:updatepanel id="UpdatePanel20" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button1" />

                            </Triggers>
                        </asp:updatepanel>
                            <asp:button id="Button2" class=" btn btn-success" runat="server" onclick="Button2_Click" text="Export To Excel"></asp:button>


                        </div>
                    </div>
                </div>
            </div>
            <div id="Fulfilled" class="tab-pane fade">
                <div class="table-responsive">

                    <div class="row mx-auto d-flex justify-content-center ">
                        <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                            <asp:updatepanel id="paidPan" runat="server">
                                                <ContentTemplate>
                                                    <asp:GridView ID="paidGrid" runat="server" HeaderStyle-ForeColor="black" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="paidSource" AllowPaging="True" AllowSorting="True">
                                                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                        <Columns>
                                                            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" SortExpression="InvoiceID" ReadOnly="true" Visible="False" />
                                                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" ReadOnly="true" />
                                                            <asp:TemplateField HeaderText="Payment Type" SortExpression="PaymentType">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="ddlPayType" runat="server" SelectedValue='<%# Bind ("PaymentType") %>'>
                                                                        <asp:ListItem Value="TBD">TBD</asp:ListItem>
                                                                        <asp:ListItem Value="Cash">Cash</asp:ListItem>
                                                                        <asp:ListItem Value="Check">Check</asp:ListItem>
                                                                        <asp:ListItem Value="Credit/Debit">Credit/Debit</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblPayType" runat="server" Text='<%# Bind("PaymentType") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" ReadOnly="true" />
                                                            <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName" ReadOnly="true" />
                                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" ReadOnly="true" />
                                                            <asp:BoundField DataField="TotalCost" HeaderText="Total Cost" DataFormatString="${0:###,###,###.00}" SortExpression="TotalCost" ReadOnly="true" />
                                                            <asp:TemplateField HeaderText="Payment Status" SortExpression="InvoiceStatus">
                                                                <EditItemTemplate>
                                                                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind ("InvoiceStatus") %>' OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                                                        <asp:ListItem>Unpaid</asp:ListItem>
                                                                        <asp:ListItem>Paid</asp:ListItem>
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
                                            </asp:updatepanel>
                            <asp:sqldatasource id="paidSource" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                                filterexpression="Convert(DateCreated, 'System.String') LIKE '%{0}%'"
                                selectcommand="SELECT        Invoice.InvoiceID, Invoice.InvoiceNumber, Payment.PaymentType, Invoice.DateCreated, Program.ProgramName, Organization.OrganizationName, Invoice.TotalCost, Invoice.InvoiceStatus
                        
FROM            Program INNER JOIN
                         NewProgram ON Program.ProgramID = NewProgram.ProgramID INNER JOIN
                         AssignInvoice ON NewProgram.NewProgramID = AssignInvoice.NewProgramID FULL OUTER JOIN
                         Invoice ON AssignInvoice.AssignInvoiceID = Invoice.InvoiceID FULL OUTER JOIN 
                         Payment ON Invoice.InvoiceID = Payment.InvoiceID LEFT OUTER JOIN
                         Organization ON Payment.OrganizationID = Organization.OrganizationID
WHERE InvoiceStatus = 'Paid'"
                                UpdateCommandType="StoredProcedure"
                                updatecommand="updatePaymentInvoice">
                                                <FilterParameters>
                                                    <asp:ControlParameter Name="DateCreated" ControlID="txtYear" PropertyName="Text" />
                                                </FilterParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="InvoiceStatus" Type="String" />
                                                    <asp:Parameter Name="InvoiceID" Type="String" />
                                                    <asp:Parameter Name="PaymentType" Type="String" />
                                                </UpdateParameters>
                                            </asp:sqldatasource>

                            <br />
                            <br />

                            <asp:updatepanel id="UpdatePanel30" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button4" class="btn btn-success" runat="server" Text="Refresh Table" OnClick="gridRefresh_Click" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button4" />

                            </Triggers>
                        </asp:updatepanel>
                            <asp:button id="Button5" class=" btn btn-success" runat="server" onclick="Button3_Click" text="Export To Excel"></asp:button>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

