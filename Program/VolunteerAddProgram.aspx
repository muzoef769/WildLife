﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="VolunteerAddProgram.aspx.cs" Inherits="VolunteerAddProgram" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <%--Beginning container--%>
    <br />
    <br />
    <br />
     <h1 id="ProgramMonth" class=" CardTitle mx-auto d-flex justify-content-center "> Add Program</h1>
	

    <div>
        
    <div class="row">
    <%--Program container--%>
       
       <div class="SimpleContainer col-sm-12 col-xs-12 col-md-4 col-lg-4 col-xl-4" style="z-index: 100;">
        <div class=" AnimalReportCard text-left" style="padding-left:15px; padding-top:15px; padding-bottom:5px;">
            <h4>Cart 

                <span class="price" style="color: black"><i class="fa fa-shopping-cart"></i><b>
                    <asp:Label ID="lblCartTotal" runat="server" Text="0"></asp:Label></b></span>

            </h4>
            <div id ="programOne"  runat="server" visible="false">
            <p><a href="#"><asp:Label ID ="lblProgramOne" runat="server" Text="Program One"></asp:Label></a> <span class="price">
                <asp:Label ID="lblProgramCostOne" runat="server" Text="70"></asp:Label></span></p>
                </div>
            <div id ="programTwo"  runat="server" visible="false">
            <p><a href="#"><asp:Label ID ="lblProgramTwo" runat="server" Text="Program Two"></asp:Label></a> <span class="price">
                <asp:Label ID="lblProgramCostTwo" runat="server" Text="70"></asp:Label></span></p>
                </div>
            <div id="programThree"  runat="server" visible="false">
            <p><a href="#"><asp:Label ID ="lblProgramThree" runat="server" Text="Program Three"></asp:Label></a> <span class="price">
                <asp:Label ID="lblProgramCostThree" runat="server" Text="70"></asp:Label></span></p>
                </div>

            <hr>
            <p>
                <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal"></asp:Label>
                <span class="price" style="color: black"><b>$
                    <asp:Label ID="lblSubtotalCost" runat="server" Text="0"></asp:Label></b></span>
            </p>

            <p>
                <asp:Label ID="lblMileage" runat="server" Text="Mileage Cost"></asp:Label>
                <span class="price" style="color: black"><b>$
                    <asp:Label ID="lblMileageCost" runat="server" Text="0"></asp:Label></b></span>
            </p>
            
            <p>
               
                <asp:Label ID="lblTotalCost" runat="server" Text="Total Cost"></asp:Label>
                <span class="price" style="color: black"><b>$
                    <asp:Label ID="lblTotalCostPrice" runat="server" Text="0"></asp:Label></b></span>
            </p>
        </div>
