<%@ Page Title="Payment Records" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PaymentRecords.aspx.cs" Inherits="PaymentRecords" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">

        <div class="row">


            <div class="container-fluid ProgramContainer">

                <div class="card mx-auto ProgramCard" style="opacity: .8;">
                    <div class="card-body">
                        <div id="monthlyReports">
                            <h1 id="payTitle" class=" ProgramCardTitle d-flex justify-content-center ">Payment Records</h1>
                            <div id="monthButtons" class="ProgramShort d-flex justify-content-center">
                                <asp:Button class="btn btn-primary" ID="btnJan" runat="server" Text="January" OnClick="btnJan_Click" />
                                <asp:Button class="btn btn-primary" ID="btnFeb" runat="server" Text="February" OnClick="btnFeb_Click" />
                                <asp:Button class="btn btn-primary" ID="btnMar" runat="server" Text="March" OnClick="btnMar_Click" />
                                <asp:Button class="btn btn-primary" ID="btnApr" runat="server" Text="April" OnClick="btnApr_Click" />
                                <asp:Button class="btn btn-primary" ID="btnMay" runat="server" Text="May" OnClick="btnMay_Click" />
                                <asp:Button class="btn btn-primary" ID="btnJun" runat="server" Text="June" OnClick="btnJun_Click" />
                                <asp:Button class="btn btn-primary" ID="btnJul" runat="server" Text="July" OnClick="btnJul_Click" />
                                <asp:Button class="btn btn-primary" ID="btnAug" runat="server" Text="August" OnClick="btnAug_Click" />
                                <asp:Button class="btn btn-primary" ID="btnSep" runat="server" Text="September" OnClick="btnSep_Click" />
                                <asp:Button class="btn btn-primary" ID="btnOct" runat="server" Text="October" OnClick="btnOct_Click" />
                                <asp:Button class="btn btn-primary" ID="btnNov" runat="server" Text="November" OnClick="btnNov_Click" />
                                <asp:Button class="btn btn-primary" ID="btnDec" runat="server" Text="December" OnClick="btnDec_Click" />

                            </div>
                            <div id="monthGrids">
                                <h3 id="monTitle" class=" ProgramCardTitle d-flex justify-content-center " style="margin-top: 15px;">Monthly View</h3>
                                <div id="month" class="ProgramShort d-flex justify-content-center">
                                    <asp:GridView ID="monthGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                                        <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                        <Columns>
                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                                            <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                                            <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                                            <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                                        <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                        <Columns>
                                            <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" SortExpression="TotalAmount" />
                                        </Columns>
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT p.[InvoiceID], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(i.[DateCreated]) = @month ORDER BY [InvoiceID] ">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT SUM([TotalCost]) as 'TotalAmount' FROM dbo.[Invoice] WHERE MONTH([DateCreated]) = @month">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    
                                    <asp:Button ID="Button2" runat="server" Text="Export To Excel" OnClick="Button2_Click" />

                                </div>
                                <h3 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center" style="margin-top: 15px;">Annual View</h3>
                                <div id="ann" class="ProgramShort d-flex justify-content-center">
                                    <asp:GridView ID="annualGrid" runat="Server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True">
                                        <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                                        <Columns>
                                            <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                                            <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                                            <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                                            <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                                            <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                                        SelectCommand="SELECT p.[InvoiceID], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID ORDER BY [InvoiceID] "></asp:SqlDataSource>

                                    <asp:Button ID="Button1" runat="server" Text="Export To Excel" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

