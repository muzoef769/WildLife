<%@ Page Title="Simple Reports" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AnimalReport.aspx.cs" Inherits="AnimalReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">
        <div class="row AnimalNav d-flex justify-content-center ">
            <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle" style="padding-top: 0%;">
                <a id="annBtn" class="AnimalLi nav-link font-weight-bold" href="#">Animal Attendance</a>

            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a id="monBtn" class="AnimalLi nav-link font-weight-bold" href="#">Animal Participation</a>
            </div>
        </div>
        <div class="row">
            <div class="container-fluid ProgramContainer">

                <div class="card mx-auto  ProgramCard" style="opacity: 0.9;">
                    <%--<div id="ann" class="card-body">
                        <h1 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center ">Annual Report</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView41" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource46" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Kids" HeaderText="Total Kids" SortExpression="Total Kids" />
                                    <asp:BoundField DataField="Total Adults" HeaderText="Total Adults" SortExpression="Total Adults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource46" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select sum(totalKids) as 'Total Kids', sum(totalAdults) as 'Total Adults', (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram "></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView43" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource47" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Total Programs" HeaderText="Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView42" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource45" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource45" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource47" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select ProgramType, count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID GROUP BY ProgramType"></asp:SqlDataSource>

                        </div>
                        <hr />
                        <h1 id="monTitle" class=" ProgramCardTitle d-flex justify-content-center">Monthly Report</h1>
                    </div>
                    <div id="jan" class="card-body" style="display: none;">
                        <h1 id="janTitle" class=" ProgramCardTitle d-flex justify-content-center ">January</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="janGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="janAttSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="janGridTotal" runat="server" AutoGenerateColumns="False" DataSourceID="janTotalSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="January Total" HeaderText="Total Attendance" SortExpression="January Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="janTotalSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'January Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '1' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="janAttSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '1' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="janGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="janCountSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="janCountTotal" runat="server" AutoGenerateColumns="False" DataSourceID="janCountTotalSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="janCountTotalSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '1' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="janCountSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '1' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="feb" class="card-body" style="display: none;">
                        <h1 id="febTitle" class=" ProgramCardTitle d-flex justify-content-center ">February</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="febGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="febAttTotal" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="febGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="febCountTotal" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="mar" class="card-body" style="display: none;">
                        <h1 id="marTitle" class=" ProgramCardTitle d-flex justify-content-center ">March</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '3' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '3' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '3' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '3' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="apr" class="card-body" style="display: none;">
                        <h1 id="aprTitle" class=" ProgramCardTitle d-flex justify-content-center ">April</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '4' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '4' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '4' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '4' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="may" class="card-body" style="display: none;">
                        <h1 id="mayTitle" class=" ProgramCardTitle d-flex justify-content-center ">May</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource14" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource13" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '5' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '5' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource16" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource15" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '5' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '5' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="jun" class="card-body" style="display: none;">
                        <h1 id="junTitle" class=" ProgramCardTitle d-flex justify-content-center ">June</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource18" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource17" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '6' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '6' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource20" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource19" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '6' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '6' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="jul" class="card-body" style="display: none;">
                        <h1 id="julTitle" class=" ProgramCardTitle d-flex justify-content-center ">July</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource22" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource21" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '7' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '7' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource24" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView20" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource23" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '7' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '7' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="aug" class="card-body" style="display: none;">
                        <h1 id="augTitle" class=" ProgramCardTitle d-flex justify-content-center ">August</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource26" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView22" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource25" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '8' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '8' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView23" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource28" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView24" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource27" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource27" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '8' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource28" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '8' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="sep" class="card-body" style="display: none;">
                        <h1 id="sepTitle" class=" ProgramCardTitle d-flex justify-content-center ">September</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView25" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource30" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView26" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource29" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource29" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '9' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource30" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '9' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView27" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource32" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView28" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource31" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource31" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '9' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource32" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '9' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="oct" class="card-body" style="display: none;">
                        <h1 id="octTitle" class=" ProgramCardTitle d-flex justify-content-center ">October</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView29" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource34" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView30" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource33" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource33" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '10' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource34" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '10' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView31" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource36" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView32" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource35" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource35" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '10' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource36" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '10' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="nov" class="card-body" style="display: none;">
                        <h1 id="novTitle" class=" ProgramCardTitle d-flex justify-content-center ">November</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView33" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource38" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView34" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource37" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource37" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '11' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource38" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '11' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView35" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource40" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView36" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource39" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource39" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '11' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource40" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '11' Group by ProgramType"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div id="dec" class="card-body" style="display: none;">
                        <h1 id="decTitle" class=" ProgramCardTitle d-flex justify-content-center ">December</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView37" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource42" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="DateCompleted" HeaderText="Date" SortExpression="DateCompleted" />
                                    <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                                    <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                                    <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView38" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource41" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total" HeaderText="Total Attendance" SortExpression="Total" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource41" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select SUM(TotalPeople) as 'Total' from dbo.NewProgram WHERE MONTH(DateCompleted) = '12' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource42" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select FORMAT( DateCompleted, 'MM/dd/yyyy', 'en-US' ) as 'DateCompleted', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '12' GROUP BY DateCompleted, TotalKids, TotalAdults"></asp:SqlDataSource>
                        </div>

                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Program Count</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView39" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource44" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView40" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource43" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="Total Programs" HeaderText="Total Programs" SortExpression="Total Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource43" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select Count(np.NewProgramID) as 'Total Programs' from dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '12' "></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource44" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '12' Group by ProgramType"></asp:SqlDataSource>
                        </div>

                    </div>
                    <hr />
                    <div id="animalReport" class="card-body">
                        <h1 id="aniTitle" class=" ProgramCardTitle d-flex justify-content-center">Annual Animal Statistics</h1>
                        <div class="ProgramShort d-flex justify-content-center">
                            <asp:GridView ID="animalGrid" runat="server" AllowSorting="True" EnableSortingAndPagingCallbacks="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource48" ForeColor ="#000000">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
                                    <asp:BoundField DataField="Programs" HeaderText="Programs" ReadOnly="True" SortExpression="Programs" />
                                    <asp:BoundField DataField="TotalPeople" HeaderText="TotalPeople" SortExpression="TotalPeople" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource48" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT a.AnimalName, count(aa.AnimalID) as Programs, np.TotalPeople 
                        FROM dbo.NewProgram np inner join dbo.AssignAnimal aa on np.NewProgramID = aa.NewProgramID right join dbo.Animal a on aa.AnimalID = a.AnimalID
                        GROUP BY a.AnimalName, np.TotalPeople"></asp:SqlDataSource>
                        </div>
                    </div>--%>
                    <div id="animalAtt" class="card-body" style="display: none;">
                        <h1 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center ">Animal Attendance</h1>
                        <div class='tableauPlaceholder' id='viz1540864231559' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Si&#47;SimpleandAnimalReports&#47;AnimalAttendance&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='SimpleandAnimalReports&#47;AnimalAttendance' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Si&#47;SimpleandAnimalReports&#47;AnimalAttendance&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1540864231559');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1000px';vizElement.style.height='827px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
                    </div>
                    <div id="animalPart" class="card-body" style="display: none;">
                        <h1 id="monTitle" class=" ProgramCardTitle d-flex justify-content-center ">Animal Participation</h1>
                        <div class='tableauPlaceholder' id='viz1540863850811' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Si&#47;SimpleandAnimalReports&#47;AnimalParticipation&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='SimpleandAnimalReports&#47;AnimalParticipation' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Si&#47;SimpleandAnimalReports&#47;AnimalParticipation&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1540863850811');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='1000px';vizElement.style.height='827px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $("#annBtn").click(function () {
            $("#animalAtt").toggle();
        });
        $("#monBtn").click(function () {
            $("#animalPart").toggle();
        });
        //$("#marBtn").click(function () {
        //    $("#mar").toggle();
        //});
        //$("#aprBtn").click(function () {
        //    $("#apr").toggle();
        //});
        //$("#mayBtn").click(function () {
        //    $("#may").toggle();
        //});
        //$("#junBtn").click(function () {
        //    $("#jun").toggle();
        //});
        //$("#julBtn").click(function () {
        //    $("#jul").toggle();
        //});
        //$("#augBtn").click(function () {
        //    $("#aug").toggle();
        //});
        //$("#sepBtn").click(function () {
        //    $("#sep").toggle();
        //});
        //$("#octBtn").click(function () {
        //    $("#oct").toggle();
        //});
        //$("#novBtn").click(function () {
        //    $("#nov").toggle();
        //});
        //$("#decBtn").click(function () {
        //    $("#dec").toggle();
        //});
    </script>


</asp:Content>

