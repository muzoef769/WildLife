﻿<%@ Page Title="Birds" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Birds.aspx.cs" Inherits="Birds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">

        <div class="row AnimalNav d-flex justify-content-center ">
            <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link font-weight-bold text-success" href="#">Birds</a>

            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link " href="Mammals.aspx">Mammals</a>

            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link " href="Reptiles.aspx">Reptiles</a>

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
                    <asp:ImageButton ID="ani1" CssClass="animalImg" runat="server" src="Images/Buddy.jpg" OnClick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Buddy</h4>
                    </div>
                </div>
            </div>

            <div id="Bird2" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani2" CssClass="animalImg" runat="server" src="Images/edie.jpg" OnClick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Edie</h4>
                    </div>
                </div>
            </div>
            <div id="Bird3" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani3" CssClass="animalImg" runat="server" src="Images/Verlon.jpg" OnClick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Verlon</h4>
                    </div>
                </div>
            </div>

            <div id="Bird4" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani4" CssClass="animalImg" runat="server" src="Images/maggie.jpg" OnClick="AnimalInfo_Click" />
                    <div class="caption">
                        <h4>Maggie</h4>
                    </div>
                </div>
            </div>
        </div>


        <div class="row text-center text-lg-center">

            <div id="Bird27" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani27" CssClass="animalImg" runat="server" src="Images/hudson.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Hudson</h4>
                    </div>
                </div>
            </div>

            <div id="Bird5" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani5" CssClass="animalImg" runat="server" src="Images/grayson.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Grayson</h4>
                    </div>
                </div>
            </div>

            <div id="Bird6" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani6" CssClass="animalImg" runat="server" src="Images/keeya.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Keeya</h4>
                    </div>
                </div>
            </div>

            <div id="Bird7" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani7" CssClass="animalImg" class="animalImg" runat="server" src="Images/07-ruby.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Ruby</h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="row text-center text-lg-center">

            <div id="Bird8" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani8" CssClass="animalImg" runat="server" src="Images/rose.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Rosalie</h4>
                    </div>
                </div>
            </div>

            <div id="Bird9" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani9" CssClass="animalImg" runat="server" src="Images/athena.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Athena</h4>
                    </div>
                </div>
            </div>

            <div id="Bird10" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani10" CssClass="animalImg" runat="server" src="Images/gus.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Gus</h4>
                    </div>
                </div>
            </div>

            <div id="Bird11" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani11" CssClass="animalImg" runat="server" src="Images/papagho.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Papa G'Ho</h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="row text-center text-lg-center">
            <div id="Bird12" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani12" CssClass="animalImg" runat="server" src="Images/quinn.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Quinn</h4>
                    </div>
                </div>
            </div>

            <div id="Bird13" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani13" CssClass="animalImg" runat="server" src="Images/alex.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Alex</h4>
                    </div>
                </div>
            </div>

            <div id="Bird14" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani14" CssClass="animalImg" runat="server" src="Images/Buttercup%202014%20(17).jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Buttercup</h4>
                    </div>
                </div>
            </div>
            <div id="Bird15" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani15" CssClass="animalImg" runat="server" src="Images/14-jaz.jpg" OnClick="AnimalInfo_Click" />

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
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                            <h4>Type: </h4>
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtSpecies" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtSciName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="true"></asp:TextBox>


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
                            <asp:DropDownList ID="ddlAddStatus" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Deactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlAddType" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtAddSpecies" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtAddSciName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>
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
                            <asp:Button ID="btnAddModal" runat="server" Text="Add" Class="btn btn-primary LoginButton FormButton" UseSubmitBehavior="false" OnClick="btnAddModal_Click"></asp:Button>
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
                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Animal Status: </h4>
                            <asp:DropDownList ID="ddlEditStatus" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Deactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlEditType" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtEditName" runat="server" class="form-control" AutoCompleteType="Disabled" ReadOnly="false"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtEditSpecies" runat="server" class="form-control" AutoCompleteType="Disabled" ReadOnly="false"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtEditSciName" runat="server" class="form-control" AutoCompleteType="Disabled" ReadOnly="false"></asp:TextBox>
                        </div>
                        <!-- End  Description -->


                    </div>
                    <div class="row">
                        <br>
                    </div>
                    <div class="row">

                        <div class="col-md-2">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn btn-primary LoginButton FormButton" UseSubmitBehavior="false" OnClick="btnUpdate_Click"></asp:Button>
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

