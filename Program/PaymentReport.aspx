<%@ Page Title="Payment Report" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PaymentReport.aspx.cs" Inherits="PaymentReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="main">


        <br />
        <br />
        <br />

        <div class="row">

            <div class="col-md-12">
                <h1 id="payTitle" class=" CardTitle mx-auto d-flex justify-content-center ">Payment Records</h1>
            </div>
        </div>


        <div class="table-responsive ">


            <div class="row mx-auto d-flex justify-content-center ">
                <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                    <table id="monthlyReports" class="table">
                        <thead>
                            <tr class="table-success">
                                <td>
                                    <asp:button href="#" id="btnJan" runat="server" text="Jan" onclick="btnJan_Click" style="color: black; width: 30px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnFeb" runat="server" text="Feb" onclick="btnFeb_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnMar" runat="server" text="Mar" onclick="btnMar_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnApr" runat="server" text="Apr" onclick="btnApr_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnMay" runat="server" text="May" onclick="btnMay_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnJun" runat="server" text="Jun" onclick="btnJun_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnJul" runat="server" text="Jul" onclick="btnJul_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnAug" runat="server" text="Aug" onclick="btnAug_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnSep" runat="server" text="Sep" onclick="btnSep_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnOct" runat="server" text="Oct" onclick="btnOct_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnNov" runat="server" text="Nov" onclick="btnNov_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>
                                <td>
                                    <asp:button href="#" id="btnDec" runat="server" text="Dec" onclick="btnDec_Click" scope="col" style="color: black; width: 35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:button>
                                </td>

                            </tr>
                        </thead>


                    </table>

                </div>
            </div>
        </div>

        <div id="monthButtons" class="ProgramShort d-flex justify-content-center">
        </div>

        <br />
        <div class="row ml-auto">

            <div class="col-xl-6 col-lg-6 col-md-4 col-sm-2"></div>
            <div class="col-xl-6 col-lg-6 col-md-8 col-sm-10">
            </div>
        </div>



        <div class="row">
            <div id="monthGrids" class="col-md-12">
                <h3 id="monTitle" class="  ProgramCardTitle d-flex justify-content-center table-responsive" style="margin-top: 15px; color: white;">Monthly View</h3>
            </div>
        </div>

        <div class="row mx-auto d-flex justify-content-center table-responsive ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                <div id="month">
                    <asp:gridview id="monthGrid" runat="server" headerstyle-forecolor="black" class="  table table-condensed table-bordered table-hover AnimalCard" autogeneratecolumns="False" datasourceid="SqlDataSource2" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                     <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                        <Columns>
                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" />
                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                            <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                            <asp:BoundField DataField="TotalCost" DataFormatString="${0:###,###,###.00}" HeaderText="Amount" SortExpression="TotalCost" />

                        </Columns>

                      
                    </asp:gridview>
                </div>
            </div>
        </div>




        <div class="row mx-auto d-flex justify-content-center ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                <asp:gridview id="GridView1" class="  table table-condensed table-bordered table-hover AnimalCard" runat="server" headerstyle-forecolor="black" autogeneratecolumns="False" datasourceid="SqlDataSource3" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                 <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    <Columns>
                        <asp:BoundField DataField="TotalAmount" DataFormatString="${0:###,###,###.00}" HeaderText="Total Amount" SortExpression="TotalAmount" />
                    </Columns>
                  
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT i.[InvoiceNumber], Format(DateCreated, 'MM/dd/yyyy') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(i.[DateCreated]) = @month ORDER BY DateCreated ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:sqldatasource>
                <asp:sqldatasource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT SUM([TotalCost]) as 'TotalAmount' FROM dbo.[Invoice] WHERE MONTH([DateCreated]) = @month">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:sqldatasource>
                <br />
                <%-- <asp:Button ID="Button2" runat="server" CssClass=" PayButton" Text="Export To Excel" OnClick="Button2_Click" />--%>
            </div>
        </div>
    </div>

    <div class="table-responsive">
        <div class="row ">
            <div class="col-md-12">
                <asp:button id="Button2" class=" btn btn-success mx-auto d-flex justify-content-center" text="Export To Excel" runat="server" onclick="Button2_Click"></asp:button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3 id="annTitle" class=" ProgramCardTitle mx-auto d-flex justify-content-center table-responsive" style="margin-top: 15px; color: white;">Annual View</h3>
            </div>
        </div>
        <div class="row mx-auto d-flex justify-content-center ">
            <div id="ann" class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">

                <asp:gridview id="annualGrid" runat="Server" class="   table table-condensed table-bordered table-hover AnimalCard" headerstyle-forecolor="black" autogeneratecolumns="False" datasourceid="SqlDataSource1" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                     <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    <Columns>
                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" DataFormatString="${0:###,###,###.00}" HeaderText="Amount" SortExpression="TotalCost" />
                    </Columns>
                    
                </asp:gridview>
                <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                    selectcommand="SELECT i.[InvoiceNumber], Format(DateCreated, 'MM/dd/yyyy') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID ORDER BY DateCreated "></asp:sqldatasource>

                <div class="row ">
                    <div class="col-md-12">
                        <asp:button id="Button3" class=" btn btn-success mx-auto d-flex justify-content-center" runat="server" text="Export To Excel" onclick="Button1_Click"></asp:button>
                        <br />
                        <br />
                    </div>
                </div>
            </div>

        </div>

    </div>





</asp:Content>

