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
            <asp:button class="btn btn-primary" id="btnJan" runat="server" text="January" onclick="btnJan_Click"/>
            <asp:button class="btn btn-primary" id="btnFeb" runat="server" text="February" onclick="btnFeb_Click" />
            <asp:button class="btn btn-primary" id="btnMar" runat="server" text="March" onclick="btnMar_Click" />
            <asp:button class="btn btn-primary" id="btnApr" runat="server" text="April" onclick="btnApr_Click" />
            <asp:button class="btn btn-primary" id="btnMay" runat="server" text="May" onclick="btnMay_Click" />
            <asp:button class="btn btn-primary" id="btnJun" runat="server" text="June" onclick="btnJun_Click" />
            <asp:button class="btn btn-primary" id="btnJul" runat="server" text="July" onclick="btnJul_Click" />
            <asp:button class="btn btn-primary" id="btnAug" runat="server" text="August" onclick="btnAug_Click" />
            <asp:button class="btn btn-primary" id="btnSep" runat="server" text="September" onclick="btnSep_Click" />
            <asp:button class="btn btn-primary" id="btnOct" runat="server" text="October" onclick="btnOct_Click" />
            <asp:button class="btn btn-primary" id="btnNov" runat="server" text="November" onclick="btnNov_Click" />
            <asp:button class="btn btn-primary" id="btnDec" runat="server" text="December" onclick="btnDec_Click" />
        </div>
        <div id="monthGrids">
            <h3 id="monTitle" class=" ProgramCardTitle d-flex justify-content-center " style="margin-top: 15px;">Monthly View</h3>
            <div id="month" class="ProgramShort d-flex justify-content-center">
                <asp:GridView ID="janGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True" >
                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                <Columns>
                    <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                    <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                    <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                    <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                    <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                </Columns>
                </asp:GridView>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" AllowPaging="True" AllowSorting="True" >
                    <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                <Columns>
                    <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" SortExpression="TotalAmount" />
                </Columns>
                </asp:GridView>

                <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(i.[DateCreated]) = @month ORDER BY [InvoiceID] ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:sqldatasource>
                <asp:sqldatasource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT SUM([TotalCost]) as 'TotalAmount' FROM dbo.[Invoice] WHERE MONTH([DateCreated]) = @month">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="month" Type="Int32" />
                    </SelectParameters>
                </asp:sqldatasource>
                
            </div>
            <h3 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center" style="margin-top: 15px;">Annual View</h3>
            <div id="ann" class="ProgramShort d-flex justify-content-center">
                <asp:gridview id="annualGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="DateCreated" HeaderText="Date Created" SortExpression="DateCreated" />
                    <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                    <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                    <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                    <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
            </Columns>
            </asp:gridview>
            <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                        selectcommand="SELECT p.[InvoiceID], FORMAT(DateCreated, 'yyyy-MM-dd') as 'DateCreated', o.[OrganizationName], p.[PaymentType], i.[TotalCost] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID ORDER BY [InvoiceID] ">

                </asp:sqldatasource>
                
            </div>
            <%--<div id="feb" class="collapse">
                <h3>February</h3>
                <asp:gridview id="febGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource3" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True" cellpadding="4" forecolor="#000000" gridlines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '2' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="mar" class="collapse">
                <h3>March</h3>
                <asp:gridview id="marGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource4" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource4" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '3' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="apr" class="collapse">
                <h3>April</h3>
                <asp:gridview id="aprGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource5" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource5" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '4' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="may" class="collapse">
                <h3>May</h3>
                <asp:gridview id="mayGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource6" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource6" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '5' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="jun" class="collapse">
                <h3>June</h3>
                <asp:gridview id="junGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource7" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource7" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '6' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="jul" class="collapse">
                <h3>July</h3>
                <asp:gridview id="julGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource8" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
                   <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource8" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '7' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="aug" class="collapse">
                <h3>August</h3>
                <asp:gridview id="augGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource9" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                        <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource9" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '8' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="sep" class="collapse">
                <h3>September</h3>
                <asp:gridview id="sepGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource10" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True"  >
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource10" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '9' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="oct" class="collapse">
                <h3>October</h3>
                <asp:gridview id="octGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource11" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                        <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource11" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '10' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="nov" class="collapse">
                <h3>November</h3>
                <asp:gridview id="novGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource12" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                       <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource12" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '11' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>
            <div id="dec" class="collapse">
                <h3>December</h3>
                <asp:gridview id="decGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource13" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
            <AlternatingRowStyle BackColor="#CCCCFF" BorderColor="Black" BorderStyle="None" />
                   <Columns>
                        <asp:BoundField DataField="InvoiceID" HeaderText="Invoice #" SortExpression="InvoiceID" />
                        <asp:BoundField DataField="OrganizationName" HeaderText="Organization" SortExpression="OrganizationName" />
                        <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Amount Due" SortExpression="TotalCost" />
                        <asp:BoundField DataField="InvoiceStatus" HeaderText="Status" SortExpression="InvoiceStatus" />
                        <asp:BoundField DataField="DateCompleted" HeaderText="Date Completed" SortExpression="DateCompleted" />
                        <asp:BoundField DataField="LastUpdated" HeaderText="Last Updated" SortExpression="LastUpdated" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="Last Updated By" SortExpression="LastUpdatedBy" />
                   </Columns>
                </asp:gridview>

                <asp:sqldatasource id="SqlDataSource13" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '12' ORDER BY [InvoiceID] "></asp:sqldatasource>

            </div>--%>
            
        </div>
    </div>
      </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