</div>
    <div class="SimpleContainer col-sm-12 col-xs-12 col-md-8 col-lg-8 col-xl-8" style="z-index: 100;">
        
        <div>



        <div class="ProgramReportCard ">
            

            <br />

                <div class="row mx-auto d-flex justify-content-center ">



                   <div class="col-md-4 text-center">
                    <label for="txtOrgDrp" class="label-style">Organization</label>
                   
                                                
                    <asp:DropDownList ID="drpOrganizationList" runat="server"  CssClass="btn btn-default btn-sm dropdown-toggle" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="OrganizationName" DataValueField="OrganizationID" OnSelectedIndexChanged="DrpOrganizationList_IndexChanged" AutoPostBack="true">

                        <asp:ListItem Text="Select an Organization"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT OrganizationName, OrganizationID FROM Organization"></asp:SqlDataSource>

                       </div>


                     <div class="col-4 ">
            <div class="d-flex justify-content-center "> 
   <a href="AddOrganization.aspx" id="btnAddOrg" class=" btn btn-success" runat="server" onclick="btnAddOrg_Click">Add Organization</a>
       </div>
        </div>


                    <div class=" col-md-4">
                        <asp:Label ID="lblInvoice" runat="server" Text="Invoice Number: "></asp:Label>
                         <asp:TextBox   runat="server" ></asp:TextBox>
                  
                    </div>

                      </div>





            <br />
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h5 class="mb-0">

                            <button class="btn btn-block btn-accordion" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Program Information
                            </button>
                        </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-4 ">
                                       <label>Select Program </label>
                                    <asp:DropDownList ID="drpProgramList" runat="server" CssClass="btn btn-light dropdown-toggle" DataSourceID="SqlDataSource1" DataTextField="ProgramName" DataValueField="ProgramID" AppendDataBoundItems="True" OnSelectedIndexChanged="DrpProgramList_SelectedIndexChanged" AutoPostBack="true">

                                        <asp:ListItem Text="Program Name"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                 </div>
                            <br />
                            <div class="row">
                                
                                <div class="col-md-4">
                                       <label>Select a Location Type </label>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT [ProgramID], [ProgramName] FROM [Program]"></asp:SqlDataSource>

                                    <asp:DropDownList ID="drpLocationTypeList" runat="server" CssClass="btn  btn-light dropdown-toggle" AutoPostBack="true" OnSelectedIndexChanged="drpLocationTypeList_SelectedIndexChanged">
                                        <asp:ListItem Text="Location Type"></asp:ListItem>
                                        <asp:ListItem Value="Onsite" Text="Onsite"></asp:ListItem>
                                        <asp:ListItem Value="Offsite" Text="Offsite"></asp:ListItem>
                                        <asp:ListItem Value="Online" Text="Online"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4 mx-auto  Spacing">
                                   <label>Date </label>

                                    <input runat="server" clientidmode="Static" width="100%" type="date" id="datepicker">
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4 mx-auto  Spacing">
                                    <label>Program Time: </label> &nbsp&nbsp
                                    <asp:TextBox ID="programTime" runat="server" type="time" step="900" min="8:00" max="17:00"></asp:TextBox>


                                </div>



                                <div class="col-md-4 mx-auto  Spacing">
                                    <label>Adults </label>
                                    <asp:TextBox ID="txtAdults" runat="server" Width="100%"></asp:TextBox>

                                </div>


                                <div class="col-md-4 mx-auto  Spacing">
                                    <label>Children </label>
                                    <asp:TextBox ID="txtKids" runat="server" Width="100%" ></asp:TextBox>


                                </div>
                            </div>
                            <br />
                            <div class="row">

                                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-10">
                                    <label>Birds </label>
                                    <asp:UpdatePanel ID="UpdateBirds" runat="server">
                                        <ContentTemplate>
                                            <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">

                                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>

                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Bird'"></asp:SqlDataSource>
                                            <br />
                                            <asp:Button ID="btnAllBirds" runat="server" Text="Select All" OnClick="BtnAllBirds_Click" />
                                            <br />
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnAllBirds" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </div>


                                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-10">
                                    <asp:UpdatePanel ID="UpdateReptiles" runat="server">
                                        <ContentTemplate>
                                            <label>Reptiles </label>
                                            <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">
                                                <asp:CheckBoxList ID="CheckBoxList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>
                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Reptile'"></asp:SqlDataSource>
                                            <br />
                                            <asp:Button ID="btnAllReptiles" runat="server" Text="Select All" OnClick="BtnAllReptiles_Click" />
                                            <br />
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnAllReptiles" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </div>

                                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-10">
                                     <label>Mammals </label>
                                    <asp:UpdatePanel ID="UpdateMammals" runat="server">
                                        <ContentTemplate>
                                            <div class="border" style="overflow-y: scroll; width: 100px; height: 200px">
                                                <asp:CheckBoxList ID="CheckBoxList4" runat="server" DataSourceID="SqlDataSource6" DataTextField="AnimalName" DataValueField="AnimalID"></asp:CheckBoxList>
                                            </div>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AnimalName, AnimalID FROM Animal Where AnimalType = 'Mammal'"></asp:SqlDataSource>
                                            <br />
                                            <asp:Button ID="btnAllMammals" runat="server" Text="Select All" OnClick="BtnAllMammals_Click" />
                                            <br />
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnAllMammals" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>

                                </div>
                                <br />
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-4 mx-auto Spacing">

                                    <label>Select Grade </label>




                                    <asp:DropDownList ID="drpAgeLevel" runat="server">
                                        <asp:ListItem>Grade Level</asp:ListItem>
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
                                        
                                        <asp:ListItem>Elementary School</asp:ListItem>
                                        <asp:ListItem>Middle School</asp:ListItem>
                                        <asp:ListItem>High School</asp:ListItem>
                                        <asp:ListItem>Familes</asp:ListItem>
                                        <asp:ListItem>Adults Only</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="col-md-4 mx-auto Spacing">
                                     <label>Select Educators </label>
                                    <div class="border" style="overflow-y: scroll; width: 200px; height: 200px">
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="UserID"></asp:CheckBoxList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT UserID, CONCAT(FirstName, ' ', LastName) as name FROM [User] "></asp:SqlDataSource>
                                    </div>
                                </div>

                                <div class="col-md-4 mx-auto Spacing">
                                     <label>Notes </label>
                                    <textarea id="txtMiscNotes" runat="server" cols="20" rows="3"></textarea>
                                </div>


                                <br />
                                <br />

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6  mx-auto  text-center">
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Add Program" OnClick="BtnAddProgram_Click" />

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" id="headingTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-block btn-accordion collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            Contact Information</button>
                    </h5>
                </div>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container-fluid" style="padding-top: 20px;">
                            <asp:UpdatePanel runat="server" ID="clientPanel">
                                <ContentTemplate>
                                    <asp:DropDownList ID="drpContact" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle" OnSelectedIndexChanged="DrpContact_SelectedIndexChanged" AutoPostBack="True">
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
                                            <div class="col-md-6">
                                                <label for="txtFirstName" class="label-style">First Name</label>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                                            </div>

                                        </div>


                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="txtLastName" class="label-style">Last Name</label>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="txtEmail" class="label-style">Email Address</label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="txtPrimaryNumber" class="label-style">Primary Phone </label>
                                            </div>
                                            <div class="form-group  col-md-6">
                                                <asp:TextBox ID="txtPrimaryNumber" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
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


        <div class="card" id="programLoc" runat="server">
            <div class="card-header" id="headingThree">
                <h5 class="mb-0">
                    <button class="btn btn-block  btn-accordion collapsed"  type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Program Location
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
                                            <label for="txtStreet" class="label-style">Street</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtStreet" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtCity" class="label-style">City</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtCity" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtState" class="label-style">State</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtState" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtCounty" class="label-style">County</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtCounty" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtCountry" class="label-style">Country</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtCountry" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtZipCode" class="label-style">Zip Code</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtZipCode" runat="server" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="txtMileage" class="label-style">Mileage</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <asp:TextBox ID="txtMileage" runat="server" ></asp:TextBox>
                                        </div>
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
            <div class="col-md-4 mx-auto d-flex justify-content-center Spacing">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="SubmitProgram" />
                

            </div>
            <div class="col-md-4 mx-auto d-flex justify-content-center Spacing">
               <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-success" OnClick="Clear" />

            </div>
        </div>


</div>
    </div>
        
        
        

    </div></div>
    <!-- end accordion -->






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


        $(document).ready(function () {
            $('#sidebar').stickyMojo({ footerID: '#footer', contentID: '#main' });
        });


    </script>
</asp:Content>
