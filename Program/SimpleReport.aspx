<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SimpleReport.aspx.cs" Inherits="SimpleReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h2>Simple Report</h2>
    <%--<ul class="container MonthNav">
        <h3><u>Month</u></h3>
        <li class="MonthLi" onclick="showJan()">January</li>

        <li class="MonthLi">February</li>

        <li class="MonthLi">March</li>

        <li class="MonthLi">April</li>

        <li class="MonthLi">May</li>

        <li class="MonthLi">June</li>

        <li class="MonthLi">July</li>

        <li class="MonthLi">August</li>

        <li class="MonthLi">September</li>

        <li class="MonthLi">October</li>

        <li class="MonthLi">November</li>

        <li class="MonthLi">December</li>
 </ul>--%>

    <div id="jan">
        <h3>January</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="janGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="janAttSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="janAttSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '1' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        <br />

        <h5>Monthly Program Count</h5>
        <asp:GridView ID="janGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="janCountSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="janCountSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '1' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="febGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="febAttSource" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="febAttSource" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="febGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="mar">
        <h3>March</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="marGridAtt" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '3' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="marGridCount" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '3' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView12" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView14" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView15" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView16" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>
    <div id="feb">
        <h3>February</h3>

        <h5>Monthly Attendance</h5>
        <asp:GridView ID="GridView17" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="Day" HeaderText="Day of Month" SortExpression="Day" />
                <asp:BoundField DataField="TotalKids" HeaderText="Total Kids" SortExpression="TotalKids" />
                <asp:BoundField DataField="TotalAdults" HeaderText="Total Adults" SortExpression="TotalAdults" />
                <asp:BoundField DataField="Total People" HeaderText="Total People" SortExpression="Total People" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="select DAY(DateCompleted) as 'Day', TotalKids, TotalAdults, (SELECT SUM(TotalKids)+SUM(TotalAdults)) as 'Total People' from dbo.NewProgram WHERE MONTH(DateCompleted) = '2' GROUP BY DAY(DateCompleted), TotalKids, TotalAdults"></asp:SqlDataSource>
        
        <h5>Monthly Program Count</h5>
        <asp:GridView ID="GridView18" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
            <Columns>
                <asp:BoundField DataField="ProgramType" HeaderText="Program Type" SortExpression="ProgramType" />
                <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT ProgramType, count(ProgramType) as 'Number of Programs' FROM dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID WHERE MONTH(np.DateCompleted) = '2' Group by ProgramType"></asp:SqlDataSource>
    </div>

    <asp:GridView ID="animalNumbers" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Style="float: right;">
        <Columns>
            <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
            <asp:BoundField DataField="Programs" HeaderText="Programs" ReadOnly="True" SortExpression="Programs" />
            <asp:BoundField DataField="TotalPeople" HeaderText="TotalPeople" SortExpression="TotalPeople" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT a.AnimalName, count(aa.AnimalID) as Programs, np.TotalPeople 
FROM dbo.NewProgram np inner join dbo.AssignAnimal aa on np.NewProgramID = aa.NewProgramID right join dbo.Animal a on aa.AnimalID = a.AnimalID
GROUP BY a.AnimalName, np.TotalPeople"></asp:SqlDataSource>


</asp:Content>

