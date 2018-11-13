<%@ Page Title="Simple Reports" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="SimpleReport.aspx.cs" Inherits="SimpleReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(function () {
                $("#tabCheckBox").change(function () {
                    if ($(this).is(":checked")) {
                        $("#simpleTab").show(10000);
                        $("#programTotals").hide(10000);
                        $("#programTitle").hide(10000);

                    } else {
                        $("#simpleTab").hide(10000);
                        $("#programTotals").show(10000);
                        $("#programTitle").show(10000);
                    }
                });
            });
        });
        //function changeView() {
        //    var x = document.getElementById("myCheck").checked;

        //    if (x === true) {
        //        document.getElementById('simpleTab').style.display = 'block';
        //        document.getElementById('programTotals').style.display = 'none';
        //    }
        //    else {
        //        document.getElementById('simpleTab').style.display = 'none';
        //        document.getElementById('programTotals').style.display = 'block';
        //    }
        //}
    </script>




    <div class="main">
        <div class="row">
            <div class="container-fluid SimpleContainer">
                <div class="card ProgramCard" style="opacity: .9;">
                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <button class="btn" type="button" data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne">
                                    Program Totals
                                </button>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div id="tab-toggle" style="margin-top: 15px;">
                                    <label for="tabCheckBox">Interactive View</label>
                                        <input id="tabCheckBox" type="checkbox" checked data-toggle="toggle">
                                </div>
                                <div id="ann" class="card-body">
                                    <div id="simpleTab" class="row table-responsive" style="width: 90%;">
                                        <div class='tableauPlaceholder' id='viz1542070211315' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;CF&#47;CFB865958&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='path' value='shared&#47;CFB865958' /> <param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;CF&#47;CFB865958&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1542070211315');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
                                    </div>
                                    <h1 id="programTitle" class="ProgramCardTitle" style="display: none;">Program Totals</h1>
                                    <div id="programTotals" class="row table-responsive" style="display: none; overflow-x: hidden;">
                                        <div class="col-md-12  table  table-bordered table-hover AnimalCard " style="min-width: 120% !important;">
                                            <asp:GridView ID="offsiteGrid" HeaderStyle-ForeColor="black" runat="server" AutoGenerateColumns="False" DataSourceID="source6" GridLines="Both" Width="1200px">
                                                <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                                                <Columns>
                                                    <asp:BoundField HeaderStyle-Width="200px" DataField="LocationType" HeaderText="Program Totals" SortExpression="LocationType" />
                                                    <asp:BoundField DataField="January" ItemStyle-Width="75px" HeaderText="Jan" SortExpression="January" />
                                                    <asp:BoundField DataField="February" ItemStyle-Width="75px" HeaderText="Feb" SortExpression="February" />
                                                    <asp:BoundField DataField="March" ItemStyle-Width="75px" HeaderText="Mar" SortExpression="March" />
                                                    <asp:BoundField DataField="April" ItemStyle-Width="75px" HeaderText="Apr" SortExpression="April" />
                                                    <asp:BoundField DataField="May" ItemStyle-Width="75px" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField DataField="June" ItemStyle-Width="75px" HeaderText="Jun" SortExpression="June" />
                                                    <asp:BoundField DataField="July" ItemStyle-Width="75px" HeaderText="Jul" SortExpression="July" />
                                                    <asp:BoundField DataField="August" ItemStyle-Width="75px" HeaderText="Aug" SortExpression="August" />
                                                    <asp:BoundField DataField="September" ItemStyle-Width="75px" HeaderText="Sep" SortExpression="September" />
                                                    <asp:BoundField DataField="October" ItemStyle-Width="75px" HeaderText="Oct" SortExpression="October" />
                                                    <asp:BoundField DataField="November" ItemStyle-Width="75px" HeaderText="Nov" SortExpression="November" />
                                                    <asp:BoundField DataField="December" ItemStyle-Width="75px" HeaderText="Dec" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="100px" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                            <asp:GridView ID="onlineGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source5" GridLines="Both" Width="1200px" ShowHeader="False">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:BoundField ItemStyle-Width="200px" DataField="LocationType" HeaderText="Type" SortExpression="LocationType" />
                                                    <asp:BoundField DataField="January" ItemStyle-Width="75px" HeaderText="January" SortExpression="January" />
                                                    <asp:BoundField DataField="February" ItemStyle-Width="75px" HeaderText="February" SortExpression="February" />
                                                    <asp:BoundField DataField="March" ItemStyle-Width="75px" HeaderText="March" SortExpression="March" />
                                                    <asp:BoundField DataField="April" ItemStyle-Width="75px" HeaderText="April" SortExpression="April" />
                                                    <asp:BoundField DataField="May" ItemStyle-Width="75px" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField DataField="June" ItemStyle-Width="75px" HeaderText="June" SortExpression="June" />
                                                    <asp:BoundField DataField="July" ItemStyle-Width="75px" HeaderText="July" SortExpression="July" />
                                                    <asp:BoundField DataField="August" ItemStyle-Width="75px" HeaderText="August" SortExpression="August" />
                                                    <asp:BoundField DataField="September" ItemStyle-Width="75px" HeaderText="September" SortExpression="September" />
                                                    <asp:BoundField DataField="October" ItemStyle-Width="75px" HeaderText="October" SortExpression="October" />
                                                    <asp:BoundField DataField="November" ItemStyle-Width="75px" HeaderText="November" SortExpression="November" />
                                                    <asp:BoundField DataField="December" ItemStyle-Width="75px" HeaderText="December" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="100px" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                            <asp:GridView ID="onsiteGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source4" Width="1200px" GridLines="Both" ShowHeader="False">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:BoundField ItemStyle-Width="200px" DataField="LocationType" HeaderText="Type" SortExpression="LocationType" />
                                                    <asp:BoundField DataField="January" ItemStyle-Width="75px" HeaderText="January" SortExpression="January" />
                                                    <asp:BoundField DataField="February" ItemStyle-Width="75px" HeaderText="February" SortExpression="February" />
                                                    <asp:BoundField DataField="March" ItemStyle-Width="75px" HeaderText="March" SortExpression="March" />
                                                    <asp:BoundField DataField="April" ItemStyle-Width="75px" HeaderText="April" SortExpression="April" />
                                                    <asp:BoundField DataField="May" ItemStyle-Width="75px" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField DataField="June" ItemStyle-Width="75px" HeaderText="June" SortExpression="June" />
                                                    <asp:BoundField DataField="July" ItemStyle-Width="75px" HeaderText="July" SortExpression="July" />
                                                    <asp:BoundField DataField="August" ItemStyle-Width="75px" HeaderText="August" SortExpression="August" />
                                                    <asp:BoundField DataField="September" ItemStyle-Width="75px" HeaderText="September" SortExpression="September" />
                                                    <asp:BoundField DataField="October" ItemStyle-Width="75px" HeaderText="October" SortExpression="October" />
                                                    <asp:BoundField DataField="November" ItemStyle-Width="75px" HeaderText="November" SortExpression="November" />
                                                    <asp:BoundField DataField="December" ItemStyle-Width="75px" HeaderText="December" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="100px" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                            <asp:GridView ID="totProgramsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source7" Width="1200px" ShowHeader="False">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Font-Bold="true" ItemStyle-Width="200px">
                                                        <ItemTemplate>
                                                            Total Programs
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="January" HeaderText="January" SortExpression="January" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="February" HeaderText="February" SortExpression="February" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="March" HeaderText="March" SortExpression="March" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="April" HeaderText="April" SortExpression="April" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="May" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="June" HeaderText="June" SortExpression="June" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="July" HeaderText="July" SortExpression="July" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="August" HeaderText="August" SortExpression="August" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="September" HeaderText="September" SortExpression="September" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="October" HeaderText="October" SortExpression="October" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="November" HeaderText="November" SortExpression="November" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="December" HeaderText="December" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="100px" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                            <asp:GridView ID="totKidsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source2" Width="1200px" ShowHeader="False">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="200px">
                                                        <ItemTemplate>
                                                            Children
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="January" HeaderText="January" SortExpression="January" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="February" HeaderText="February" SortExpression="February" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="March" HeaderText="March" SortExpression="March" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="April" HeaderText="April" SortExpression="April" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="May" HeaderText="May" SortExpression="May" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="June" HeaderText="June" SortExpression="June" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="July" HeaderText="July" SortExpression="July" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="August" HeaderText="August" SortExpression="August" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="September" HeaderText="September" SortExpression="September" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="October" HeaderText="October" SortExpression="October" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="November" HeaderText="November" SortExpression="November" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="December" HeaderText="December" SortExpression="December" ControlStyle-Width="75px" />
                                                    <asp:BoundField ItemStyle-Width="100px" ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" ControlStyle-Width="100px" />
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
                                            <asp:GridView ID="totAdultsGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source3" Width="1200px" ShowHeader="false">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Width="200px">
                                                        <ItemTemplate>
                                                            Adults
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="January" HeaderText="January" SortExpression="January" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="February" HeaderText="February" SortExpression="February" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="March" HeaderText="March" SortExpression="March" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="April" HeaderText="April" SortExpression="April" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="May" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="June" HeaderText="June" SortExpression="June" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="July" HeaderText="July" SortExpression="July" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="August" HeaderText="August" SortExpression="August" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="September" HeaderText="September" SortExpression="September" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="October" HeaderText="October" SortExpression="October" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="November" HeaderText="November" SortExpression="November" />
                                                    <asp:BoundField ItemStyle-Width="75px" DataField="December" HeaderText="December" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Width="100px" ItemStyle-Font-Bold="true" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                            <asp:GridView ID="totPeopleGrid" runat="server" AutoGenerateColumns="False" DataSourceID="source1" Width="1200px" ShowHeader="false">
                                                <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="None" />
                                                <Columns>
                                                    <asp:TemplateField ItemStyle-Font-Bold="true" ItemStyle-Width="200px">
                                                        <ItemTemplate>
                                                            Total People
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="January" HeaderText="January" SortExpression="January" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="February" HeaderText="February" SortExpression="February" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="March" HeaderText="March" SortExpression="March" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="April" HeaderText="April" SortExpression="April" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="May" HeaderText="May" SortExpression="May" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="June" HeaderText="June" SortExpression="June" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="July" HeaderText="July" SortExpression="July" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="August" HeaderText="August" SortExpression="August" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="September" HeaderText="September" SortExpression="September" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="October" HeaderText="October" SortExpression="October" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="November" HeaderText="November" SortExpression="November" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="75px" DataField="December" HeaderText="December" SortExpression="December" />
                                                    <asp:BoundField ItemStyle-Font-Bold="true" ItemStyle-Width="100px" DataField="2018 Total" HeaderText="2018 Total" SortExpression="2018 Total" />
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
                                                <asp:Button ID="exportMonthly" class=" btn btn-success" Text="Export To Excel" runat="server" OnClick="exportMonthly_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="card">
                        <div class="card-header" id="headingTwo">
                            <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo"
                                aria-expanded="false" aria-controls="collapseTwo">
                                Annual Animal View
                            </button>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div id="animalReport" class="card-body">
                                <h1 id="aniTitle" class=" ProgramCardTitle d-flex justify-content-center">Annual Animal Totals</h1>
                                <div class="row table-responsive  ">
                                    <div class="col-md-12  mx-auto   table-bordered table-hover AnimalCard ">
                                        <asp:GridView ID="animalGrid" runat="server" EnableSortingAndPagingCallbacks="True" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource48">
                                            <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
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
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Button ID="Button1" class=" btn btn-success" Text="Export To Excel" runat="server" OnClick="Button1_Click"></asp:Button>
                                </div>
                            </div>
                        </div>
                        </div>
                     </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        //uses classList, setAttribute, and querySelectorAll
        //if you want this to work in IE8/9 youll need to polyfill these
        (function () {
            var d = document,
                accordionToggles = d.querySelectorAll('.js-accordionTrigger'),
                setAria,
                setAccordionAria,
                switchAccordion,
                touchSupported = ('ontouchstart' in window),
                pointerSupported = ('pointerdown' in window);

            skipClickDelay = function (e) {
                e.preventDefault();
                e.target.click();
            }

            setAriaAttr = function (el, ariaType, newProperty) {
                el.setAttribute(ariaType, newProperty);
            };
            setAccordionAria = function (el1, el2, expanded) {
                switch (expanded) {
                    case "true":
                        setAriaAttr(el1, 'aria-expanded', 'true');
                        setAriaAttr(el2, 'aria-hidden', 'false');
                        break;
                    case "false":
                        setAriaAttr(el1, 'aria-expanded', 'false');
                        setAriaAttr(el2, 'aria-hidden', 'true');
                        break;
                    default:
                        break;
                }
            };
            //function
            switchAccordion = function (e) {
                e.preventDefault();
                var thisAnswer = e.target.parentNode.nextElementSibling;
                var thisQuestion = e.target;
                if (thisAnswer.classList.contains('is-collapsed')) {
                    setAccordionAria(thisQuestion, thisAnswer, 'true');
                } else {
                    setAccordionAria(thisQuestion, thisAnswer, 'false');
                }
                thisQuestion.classList.toggle('is-collapsed');
                thisQuestion.classList.toggle('is-expanded');
                thisAnswer.classList.toggle('is-collapsed');
                thisAnswer.classList.toggle('is-expanded');

                thisAnswer.classList.toggle('animateIn');
            };
            for (var i = 0, len = accordionToggles.length; i < len; i++) {
                if (touchSupported) {
                    accordionToggles[i].addEventListener('touchstart', skipClickDelay, false);
                }
                if (pointerSupported) {
                    accordionToggles[i].addEventListener('pointerdown', skipClickDelay, false);
                }
                accordionToggles[i].addEventListener('click', switchAccordion, false);
            }
        })();

    </script>
</asp:Content>

