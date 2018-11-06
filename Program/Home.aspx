<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="container-fluid WelcomeContainer">

            <div class="card mx-auto  WelcomeCard">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class=" CardTitle WelcomeTitle d-flex justify-content-center ">Welcome</h1>
                        </div>
                         </div>



                    <div class="row">
                         <div class="col-md-6 mx-auto d-flex justify-content-center">
                             <div id="AddAnimalButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a>
                </div>
                            <div id="AddOrganizationButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="AddOrganization.aspx" role="button">Add Organization</a>
                </div>
                             
                             
                             
                             
                            <br>
       
                               

                        </div>
                        <br />
                        </div>
                        <br />
                        
                        
                    <div class="row">
                      <div class="col-md-6 mx-auto d-flex justify-content-center">
                            <div id="AddProgramButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="AddProgram.aspx" role="button">Add Program</a>
                </div>
                         <div id="ViewProgramButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="Program.aspx" role="button">View Programs</a>
                </div>   
                             
       
                               

                        </div>

                        </div>
                    

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





</asp:Content>
