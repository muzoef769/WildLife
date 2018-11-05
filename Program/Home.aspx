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
                            <a href="#" class="btn btn-primary WelcomeButton"> Add Animal</a> 
                            <a href="#" class="btn btn-primary WelcomeButton"> Add Organization</a> 
                            <br>
       
                               

                        </div>
                        <br />
                        </div>
                      
                    <div class="row">
                      <div class="col-md-6 mx-auto d-flex justify-content-center">
                            
                            <a href="#" class="btn btn-primary WelcomeButton"> Add Program</a> 
                            <a href="#" class="btn btn-primary WelcomeButton"> View Programs</a> 
       
                               

                        </div>

                        </div>
                    

                </div>




            </div>
        </div>



    </div>
</asp:Content>
