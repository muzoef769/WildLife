﻿<%@ Page Title="Payment Records" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PaymentRecords.aspx.cs" Inherits="PaymentRecords" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
<div class="main">

<div class="row">


<div class="container-fluid ProgramContainer">

<div class="card mx-auto ProgramCard" style="opacity: .8;">
  <div class="card-body">
    <div id="monthlyReports">
        <h1 id="payTitle" class=" ProgramCardTitle d-flex justify-content-center ">Payment Records</h1>
        <div id="monthButtons" class="ProgramShort d-flex justify-content-center">
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#jan" id="btnJan" runat="server" text="January" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#feb" id="btnFeb" runat="server" text="February" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#mar" id="btnMar" runat="server" text="March" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#apr" id="btnApr" runat="server" text="April" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#may" id="btnMay" runat="server" text="May" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#jun" id="btnJun" runat="server" text="June" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#jul" id="btnJul" runat="server" text="July" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#aug" id="btnAug" runat="server" text="August" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#sep" id="btnSep" runat="server" text="September" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#oct" id="btnOct" runat="server" text="October" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#nov" id="btnNov" runat="server" text="November" onclientclick="return false" />
            <asp:button class="btn btn-primary" data-toggle="collapse" data-target="#dec" id="btnDec" runat="server" text="December" onclientclick="return false" />
            <br />
            <asp:button class="btn btn-danger"  data-toggle="collapse" data-target="#ann" id="btn2018" runat="server" text="Annual Report" onclientclick="return false" />

        </div>
        <div id="monthGrids">
            <div id="ann" class="collapse">
                <h3>Annual Report</h3>
                <asp:gridview id="annualGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True">
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
            <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:connString %>"
                        selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted], p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID ORDER BY [InvoiceID]">

                </asp:sqldatasource>
                
            </div>
            <div id="jan" class="collapse">
                <h3>January</h3>
                <asp:gridview id="janGrid" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource2" enablesortingandpagingcallbacks="true" allowpaging="True" allowsorting="True" cellpadding="4" forecolor="#000000" gridlines="None">
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

                <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:connString %>" selectcommand="SELECT p.[InvoiceID], o.[OrganizationName], p.[PaymentType], i.[TotalCost], i.[InvoiceStatus], p.[DateCompleted],p.[LastUpdated], p.[LastUpdatedBy] FROM [Payment] p inner join [Organization] o on p.OrganizationID = o.OrganizationID inner join [Invoice] i on i.InvoiceID = p.InvoiceID WHERE MONTH(p.[DateCompleted]) = '1' ORDER BY [InvoiceID] "></asp:sqldatasource>
            </div>
            <div id="feb" class="collapse">
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

            </div>
            
        </div>
    </div>
      </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

