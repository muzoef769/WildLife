<%@ Page Title="Reptiles" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Reptiles.aspx.cs" Inherits="Reptiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container-fluid">
        <div class="row AnimalNav d-flex justify-content-center ">
            <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link" href="Birds.aspx">Birds</a>

            </div>
            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link font-weight-bold text-success" href="#">Reptiles</a>

            </div>
            <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
                <a class="AnimalLi nav-link " href="Mammals.aspx">Mammals</a>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 col-lg-4  col-sm-4 col-xs-4 d-flex justify-content-center ProgramTitle">
            <div id="AddAnimalButton" class="col-md-12">
                <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal text-light" onclick="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a> <%--ADD A BIRD/ANIMAL LINK IN THE HREF--%>
            </div>
        </div>
        <div class="col-md-4"></div>


    </div>
    <div class="container">
        <div class="row text-center text-lg-center">
            <div id="Reptile1" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani19" CssClass="animalImg" runat="server" src="Images/cliff.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Clifford</h4>


                    </div>
                </div>
            </div>
            <div id="Reptile2" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani20" CssClass="animalImg" runat="server" src="Images/max.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Max</h4>

                    </div>
                </div>
            </div>

            <div id="Reptile3" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani21" CssClass="animalImg" runat="server" src="Images/21-malcolm.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Malcom</h4>
                    </div>
                </div>
            </div>

            <div id="Reptile4" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani22" CssClass="animalImg" runat="server" src="Images/albus.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Albus</h4>
                    </div>
                </div>
            </div>
        </div>


        <div class="row text-center text-lg-center">
            <div id="Reptile5" data-toggle="modal" data-target="#myModal" class=" AnimalIcons col-xl-3 col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani23" CssClass="animalImg" runat="server" src="Images/22-severus.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Severus</h4>


                    </div>
                </div>
            </div>
            <div id="Reptile6" class=" AnimalIcons col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani24" CssClass="animalImg" runat="server" src="Images/oscar.jpg" OnClick="AnimalInfo_Click" />
                        
                    
                    <div class="caption">
                        <h4>Oscar</h4>

                    </div>
                </div>
            </div>

            <div id="Reptile7" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani25" CssClass="animalImg" runat="server" src="Images/23-emma.jpg" OnClick="AnimalInfo_Click" />
                        
                   
                    <div class="caption">
                        <h4>Emma</h4>
                    </div>
                </div>
            </div>

            <div id="Reptile8" class=" AnimalIcons  col-xl-3  col-lg-4 col-md-6  col-s-6 col-xs-6">
                <div class="thumbnail AnimalInfoDiv">
                    <asp:ImageButton ID="ani26" CssClass="animalImg" runat="server" src="Images/24-wilson.jpg" OnClick="AnimalInfo_Click" />
                       
                    <div class="caption">
                        <h4>Wilson</h4>
                    </div>
                </div>
            </div>
        </div>


       <%-- <script type="text/javascript">
         <!--
    //function Redirect() {
    //    window.location = "AddAnimal.aspx";
    //}
         //-->
      </script>--%>








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
                            <img src="Images/Buddy.jpg"  alt="">
                            
                            <div class="caption">
                                <h4>Clifford</h4>
                            </div>
                        </div>
                    </div>

                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Status: </h4>
                            <p class="NumAd">Activated</p>
                            <h4>Type: </h4>
                            <p class="ProgramCardTitle">Reptile</p>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtName" runat="server" Width="187px" ReadOnly="False"></asp:TextBox>
                            <h4>Species: </h4>
                            <p class="LongDT">Cornsnake</p>
                            <h4>Scientific Name: </h4>
                            <p class="NumCh">Pantherophis guttatus</p>
                           


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
                            <asp:DropDownList ID="DropDownList1" runat="server">

                  <asp:ListItem Value="1">Active</asp:ListItem>
            <asp:ListItem Value="0">Deactive</asp:ListItem>
                        </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlType" runat="server" Visible="true">
                     <asp:ListItem>Bird</asp:ListItem>
                    <asp:ListItem>Mammal</asp:ListItem>
                    <asp:ListItem>Reptile</asp:ListItem>
                    </asp:DropDownList>   
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" ReadOnly="False"></asp:TextBox>
                            <h4>Species: </h4>
                            <asp:TextBox ID="txtSpecies" runat="server" ReadOnly="False"></asp:TextBox>
                            <h4>Scientific Name: </h4>
                            <asp:TextBox ID="txtScientificName" runat="server" ReadOnly="False"></asp:TextBox>
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
                            <asp:Button ID="btnAddModal" runat ="server" Text="Add" Class="btn btn-primary LoginButton FormButton" UseSubmitBehavior="false" OnClick="btnAddModal_Click" ></asp:Button>
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
