<%@ Page Title="Mammals" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Mammals.aspx.cs" Inherits="Mammals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">
        <div class="row AnimalNav d-flex justify-content-center ">
            <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link" href="Birds.aspx">Birds</a>

            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link font-weight-bold text-success" href="#">Mammals</a>

            </div>

            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link" href="Reptile.aspx">Reptiles</a>

            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
            <div id="AddAnimalButton" class="col-md-12">
                <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal text-light" onclick="Redirect()" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a> <%--ADD A BIRD/ANIMAL LINK IN THE HREF--%>
            </div>
        </div>
        <div class="col-md-4"></div>


    </div>
    <div class="container">


        <div class="row text-center text-lg-center">
            <div id="Mammal1" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani16" CssClass="animalImg" runat="server" src="Images/bo.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Bo</h4>


                    </div>
                </div>
            </div>

            <div id="Mammal2" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani17" CssClass="animalImg" runat="server" src="Images/Posiesmaller.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Posie</h4>


                    </div>
                </div>
            </div>

            <div id="Mammal3" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani18" CssClass="animalImg" runat="server" src="Images/Willowsmall.jpg" OnClick="AnimalInfo_Click" />


                    <div class="caption">
                        <h4>Willow</h4>


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
                            <img src="Images/Bo.jpg" class="animalImg" alt="">

                            <div class="caption">
                                <h4>Bo</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Status: </h4>
                            <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            <h4>Type: </h4>
                            <asp:TextBox ID="txtType" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtSpecies" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtSciName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>


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
                            <asp:DropDownList ID="ddlAddStatus" runat="server" CssClass="form-control-plaintext attributeDropDown">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Deactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlAddType" runat="server" CssClass="form-control-plaintext attributeDropDown">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control" ReadOnly="False"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtAddSpecies" runat="server" CssClass="form-control" ReadOnly="False"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtAddSciName" runat="server" CssClass="form-control" ReadOnly="False"></asp:TextBox>
                            <br>
                            <br>
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
                            <h4>Animal Status: </h4>
                            <asp:DropDownList ID="ddlEditStatus" runat="server" CssClass="form-control">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Deactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlEditType" runat="server" CssClass="form-control">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtEditName" runat="server" class="form-control" ReadOnly="false"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtEditSpecies" runat="server" class="form-control" ReadOnly="false"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtEditSciName" runat="server" class="form-control" ReadOnly="false"></asp:TextBox>
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

