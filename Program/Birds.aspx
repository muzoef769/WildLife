<%@ Page Title="Birds" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Birds.aspx.cs" Inherits="Birds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">

        <div class="row AnimalNav d-flex justify-content-center ">
            <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link font-weight-bold text-success" href="#">Birds</a>

            </div>
            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link " href="Reptiles.aspx">Reptile</a>

            </div>
            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link " href="Mammals.aspx">Mammals</a>

            </div>
        </div>
        <div class="col-md-12">
            <br>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <div id="AddAnimalButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a>
                </div>
            </div>

            <div class="col-md-4"></div>
        </div>
    </div>


    <div class="container">
        <div class="row text-center text-lg-center">

            <div id="Bird1" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ani1" cssclass="animalImg" runat="server" src="Images/Buddy.jpg" onclick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Buddy</h4>
                    </div>
                </div>
            </div>

            <div id="Bird2" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ani2" cssclass="animalImg" runat="server" src="Images/edie.jpg" onclick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Edie</h4>
                    </div>
                </div>
            </div>
            <div id="Bird3" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ani3" cssclass="animalImg" runat="server" src="Images/Verlon.jpg" onclick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Verlon</h4>
                    </div>
                </div>
            </div>

            <div id="Bird4" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ani4" cssclass="animalImg" runat="server" src="Images/maggie.jpg" onclick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Maggie</h4>
                    </div>
                </div>
            </div>
        </div>


        <div class="row text-center text-lg-center">

            <div id="Bird27" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton1" cssclass="animalImg" runat="server" src="Images/hudson.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Hudson</h4>
                    </div>
                </div>
            </div>

            <div id="Bird5" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton2" cssclass="animalImg" runat="server" src="Images/grayson.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Grayson</h4>
                    </div>
                </div>
            </div>

            <div id="Bird6" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton3" cssclass="animalImg" runat="server" src="Images/keeya.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Keeya</h4>
                    </div>
                </div>
            </div>

            <div id="Bird7" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton4" cssclass="animalImg" runat="server" src="Images/07-ruby.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Ruby</h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="row text-center text-lg-center">

            <div id="Bird8" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton5" cssclass="animalImg" runat="server" src="Images/rose.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Rosalie</h4>
                    </div>
                </div>
            </div>

            <div id="Bird9" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton6" cssclass="animalImg" runat="server" src="Images/athena.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Athena</h4>
                    </div>
                </div>
            </div>

            <div id="Bird10" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton7" cssclass="animalImg" runat="server" src="Images/gus.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Gus</h4>
                    </div>
                </div>
            </div>

            <div id="Bird11" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton8" cssclass="animalImg" runat="server" src="Images/papagho.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Papa G'Ho</h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="row text-center text-lg-center">
            <div id="Bird12" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton9" cssclass="animalImg" runat="server" src="Images/quinn.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Quinn</h4>
                    </div>
                </div>
            </div>

            <div id="Bird13" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton10" cssclass="animalImg" runat="server" src="Images/alex.jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Alex</h4>
                    </div>
                </div>
            </div>

            <div id="Bird14" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton11" cssclass="animalImg" runat="server" src="Images/Buttercup%202014%20(17).jpg" onclick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Buttercup</h4>
                    </div>
                </div>
            </div>
            <div id="Bird15" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:imagebutton id="ImageButton12" cssclass="animalImg" runat="server" src="Images/14-jaz.jpg" onclick="AnimalInfo_Click" />

                    <div class="caption">
                        <h4>Jaz</h4>
                    </div>
                </div>
            </div>














        </div>
    </div>





    <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-full" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Program Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body p-4" id="result">


                    <div id="Bird1-1" class=" AnimalIcons AnimalPopUp float-right">
                        <div class=" thumbnail AnimalInfoDiv">
                            <img src="Images/Buddy.jpg" class="animalImg" alt="">

                            <div class="caption">
                                <h4>Buddy</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Status: </h4>
                            <p class="NumAd">Activated</p>
                            <h4>Type: </h4>
                            <p class="ProgramCardTitle">Bird</p>
                            <h4>Name: </h4>
                            <asp:textbox id="txtName" runat="server" readonly="true"></asp:textbox>
                            <h4>Species: </h4>
                            <p class="LongDT">Bald Eagle</p>
                            <h4>Scientific Name: </h4>
                            <p class="NumCh">Haliaeetus leucocephalus</p>



                        </div>
                        <!-- End  Description -->

                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <button data-toggle="modal" data-target="#EditModal" data-dismiss="modal" class="btn btn-primary LoginButton" type="submit">Edit</button>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>



    <div class="modal" id="AddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-full" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add Animal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body p-4" id="resultAdd">




                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Animal Status: </h4>
                            <asp:dropdownlist id="DropDownList1" runat="server">

                  <asp:ListItem Value="1">Active</asp:ListItem>
            <asp:ListItem Value="0">Deactive</asp:ListItem>
                        </asp:dropdownlist>
                            <h4>Type: </h4>
                            <asp:dropdownlist id="ddlType" runat="server" visible="true">
                     <asp:ListItem>Bird</asp:ListItem>
                    <asp:ListItem>Mammal</asp:ListItem>
                    <asp:ListItem>Reptile</asp:ListItem>
                    </asp:dropdownlist>
                            <h4>Name: </h4>
                            <asp:textbox id="txtAddName" runat="server" readonly="False"></asp:textbox>
                            <h4>Species: </h4>
                            <asp:textbox id="txtSpecies" runat="server" readonly="False"></asp:textbox>
                            <h4>Scientific Name: </h4>
                            <asp:textbox id="txtScientificName" runat="server" readonly="False"></asp:textbox>
                            <br>
                            <label for="exampleInputFile">Add Picture</label>
                            <input type="file" id="exampleInputFile">
                            <p class="help-block">Choose Picture of animal</p>
                        </div>
                        <!-- End  Description -->


                    </div>
                    <div class="row">
                        <br>
                    </div>
                    <div class="row">

                        <div class="col-md-2">
                            <asp:button id="btnAddModal" runat="server" text="Add" class="btn btn-primary LoginButton FormButton" usesubmitbehavior="false" onclick="btnAddModal_Click"></asp:button>
                        </div>



                    </div>

                </div>
                <div class="modal-footer">
                    <%--                    <button type="button" data-toggle="modal" data-target="#EditModal" class="btn btn-secondary" data-dismiss="modal">Edit</button>--%>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" id="EditModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-full" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Animal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body p-4" id="resultEdit">


                    <div id="Bird1-1Edit" class=" AnimalIcons AnimalPopUp float-right">
                        <div class=" thumbnail AnimalInfoDiv">
                            <img src="Images/Wildlife-Pics/babyboy.jpg" alt="">
                            <div class="caption">
                                <h4>Buddy</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Name:</h4>
                            <input type="name" class="form-control" id="EditName" placeholder="Change Name">
                            <h4>Common Name:</h4>
                            <input type="name" class="form-control" id="EditCom" placeholder="Change Common Name">
                            <h4>Scientific Name:</h4>
                            <input type="name" class="form-control" id="EditSci" placeholder="Change Scientific Name">
                            <h4>Type:</h4>
                            <input type="name" class="form-control" id="EditType" placeholder="Change Type">
                            <h4>Age:</h4>
                            <input type="name" class="form-control" id="EditAge" placeholder="Change Age">
                        </div>
                        <!-- End  Description -->


                    </div>
                    <div class="row">
                        <br>
                    </div>
                    <div class="row">

                        <div class="col-md-2">
                            <button data-toggle="modal" data-target="#myModal" data-dismiss="modal" class="btn btn-primary LoginButton FormButton" type="submit">Update</button>
                        </div>

                        <div class="col-md-2">
                            <button class="btn btn-primary LoginButton FormButton" type="submit">Delete</button>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

