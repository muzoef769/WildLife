<%@ Page Title="Simple Reports" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SimpleReport.aspx.cs" Inherits="SimpleReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">
        <div class="row">
            <div class="container-fluid ProgramContainer">
                <div class="card mx-auto  ProgramCard" style="opacity: 0.8;">
                    <div id="ann" class="card-body">
                        <h1 class="ProgramCardTitle d-flex justify-content-center">Program Totals</h1>
                        <div class="row table-responsive">
                            <div class="col-md-12 table">
                                <%-- <h1 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center ">Annual Report</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView41" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource46" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None"  >
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

                            <asp:GridView ID="GridView43" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource47" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None"  >
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
                        <h1 id="monTitle" class=" ProgramCardTitle d-flex justify-content-center">Monthly Report</h1>--%>
                                <asp:GridView ID="offsiteGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source6" GridLines="Both">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField HeaderStyle-Width="150px" DataField="LocationType" HeaderText="Program Totals" SortExpression="LocationType" />
                                        <asp:BoundField DataField="January" HeaderText="Jan" SortExpression="January" />
                                        <asp:BoundField DataField="February" HeaderText="Feb" SortExpression="February" />
                                        <asp:BoundField DataField="March" HeaderText="Mar" SortExpression="March" />
                                        <asp:BoundField DataField="April" HeaderText="Apr" SortExpression="April" />
                                        <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField DataField="June" HeaderText="Jun" SortExpression="June" />
                                        <asp:BoundField DataField="July" HeaderText="Jul" SortExpression="July" />
                                        <asp:BoundField DataField="August" HeaderText="Aug" SortExpression="August" />
                                        <asp:BoundField DataField="September" HeaderText="Sep" SortExpression="September" />
                                        <asp:BoundField DataField="October" HeaderText="Oct" SortExpression="October" />
                                        <asp:BoundField DataField="November" HeaderText="Nov" SortExpression="November" />
                                        <asp:BoundField DataField="December" HeaderText="Dec" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source6" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT LocationType,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '1' and LocationType = 'Offsite') January, 
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '2' and LocationType = 'Offsite') February,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '3' and LocationType = 'Offsite') March,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '4' and LocationType = 'Offsite') April,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '5' and LocationType = 'Offsite') May,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '6' and LocationType = 'Offsite') June,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '7' and LocationType = 'Offsite') July,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '8' and LocationType = 'Offsite') August,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '9' and LocationType = 'Offsite') September,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '10' and LocationType = 'Offsite') October,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '11' and LocationType = 'Offsite') November,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '12' and LocationType = 'Offsite') December,
                            (select count(LocationType) from NewProgram where LocationType='Offsite') '2018 Total'
                            from NewProgram where LocationType = 'Offsite' group by LocationType"></asp:SqlDataSource>
                                <asp:GridView ID="onlineGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source5" GridLines="Both" ShowHeader="False">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="LocationType" HeaderText="Type" SortExpression="LocationType" />
                                        <asp:BoundField DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source5" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT LocationType,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '1' and LocationType = 'Online') January, 
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '2' and LocationType = 'Online') February,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '3' and LocationType = 'Online') March,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '4' and LocationType = 'Online') April,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '5' and LocationType = 'Online') May,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '6' and LocationType = 'Online') June,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '7' and LocationType = 'Online') July,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '8' and LocationType = 'Online') August,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '9' and LocationType = 'Online') September,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '10' and LocationType = 'Online') October,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '11' and LocationType = 'Online') November,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '12' and LocationType = 'Online') December,
                            (select count(LocationType) from NewProgram where LocationType='Online') '2018 Total'
                            from NewProgram where LocationType = 'Online' group by LocationType"></asp:SqlDataSource>
                                <asp:GridView ID="onsiteGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source4" GridLines="Both" ShowHeader="False">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="LocationType" HeaderText="Type" SortExpression="LocationType" />
                                        <asp:BoundField DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source4" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT LocationType,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '1' and LocationType = 'Onsite') January, 
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '2' and LocationType = 'Onsite') February,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '3' and LocationType = 'Onsite') March,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '4' and LocationType = 'Onsite') April,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '5' and LocationType = 'Onsite') May,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '6' and LocationType = 'Onsite') June,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '7' and LocationType = 'Onsite') July,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '8' and LocationType = 'Onsite') August,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '9' and LocationType = 'Onsite') September,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '10' and LocationType = 'Onsite') October,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '11' and LocationType = 'Onsite') November,
                            (select count(LocationType) from NewProgram where Month(DateCompleted) = '12' and LocationType = 'Onsite') December,
                            (select count(LocationType) from NewProgram where LocationType='Onsite') '2018 Total'
                            from NewProgram where LocationType = 'Onsite' group by LocationType"></asp:SqlDataSource>
                                <asp:GridView ID="totProgramsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source7" ShowHeader="False">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Font-Bold="true" ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                Total Programs
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source7" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT 
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '1') January, 
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '2') February,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '3') March,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '4') April,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '5') May,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '6') June,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '7') July,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '8') August,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '9') September,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '10') October,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '11') November,
                                (select count(LocationType) from NewProgram where Month(DateCompleted) = '12') December,
                                (select count(LocationType) from NewProgram) '2018 Total'
                                from NewProgram where LocationType = 'Online' group by LocationType"></asp:SqlDataSource>
                                <asp:GridView ID="totKidsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source2" ShowHeader="False">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                Children
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '1') January, 
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '2') February,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '3') March,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '4') April,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '5') May,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '6') June,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '7') July,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '8') August,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '9') September,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '10') October,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '11') November,
                            (select isnull(sum(TotalKids), 0) from NewProgram where Month(DateCompleted) = '12') December,
                            (select isnull(sum(TotalKids), 0) from NewProgram) '2018 Total'
                            from NewProgram where LocationType='Online' group by LocationType  "></asp:SqlDataSource>
                                <asp:GridView ID="totAdultsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source3" ShowHeader="false">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                Adults
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '1') January, 
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '2') February,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '3') March,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '4') April,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '5') May,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '6') June,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '7') July,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '8') August,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '9') September,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '10') October,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '11') November,
                            (select isnull(sum(TotalAdults), 0) from NewProgram where Month(DateCompleted) = '12') December,
                            (select isnull(sum(TotalAdults), 0) from NewProgram) '2018 Total'
                            from NewProgram where LocationType='Online' group by LocationType "></asp:SqlDataSource>
                                <asp:GridView ID="totPeopleGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source1" ShowHeader="false">
                                    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                    <Columns>
                                        <asp:TemplateField ItemStyle-Font-Bold="true" ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                Total People
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="January" HeaderText="January" SortExpression="January" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="February" HeaderText="February" SortExpression="February" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="March" HeaderText="March" SortExpression="March" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="April" HeaderText="April" SortExpression="April" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="May" HeaderText="May" SortExpression="May" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="June" HeaderText="June" SortExpression="June" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="July" HeaderText="July" SortExpression="July" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="August" HeaderText="August" SortExpression="August" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="September" HeaderText="September" SortExpression="September" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="October" HeaderText="October" SortExpression="October" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="November" HeaderText="November" SortExpression="November" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="December" HeaderText="December" SortExpression="December" />
                                        <asp:BoundField ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="source1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '1') January, 
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '2') February,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '3') March,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '4') April,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '5') May,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '6') June,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '7') July,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '8') August,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '9') September,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '10') October,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '11') November,
                            (select isnull(sum(TotalPeople), 0) from NewProgram where Month(DateCompleted) = '12') December,
                            (select isnull(sum(TotalPeople), 0) from NewProgram) '2018 Total'
                            from NewProgram where LocationType='Online' group by LocationType"></asp:SqlDataSource>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Button ID="exportMonthly" class=" btn btn-primary PayButton2" Text="Export To Excel" runat="server" OnClick="exportMonthly_Click"></asp:Button>
                                </div>
                            </div>
                        </div>


                    </div>
                    <%--<div id="jan" class="card-body" style="display: none;">
                        <h1 id="janTitle" class=" ProgramCardTitle d-flex justify-content-center ">January</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="janGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="janAttSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="janGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="janCountSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="febGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="febGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource14" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource16" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource18" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource20" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource22" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView19" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource24" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView21" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource26" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView23" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource28" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView25" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource30" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView27" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource32" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView29" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource34" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView31" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource36" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView33" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource38" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView35" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource40" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView37" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource42" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                            <asp:GridView ID="GridView39" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource44" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="Both"  >
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

                    </div>--%>
                    <hr />
                    <div id="animalReport" class="card-body">
                        <h1 id="aniTitle" class=" ProgramCardTitle d-flex justify-content-center">Annual Animal Totals</h1>
                        <div class="ProgramShort d-flex justify-content-center">
                            <asp:GridView ID="animalGrid" runat="server" EnableSortingAndPagingCallbacks="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource48" ForeColor="#000000">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                                    <asp:BoundField DataField="Programs" HeaderText="Programs" ReadOnly="True" SortExpression="Programs" />
                                    <asp:BoundField DataField="TotalPeople" HeaderText="Total People" SortExpression="TotalPeople" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource48" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT a.AnimalName, count(aa.AnimalID) as Programs, np.TotalPeople 
                        FROM dbo.NewProgram np inner join dbo.AssignAnimal aa on np.NewProgramID = aa.NewProgramID right join dbo.Animal a on aa.AnimalID = a.AnimalID
                        GROUP BY a.AnimalName, np.TotalPeople"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Button ID="Button1" class=" btn btn-primary PayButton2" Text="Export To Excel" runat="server" OnClick="Button1_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--<ul class="container MonthNav">
            <h3><u>Month</u></h3>
            <li class="MonthLi" id="janBtn">January</li>

            <li class="MonthLi" id="febBtn">February</li>

            <li class="MonthLi" id="marBtn">March</li>

            <li class="MonthLi" id="aprBtn">April</li>

            <li class="MonthLi" id="mayBtn">May</li>

            <li class="MonthLi" id="junBtn">June</li>

            <li class="MonthLi" id="julBtn">July</li>

            <li class="MonthLi" id="augBtn">August</li>

            <li class="MonthLi" id="sepBtn">September</li>

            <li class="MonthLi" id="octBtn">October</li>

            <li class="MonthLi" id="novBtn">November</li>

            <li class="MonthLi" id="decBtn">December</li>



        </ul>--%>
    </div>

    <script type="text/javascript">
        $("#janBtn").click(function () {
            $("#jan").toggle();
        });
        $("#febBtn").click(function () {
            $("#feb").toggle();
        });
        $("#marBtn").click(function () {
            $("#mar").toggle();
        });
        $("#aprBtn").click(function () {
            $("#apr").toggle();
        });
        $("#mayBtn").click(function () {
            $("#may").toggle();
        });
        $("#junBtn").click(function () {
            $("#jun").toggle();
        });
        $("#julBtn").click(function () {
            $("#jul").toggle();
        });
        $("#augBtn").click(function () {
            $("#aug").toggle();
        });
        $("#sepBtn").click(function () {
            $("#sep").toggle();
        });
        $("#octBtn").click(function () {
            $("#oct").toggle();
        });
        $("#novBtn").click(function () {
            $("#nov").toggle();
        });
        $("#decBtn").click(function () {
            $("#dec").toggle();
        });
    </script>


</asp:Content>

