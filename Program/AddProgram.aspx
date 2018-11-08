<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddProgram.aspx.cs" Inherits="AddProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="AnimalReportContainer">
        <div class="ProgramReportCard   ">
            <div class="row">
                <div class="col-md-12 mx-auto d-flex justify-content-center">
                    <h1 class="heading-primary">Add Program</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 mx-auto d-flex justify-content-center Spacing">
                    <a href="#" id="btnAddOrg" class=" btn btn-primary LoginButton" runat="server" onclick="btnAddOrg_Click">Add Organization</a>

                </div>

            </div>



            <div class="row">

                <div class="col-md-3 mx-auto d-flex justify-content-center">
                </div>
                <div class="col-md-3 mx-auto d-flex justify-content-center">
                    <h4>Organization:</h4>

                </div>
                <div class="col-md-3 mx-auto d-flex justify-content-center">
                    <asp:DropDownList ID="drpOrganizationList" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="OrganizationName" DataValueField="OrganizationID" OnSelectedIndexChanged="drpOrganizationList_IndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Select an Organization"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT OrganizationName, OrganizationID FROM Organization"></asp:SqlDataSource>

                </div>
                <div class="col-md-3 mx-auto d-flex justify-content-center">
                </div>
            </div>




            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">

                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Program Information
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">


                            <div class="row">
                                <div class="col-md-4 mx-auto ">

                                    <asp:DropDownList ID="drpProgramList" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="ProgramName" DataValueField="ProgramID" AppendDataBoundItems="True" OnSelectedIndexChanged="drpProgramList_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Text="Select a Program Name"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4 mx-auto ">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT [ProgramID], [ProgramName] FROM [Program]"></asp:SqlDataSource>

                                    <asp:DropDownList ID="drpLocationTypeList" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" AutoPostBack ="true" >
                                        <asp:ListItem Text="Select a Location Type"></asp:ListItem>
                                        <asp:ListItem Value="Onsite" Text="Onsite"></asp:ListItem>
                                        <asp:ListItem Value="Offsite" Text="Offsite"></asp:ListItem>
                                        <asp:ListItem Value="Online" Text="Online"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4 mx-auto  Spacing">
                                    <h5>Date:</h5>
                                    <br />
                                    <input runat="server" clientidmode="Static" type="date" id="datepicker">
                                </div>

                            </div>




                            <%--                    <asp:SqlDataSource ID="dsLocationType" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT DISTINCT [ProgramID], [ProgramType] FROM [Program]"></asp:SqlDataSource>--%>


                            <div class="row">
                                <div class="col-md-4 mx-auto  Spacing">

                                    <asp:TextBox ID="txtKids" runat="server" Placeholder="Number of Kids"></asp:TextBox>

                                </div>

                                <div class="col-md-4 mx-auto  Spacing">

                                    <asp:TextBox ID="txtAdults" runat="server" Placeholder="Number of Adults"></asp:TextBox>

                                </div>


                                <div class="col-md-4 mx-auto  Spacing">

                                    <h5>Select Educators:</h5>
                                    <br />
                                    <div class="border">
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="UserID"></asp:CheckBoxList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT UserID, CONCAT(FirstName, ' ', LastName) as name FROM [User] "></asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 mx-auto Spacing">

                                    <asp:DropDownList ID="drpAgeLevel" runat="server">
                                        <asp:ListItem>Please select Age Level</asp:ListItem>
                                        <asp:ListItem>1st Grade</asp:ListItem>
                                        <asp:ListItem>2nd Grade</asp:ListItem>
                                        <asp:ListItem>3rd Grade</asp:ListItem>
                                        <asp:ListItem>4th Grade</asp:ListItem>
                                        <asp:ListItem>5th Grade</asp:ListItem>
                                        <asp:ListItem>6th Grade</asp:ListItem>
                                        <asp:ListItem>7th Grade</asp:ListItem>
                                        <asp:ListItem>8th Grade</asp:ListItem>
                                        <asp:ListItem>9th Grade</asp:ListItem>
                                        <asp:ListItem>10th Grade</asp:ListItem>
                                        <asp:ListItem>11th Grade</asp:ListItem>
                                        <asp:ListItem>12th Grade</asp:ListItem>
                                        <asp:ListItem>Familes</asp:ListItem>
                                        <asp:ListItem>Adults Only</asp:ListItem>
                                    </asp:DropDownList>
                                </div>







                                <div class="col-md-8 mx-auto Spacing">
                                    <h4>Notes</h4>
                                    <textarea id="txtMiscNotes" runat="server" cols="20" rows="2"></textarea>
                                </div>
                            </div>

                            <div class="container">
                                <div class="row">
                                    <div class="col-4">
                                        <h4 class="Animal">Birds:</h4>
                                        <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">
                                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Bird'"></asp:SqlDataSource>
                                        <asp:Button ID="btnAllBirds" runat="server" Text="Select All" OnClick="btnAllBirds_Click" />
                                    </div>


                                    <div class="col-4">
                                        <h4 class="Animal">Reptiles:</h4>
                                        <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">
                                            <asp:CheckBoxList ID="CheckBoxList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Reptile'"></asp:SqlDataSource>
                                        <asp:Button ID="btnAllReptiles" runat="server" Text="Select All" OnClick="btnAllReptiles_Click" />
                                    </div>

                                    <div class="col-4">
                                        <h4 class="Animal">Mammals:</h4>
                                        <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">
                                            <asp:CheckBoxList ID="CheckBoxList4" runat="server" DataSourceID="SqlDataSource6" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Mammal'"></asp:SqlDataSource>
                                        <div style="text-align: center">
                                            <asp:Button ID="btnAllMammals" runat="server" Text="Select All" OnClick="btnAllMammals_Click" />
                                        </div>


                                        <asp:Button ID="btnAddProgram" runat="server" Text="Add Another Program" OnClick="btnAddProgram_Click" />
                                    </div>
                                </div>





                            </div>



                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Contact Information</button>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="container-fluid" style="padding-top: 20px;">
                                <asp:UpdatePanel runat="server" ID="clientPanel">
                                    <ContentTemplate>
                                        <asp:DropDownList ID="drpContact" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" OnSelectedIndexChanged="drpContact_SelectedIndexChanged" AutoPostBack="True">
                                            <asp:ListItem Text="Select a Contact"></asp:ListItem>
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="drpOrganizationList" EventName="SelectedIndexChanged" />

                                    </Triggers>

                                </asp:UpdatePanel>



                                 <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Always">
                                    <ContentTemplate>
                                <div class="main-container">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtFirstName" class="label-style">First Name</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                                        </div>

                                    </div>


                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtLastName" class="label-style">Last Name</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtEmail" class="label-style">Email Address</label>
                                        </div>
                                        <div class="form-group  col-md-6">
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <%--<div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtAddress" class="label-style">Address</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <label for="Country" class="label-style">Country</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtCity" class="label-style">City</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtState" class="label-style">State/Province</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtZip" class="label-style">Zip/Postal</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                                        </div>

                                    </div>--%>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtPrimaryNumber" class="label-style">Primary Phone </label>
                                        </div>
                                        <div class="form-group  col-md-6">
                                            <asp:TextBox ID="txtPrimaryNumber" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtSecondaryNumber" class="label-style">Secondary Phone </label>
                                        </div>
                                        <div class="form-group  col-md-6">
                                            <asp:TextBox ID="txtSecondaryNumber" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="drpContact" EventName="SelectedIndexChanged" />

                                    </Triggers>

                                </asp:UpdatePanel>
                                    <div class="button-container">
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Billing Information
                            </button>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="container-fluid" style="padding-top: 20px;">

                                <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <div class="main-container">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label for="txtFirstName" class="label-style">Program Base Cost</label>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                                </div>

                                            </div>


                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label for="txtLastName" class="label-style">Mileage</label>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label for="txtEmail" class="label-style">Total Cost</label>
                                                </div>
                                                <div class="form-group col-md-6">
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </div>

                                            </div>

                                            <%--<div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtPrimaryNumber" class="label-style">Invoice Number</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <label for="txtSecondaryNumber" class="label-style">Secondary Phone Number</label>
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </div>--%>
                                        </div>

                                        <div class="button-container">
                                        </div>

                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="drpContact" />

                                    </Triggers>

                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 mx-auto d-flex justify-content-center Spacing">
                        <a href="#" id="A1" class=" btn btn-primary LoginButton" runat="server" onclick="Submit_Click">Submit</a>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>

                </div>
            </div>





            <!-- end accordion -->




        </div>

    </div>
    <!-- end container -->







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

