<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AnimalReport.aspx.cs" Inherits="AnimalReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">

        
            <div class=" container-fluid AnimalReportContainer">

                <div class="row">
       <div class="col-md-6 mx-auto text-center">

                   <h1 class="CardTitle">View Animal Info</h1>
                </div>
    </div>

                <div class="row">

                    <%--START of SEARH BY DATE--%>

                 <div class="col-lg-6 col-md- 6 col-s-12 col-xl-4">
                        <div class="card mx-auto AnimalReportCard">
                            <div class="card-body">
                                <h5 class="card-title">Search by Date</h5>
                                <p>
                                    Search by date and which animal(s) you would like
                                    to generate a report.
                                </p>
                                <asp:Label ID="lblStartDate" runat="server" Text=" Start Date: "></asp:Label>
                                <asp:TextBox ID="txtStartDate" runat="server" Cssclass="form-control" TextMode="Date"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblEndDate" runat="server" Text="End Date: "></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" Cssclass="form-control" TextMode="Date"></asp:TextBox>
                                <br />
                                <asp:Button ID="btnSearchByDate" runat="server"
                                    CssClass="btn btn-success"
                                    UseSubmitBehavior="false"
                                    CauseValidation="true"
                                    Text="Generate Report"
                                    OnClick="SearchByDate" />
                            </div>
                        </div>
                    </div>


                    <%--END of SEARH BY DATE--%>

                    <%--START OF MONTHLY ANIMAL REPORT--%>

                     <div class="col-lg-6 col-md- 6 col-s-12 col-xl-4">
                        <div class="card mx-auto AnimalReportCard">
                            <div class="card-body ">
                                <h5 class="card-title">Monthly Animal Report</h5>
                                <p>
                                    Monthly Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected month.
                                </p>
                                <asp:DropDownList ID="drpMonthList" runat="server" CssClass="form-control-sm">
                                    <asp:ListItem>January</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>August</asp:ListItem>
                                    <asp:ListItem>September</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <asp:Button ID="btnGenerateMonthReport" runat="server"
                                    CssClass="btn btn-success"
                                    UseSubmitBehavior="false"
                                    CauseValidation="true"
                                    Text="Generate Report"
                                    OnClick="generateMonthReport" />
                            </div>
                        </div>
                    </div>

                    <%--END OF MONTHLY ANIMAL REPORT--%>

                    <%--START OF ANNUAL ANIMAL REPORT--%>

                       <div class="col-lg-6 col-md- 6 col-s-12 col-xl-4">
                        <div class="card mx-auto AnimalReportCard">
                            <div class="card-body">
                                <h5 class="card-title">Annual Animal Report</h5>
                                <p>
                                    Annual Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected year.
                                </p>
                                <asp:DropDownList ID="drpYearList" runat="server" CssClass="form-control-sm ">
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                <asp:Button ID="btnGenerateAnnualReport" runat="server"
                                    CssClass="btn btn-success"
                                    UseSubmitBehavior="false"
                                    CauseValidation="true"
                                    Text="Generate Report"
                                    OnClick="generateAnnualReport" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--VIEW REPORT THROUGH GRIDVIEW--%>

        <div class="row">
            <div class="container-fluid AnimalReportContainer">
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="card mx-auto AnimalReportCard">
                            <div class="card-body">
                                <asp:GridView ID="grdViewReport" 
                                    runat="server">
                                </asp:GridView>
                                
                                <asp:Button ID="btnExportToExcel"
                                    runat="server"
                                    Text="Export To Excel"
                                    CssClass="btn btn-success"
                                    UseSubmitBehavior="false"
                                    CauseValidation="true"
                                    OnClick="ExportToExcel"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
    </div>
    <%--END OF ANNUAL ANIMAL REPORT CARD--%>
</asp:Content>

