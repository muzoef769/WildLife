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
                    <thead >
                        <tr class="table-success">
                            <td>
                                <asp:Button href="#" ID="btnJan" runat="server" Text="Jan" OnClick="btnJan_Click" Style="color: black; width:30px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>
                                <asp:Button href="#" ID="btnFeb" runat="server" Text="Feb" OnClick="btnFeb_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>
                                <asp:Button href="#" ID="btnMar" runat="server" Text="Mar" OnClick="btnMar_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                   
                                <asp:Button href="#" ID="btnApr" runat="server" Text="Apr" OnClick="btnApr_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                  
                                <asp:Button href="#" ID="btnMay" runat="server" Text="May" OnClick="btnMay_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                  
                                <asp:Button href="#" ID="btnJun" runat="server" Text="Jun" OnClick="btnJun_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                  
                                <asp:Button href="#" ID="btnJul" runat="server" Text="Jul" OnClick="btnJul_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                  
                                <asp:Button href="#" ID="btnAug" runat="server" Text="Aug" OnClick="btnAug_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                 
                                <asp:Button href="#" ID="btnSep" runat="server" Text="Sep" OnClick="btnSep_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                 
                                <asp:Button href="#" ID="btnOct" runat="server" Text="Oct" OnClick="btnOct_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                  
                                <asp:Button href="#" ID="btnNov" runat="server" Text="Nov" OnClick="btnNov_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>
                            <td>                                                                                                                   
                                <asp:Button href="#" ID="btnDec" runat="server" Text="Dec" OnClick="btnDec_Click" scope="col" Style="color: black; width:35px; text-decoration: none; background-color: Transparent; background-repeat: no-repeat; border: none; cursor: pointer; overflow: hidden;"></asp:Button></td>

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
                    <asp:GridView ID="monthGrid" runat="server" HeaderStyle-ForeColor="black" Class="  table table-condensed table-bordered table-hover AnimalCard" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                     <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                        <Columns>
                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                            <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" />
                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                            <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                            <asp:BoundField DataField="TotalCost" DataFormatString="${0:###,###,###.00}" HeaderText="Amount" SortExpression="TotalCost" />

                        </Columns>

                      
                    </asp:GridView>
                </div>
            </div>
        </div>




        <div class="row mx-auto d-flex justify-content-center ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                <asp:GridView ID="GridView1" Class="  table table-condensed table-bordered table-hover AnimalCard" runat="server" HeaderStyle-ForeColor="black" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                 <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    <Columns>
                        <asp:BoundField DataField="TotalAmount" DataFormatString="${0:###,###,###.00}" HeaderText="Total Amount" SortExpression="TotalAmount" />
                    </Columns>
                  
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT i.[InvoiceNumber], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(i.[DateCreated]) = @month ORDER BY DateCreated ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT SUM([TotalCost]) as 'TotalAmount' FROM dbo.[Invoice] WHERE MONTH([DateCreated]) = @month">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <%-- <asp:Button ID="Button2" runat="server" CssClass=" PayButton" Text="Export To Excel" OnClick="Button2_Click" />--%>
            </div>
        </div>
    </div>

    <div class="table-responsive">
        <div class="row ">
            <div class="col-md-12">
                <asp:Button ID="Button2" class=" btn btn-success mx-auto d-flex justify-content-center" Text="Export To Excel" runat="server" OnClick="Button2_Click"></asp:Button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3 id="annTitle" class=" ProgramCardTitle mx-auto d-flex justify-content-center table-responsive" style="margin-top: 15px; color: white;">Annual View</h3>
            </div>
        </div>
        <div class="row mx-auto d-flex justify-content-center ">
            <div id="ann" class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">

                <asp:GridView ID="annualGrid" runat="Server" Class="   table table-condensed table-bordered table-hover AnimalCard" HeaderStyle-ForeColor="black" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                     <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    <Columns>
                        <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" SortExpression="InvoiceNumber" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" DataFormatString="${0:###,###,###.00}" HeaderText="Amount" SortExpression="TotalCost" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                    SelectCommand="SELECT i.[InvoiceNumber], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID ORDER BY DateCreated "></asp:SqlDataSource>

                <div class="row ">
                <div class="col-md-12">
                    <asp:Button ID="Button3" class=" btn btn-success mx-auto d-flex justify-content-center" runat="server" Text="Export To Excel" OnClick="Button1_Click"></asp:Button>
                    <br /><br />
                </div>
            </div>
            </div>
            
        </div>
       
    </div>





</asp:Content>

