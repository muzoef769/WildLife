<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">

        <div class="container-fluid PaymentContainer">

            <div class="card mx-auto ProgramCard" style="opacity: .8;">
                <div class="card-body">
                    <div class="row mr-auto">
                        <asp:Button ID="gridRefresh" class="btn btn-refresh btn-lg" runat="server" Text="Refresh Tables" onclick="gridRefresh_Click"/>
                        
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
      <h5 class="mb-0">
        <button class="btn " type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Outstanding Invoices
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
           <div class="col-12 PayTable mx-auto d-flex justify-content-center table-responsive-md table table-condensed table-bordered table-hover">
        <div id="outInvoices" style="overflow-x: auto;">
            <br />
                                <asp:GridView ID="outInvGrid"  HeaderStyle-ForeColor="black" runat="server" DataKeyNames="InvoiceID" EnableSortingAndPagingCallbacks="false" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="outstandingSource" AllowPaging="True" AllowSorting="True" >
                                   
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
                     <br />
                    <button id="Button1" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button>
            <br />
            <br />

      </div></div>       </div>
                        </div>
                    
          </div>
  
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Fulfilled Invoices
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
      <div class="col-md-12 PayTable mx-auto d-flex justify-content-center  table-responsive-md table table-condensed table-bordered table-hover ">
                            <div id="paidInvoices" style="overflow-x: auto;">
            <br />

                                <asp:GridView ID="paidGrid" runat="server"  HeaderStyle-ForeColor="black" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="paidSource" AllowPaging="True" AllowSorting="True">
                                  
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
            <br />
                            
                    <button id="Button2" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button>
            <br />
            <br />

</div>
                        </div>
                    </div>

      </div>     
      </div>
   
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         All Invoices
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
       <div class="col-md-12 PayTable mx-auto d-flex justify-content-center table-responsive-md table table-condensed table-bordered table-hover ">
                            <div id="allInvoices" style="overflow-x: auto;">
                                <br />
                                <asp:GridView ID="allInvGrid" runat="server"  HeaderStyle-ForeColor="black" DataKeyNames="InvoiceID" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataSourceID="programSource" AllowPaging="True" AllowSorting="True">
                                   
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
                          
            <br />
                    
                    <button id="Button3" class=" btn btn-primary PayButton2" runat="server">Export To Excel</button> 
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
   
    </div> </div>
            </div>
        </div>
</asp:Content>

