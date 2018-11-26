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

                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                    <div class="card mx-auto AnimalReportCard">
                        <div class="card-body">
                            <h5 class="card-title">General Animal Report</h5>
                            <p>
                                Detailed report of all animals and their associated information
                            </p>
                            <%-- <asp:TextBox ID="txtStartDate" runat="server" Cssclass="form-control" TextMode="Date"></asp:TextBox>--%>
                            <br />

                            <br />
                            <asp:LinkButton ID="btnSearchByDate" runat="server" PostBackUrl="#scrollSpot"
                                CssClass="btn btn-success"
                                UseSubmitBehavior="false"
                                CauseValidation="true"
                                Text="Generate Report"
                                OnClick="SearchByDate" />
                        </div>
                    </div>
                </div>


                <%--END of SEARH BY DATE--%>
                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                    <div class="card mx-auto AnimalReportCard">
                        <div class="card-body">
                            <h5 class="card-title">Animal Type Report</h5>
                            <p>
                                Detailed report of all animals by Animal Type
                            </p>

                            <br />
                            <asp:DropDownList ID="drpAnimalTypeReport" runat="server" CssClass="form-control-sm ">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />

                            <asp:LinkButton ID="Button1" runat="server" PostBackUrl="#scrollSpot"
                                CssClass="btn btn-success"
                                UseSubmitBehavior="false"
                                CauseValidation="true"
                                Text="Generate Report"
                                OnClick="AnimalType" />
                        </div>
                    </div>
                </div>










                <%--START OF MONTHLY ANIMAL REPORT--%>

                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                    <div class="card mx-auto AnimalReportCard">
                        <div class="card-body ">
                            <h5 class="card-title">Monthly Animal Report</h5>
                            <p>
                                Monthly Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected month.
                            </p>
                            <asp:DropDownList ID="drpMonthList" runat="server" CssClass="form-control-sm">
                                <asp:ListItem Value="1">January</asp:ListItem>
                                <asp:ListItem Value="2">February</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">August</asp:ListItem>
                                <asp:ListItem Value="9">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:LinkButton ID="btnGenerateMonthReport" runat="server" PostBackUrl="#scrollSpot"
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

                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                    <div class="card mx-auto AnimalReportCard">
                        <div id="scrollSpot" class="card-body">
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
                                <asp:ListItem>2018</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:LinkButton ID="btnGenerateAnnualReport" runat="server" PostBackUrl="#scrollSpot"
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


    <div class="card-body container-fluid d-flex justify-content-center">
    </div>

    <br />
    <div class="table-responsive PaymentContainer  " style="background-color: transparent; padding-top: 0% !important;">
        <div class="row mx-auto ">
            <div class="col-xl-8 col-lg-12 col-md-12 col-s-12 ">
                <div id="genGrid" class="col-xl-7 col-lg-12 col-md-12 col-s-12">
                    <asp:GridView ID="grdViewReport" Class=" table table-condensed table-bordered table-hover AnimalCard" AllowSorting="true" onsorting="grdViewReport_Sorting" runat="server">
                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <br />
        <div class="row mx-auto">
            <div class="col-12">
                <asp:Button ID="btnExportToExcel"
                    runat="server"
                    Text="Export To Excel"
                    CssClass="btn mx-auto d-flex justify-content-center btn-success"
                    UseSubmitBehavior="false"
                    CauseValidation="true"
                    OnClick="ExportToExcel" />
                <br />
            </div>
        </div>
    </div>

    <%--END OF ANNUAL ANIMAL REPORT CARD--%>
</asp:Content>

