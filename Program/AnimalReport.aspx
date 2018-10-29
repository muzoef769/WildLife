<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AnimalReport.aspx.cs" Inherits="AnimalReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <h2>Animal Report</h2>
<%--    <div class='tableauPlaceholder' id='viz1540523436975' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;An&#47;AnimalsperProgramType&#47;AnimalReportPrograms&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='AnimalsperProgramType&#47;AnimalReportPrograms' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;An&#47;AnimalsperProgramType&#47;AnimalReportPrograms&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1540523436975');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>--%>
<%--    <div class='tableauPlaceholder' id='viz1540523183741' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;An&#47;AnimalsperProgramType&#47;AnimalReportAttendance&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='AnimalsperProgramType&#47;AnimalReportAttendance' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;An&#47;AnimalsperProgramType&#47;AnimalReportAttendance&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1540523183741');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>--%>
    <div class="main">
        <div class="row">
            <div class="container-fluid ProgramContainer" >

                <div class="card mx-auto  ProgramCard" style="opacity: 0.8;">
                    <div id="ann" class="card-body">
                        <h1 id="annTitle" class=" ProgramCardTitle d-flex justify-content-center ">Annual Animal Report</h1>
                        <h4 class=" ProgramCardTitle Underline d-flex justify-content-center ">Attendance</h4>
                        <div class="ProgramShort d-flex justify-content-center">

                            <asp:GridView ID="GridView41" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource46" EnableSortingAndPagingCallbacks="true" CellPadding="4" ForeColor="#000000" GridLines="None" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                <Columns>
                                    <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                                    <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                                    <asp:BoundField DataField="ProgramType" HeaderText="ProgramType" SortExpression="ProgramType" />
                                    <asp:BoundField DataField="Number of Programs" HeaderText="Number of Programs" SortExpression="Number of Programs" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource46" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalType, AnimalName, ProgramType, count(ProgramType) as 'Number of Programs' from dbo.Program p inner join dbo.NewProgram np on p.ProgramID = np.ProgramID inner join dbo.AssignAnimal aa on aa.NewProgramID = np.NewProgramID right join dbo.Animal a on aa.AnimalID = a.AnimalID
--WHERE MONTH(np.DateCompleted) = '1'
GROUP BY AnimalName, ProgramType, AnimalType
ORDER BY AnimalType"></asp:SqlDataSource>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    <ul class="container MonthNav">
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



        </ul>
</asp:Content>

