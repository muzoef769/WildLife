<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AnimalReport.aspx.cs" Inherits="AnimalReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
     <asp:ScriptManager ID="ScriptManagerAnimal" runat="server"></asp:ScriptManager>
    <div class="main">


        <div class=" container-fluid AnimalReportContainer">

            <div class="row">
                <div class="col-md-6 mx-auto text-center">

                    <h1 class="CardTitle">View Animal Info</h1>
                </div>
            </div>

            <div class="row">

                <%--START of SEARH BY DATE--%>
                <div class="">
                    <div class="row mx-auto d-flex justify-content-center  ">
                        <ul class="nav nav-tabs  col-xl-7 col-lg-12 col-md-12 col-s-12 " style="padding-left: 15px; border-bottom: none;" id="myTab" role="tablist">
                            <li class="nav-item ">
                                <a style="margin-right: 5px; color: black;" class="nav-link active " id="homee-tab" data-toggle="tab" href="#All" role="tab" aria-controls="homee" aria-selected="true">All</a>
                            </li>
                            <li class="nav-item ">
                                <a style="margin-right: 5px; color: black;" class="nav-link" id="home-tab" data-toggle="tab" href="#Online" role="tab" aria-controls="home" aria-selected="false">Online</a>
                            </li>
                            <li class="nav-item ">
                                <a style="margin-right: 5px; color: black;" class="nav-link " id="profile-tab" data-toggle="tab" href="#Live" role="tab" aria-controls="profile" aria-selected="false">OnSite</a>
                            </li>

                        </ul>

                    </div>
                </div>
                <div class="tab-content">
                    <div id="All" class="tab-pane fade show active">
                        <div class="table-responsive">

                            <div class="row mx-auto d-flex justify-content-center ">
                                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                    <div class="card mx-auto AnimalReportCard">
                                        <div class="card-body">
                                            <h5 class="card-title">General Animal Report</h5>
                                            <p>
                                                Detailed report of all animals and their associated information
                                            </p>
                                            <div class="col-md-4 mx-auto  Spacing">
                                                <label>Start Date </label>

                                                <asp:TextBox ID="txtAllStart" type="date" runat="server"></asp:TextBox>
                                                
                                            </div>
                                            <div class="col-md-5 mx-auto  Spacing">
                                                <label>End Date </label>

                                                <asp:TextBox ID="txtAllEnd" type="date" runat="server"></asp:TextBox>
                                            </div>
                                            <br />

                                            <br />
                                            <asp:LinkButton ID="Button2" runat="server" PostBackUrl="#scrollSpot"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateAllGeneral" />
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
                                            <asp:DropDownList ID="drpAllType" runat="server" CssClass="form-control-sm ">
                                                <asp:ListItem>Bird</asp:ListItem>
                                                <asp:ListItem>Mammal</asp:ListItem>
                                                <asp:ListItem>Reptile</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />

                                            <asp:LinkButton ID="Button3" runat="server" PostBackUrl="#scrollSpot"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateAllType" />
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
                                            <asp:DropDownList ID="drpAllMonthly" runat="server" CssClass="form-control-sm">
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
                                            <asp:LinkButton ID="Button4" runat="server" PostBackUrl="#scrollSpot"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateAllMonthReport" />
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
                                            <asp:DropDownList ID="drpAllAnnually" runat="server" CssClass="form-control-sm ">
                                                <asp:ListItem>2015</asp:ListItem>
                                                <asp:ListItem>2016</asp:ListItem>
                                                <asp:ListItem>2017</asp:ListItem>
                                                <asp:ListItem>2018</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />
                                            <asp:LinkButton ID="Button5" runat="server" PostBackUrl="#scrollSpot"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateAllAnnualReport" />
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <%--VIEW REPORT THROUGH GRIDVIEW--%>


                            <div class="card-body container-fluid d-flex justify-content-center">
                            </div>

                            <br />




                        </div>
                    </div>

                    <div id="Online" class="tab-pane fade">
                        <div class="table-responsive">

                            <div class="row mx-auto d-flex justify-content-center ">
                                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                    <div class="card mx-auto AnimalReportCard">
                                        <div class="card-body">
                                            <h5 class="card-title">Online General Report</h5>
                                            <p>
                                                Detailed report of all animals and their associated information
                                            </p>
                                            <div class="col-md-4 mx-auto  Spacing">
                                                <label>Start Date </label>

                                                <asp:TextBox ID="txtOnlineStart" type="date" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-md-5 mx-auto  Spacing">
                                                <label>End Date </label>

                                                <asp:TextBox ID="txtOnlineEnd" type="date" runat="server"></asp:TextBox>
                                            </div>
                                            <br />

                                            <br />
                                            
                                            <asp:Button ID="Button7" runat="server"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateOnlineGeneral"  />
                                        
                                                    
                                                    </div>
                                    </div>
                                </div>


                                <%--END of SEARH BY DATE--%>
                                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                    <div class="card mx-auto AnimalReportCard">
                                        <div class="card-body">
                                            <h5 class="card-title">Online Type Report</h5>
                                            <p>
                                                Detailed report of all animals by Animal Type
                                            </p>

                                            <br />
                                            <asp:DropDownList ID="drpOnlineType" runat="server" CssClass="form-control-sm ">
                                                <asp:ListItem>Bird</asp:ListItem>
                                                <asp:ListItem>Mammal</asp:ListItem>
                                                <asp:ListItem>Reptile</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />

                                            <asp:Button ID="Button8" runat="server"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateOnlineType" />
                                        </div>
                                    </div>
                                </div>










                                <%--START OF MONTHLY ANIMAL REPORT--%>

                                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                    <div class="card mx-auto AnimalReportCard">
                                        <div class="card-body ">
                                            <h5 class="card-title">Online Monthly Report</h5>
                                            <p>
                                                Monthly Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected month.
                                            </p>
                                            <asp:DropDownList ID="drpOnlineMonthly" runat="server" CssClass="form-control-sm">
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
                                            <asp:Button ID="Button9" runat="server"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateOnlineMonthReport" />
                                        </div>
                                    </div>
                                </div>

                                <%--END OF MONTHLY ANIMAL REPORT--%>

                                <%--START OF ANNUAL ANIMAL REPORT--%>

                                <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                    <div class="card mx-auto AnimalReportCard">
                                        <div class="card-body">
                                            <h5 class="card-title">Online Annual Report</h5>
                                            <p>
                                                Annual Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected year.
                                            </p>
                                            <asp:DropDownList ID="drpOnlineAnnually" runat="server" CssClass="form-control-sm ">
                                                <asp:ListItem>2015</asp:ListItem>
                                                <asp:ListItem>2016</asp:ListItem>
                                                <asp:ListItem>2017</asp:ListItem>
                                                <asp:ListItem>2018</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            <br />
                                            <asp:Button ID="Button10" runat="server"
                                                CssClass="btn btn-success"
                                                UseSubmitBehavior="false"
                                                CauseValidation="true"
                                                Text="Generate Report"
                                                OnClick="generateOnlineAnnualReport" />
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <%--VIEW REPORT THROUGH GRIDVIEW--%>


                            <div class="card-body container-fluid d-flex justify-content-center">
                            </div>

                            <br />





                        </div>
                    </div>
                
                <div id="Live" class="tab-pane fade">
                    <div class="table-responsive">
                        <div class="row mx-auto d-flex justify-content-center">

                            <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                <div class="card mx-auto AnimalReportCard">
                                    <div class="card-body">
                                        <h5 class="card-title">Live General Report</h5>
                                        <p>
                                            Detailed report of all animals and their associated information
                                        </p>
                                        <div class="col-md-4 mx-auto  Spacing">
                                            <label>Start Date </label>

                                            <asp:TextBox ID="txtLiveStart" type="date" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-5 mx-auto  Spacing">
                                            <label>End Date </label>

                                            <asp:TextBox ID="txtLiveEnd" type="date" runat="server"></asp:TextBox>
                                        </div>
                                        <br />

                                        <br />
                                        <asp:Button ID="Button1" runat="server"
                                            CssClass="btn btn-success"
                                            UseSubmitBehavior="false"
                                            CauseValidation="true"
                                            Text="Generate Report"
                                            OnClick="generateLiveGeneral" />
                                    </div>
                                </div>
                            </div>


                            <%--END of SEARH BY DATE--%>
                            <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                <div class="card mx-auto AnimalReportCard">
                                    <div class="card-body">
                                        <h5 class="card-title">Live Type Report</h5>
                                        <p>
                                            Detailed report of all animals by Animal Type
                                        </p>

                                        <br />
                                        <asp:DropDownList ID="drpLiveType" runat="server" CssClass="form-control-sm ">
                                            <asp:ListItem>Bird</asp:ListItem>
                                            <asp:ListItem>Mammal</asp:ListItem>
                                            <asp:ListItem>Reptile</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />

                                        <asp:Button ID="Button6" runat="server"
                                            CssClass="btn btn-success"
                                            UseSubmitBehavior="false"
                                            CauseValidation="true"
                                            Text="Generate Report"
                                            OnClick="generateLiveType" />
                                    </div>
                                </div>
                            </div>










                            <%--START OF MONTHLY ANIMAL REPORT--%>

                            <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                <div class="card mx-auto AnimalReportCard">
                                    <div class="card-body ">
                                        <h5 class="card-title">Live Monthly Report</h5>
                                        <p>
                                            Monthly Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected month.
                                        </p>
                                        <asp:DropDownList ID="drpLiveMonthly" runat="server" CssClass="form-control-sm">
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
                                        <asp:Button ID="Button11" runat="server"
                                            CssClass="btn btn-success"
                                            UseSubmitBehavior="false"
                                            CauseValidation="true"
                                            Text="Generate Report"
                                            OnClick="generateLiveMonthReport" />
                                    </div>
                                </div>
                            </div>

                            <%--END OF MONTHLY ANIMAL REPORT--%>

                            <%--START OF ANNUAL ANIMAL REPORT--%>

                            <div class="col-lg-6 col-md- 6 col-s-12 col-xl-6">
                                <div class="card mx-auto AnimalReportCard">
                                    <div class="card-body">
                                        <h5 class="card-title">Live Annual Report</h5>
                                        <p>
                                            Annual Animal Report displays all birds, mammals,
                            and reptiles that participated in a program for
                            the selected year.
                                        </p>
                                        <asp:DropDownList ID="drpLiveAnnually" runat="server" CssClass="form-control-sm ">
                                            <asp:ListItem>2015</asp:ListItem>
                                            <asp:ListItem>2016</asp:ListItem>
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button12" runat="server"
                                            CssClass="btn btn-success"
                                            UseSubmitBehavior="false"
                                            CauseValidation="true"
                                            Text="Generate Report"
                                            OnClick="generateLiveAnnualReport" />
                                    </div>
                                </div>
                            </div>
                        </div>



                        <%--VIEW REPORT THROUGH GRIDVIEW--%>


                        <div class="card-body container-fluid d-flex justify-content-center">
                        </div>

                        <br />





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

    <asp:UpdatePanel ID="updateOnlinePanel" runat="server">
                                                <ContentTemplate>

    <div class="table-responsive PaymentContainer  " style="background-color: transparent; padding-top: 0% !important;">
        <div class="row mx-auto ">
            <div class="col-xl-8 col-lg-12 col-md-12 col-s-12 ">
                <div class="col-xl-7 col-lg-12 col-md-12 col-s-12">
                    <asp:GridView ID="grdViewReport" Class=" table table-condensed table-bordered table-hover AnimalCard" AllowSorting="true" OnSorting="grdViewReport_Sorting" runat="server">
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
</ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Button7" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button8" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button9" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button10" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button6" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button11" EventName="Click" />
                                                    <asp:AsyncPostBackTrigger ControlID="Button12" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
    <%--END OF ANNUAL ANIMAL REPORT CARD--%>
</asp:Content>

