<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div class="container-fluid WelcomeContainer">

            <div class="card mx-auto  WelcomeCard">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class=" CardTitle  d-flex justify-content-center ">Welcome</h1>
                        </div>
                         </div>



                    <div class="row">
                       <div   class=" mx-auto col-md-4 col-s-5">
                <div class="thumbnail WelcomeInfoDiv ">
                    <asp:ImageButton ID="ImageButton1" CssClass=" img-responsive animalImg d-flex justify-content-center" runat="server" src="Images/Raina-and-Edie.jpg" />
                        
                    
                    <div class="caption">
                        <h4">Raina</h4>
                    </div>
                </div>
            </div>
                        </div>
                        <div class="col-md-12 mx-auto text-center">
                            <h3 class="UpcomingPro">Upcoming Programs: 
       
                               

                                <span class=" col-md-auto">
                                    <asp:Label ID="lblCurrentMonth" runat="server" Text="Month" CssClass="text-success"></asp:Label>

                                </span>


                            </h3>



                            <div welcomedate>
                            </div>
                            <asp:Button ID="btnUser" runat="server" Text="Create User" OnClick="btnUser_Click" Visible="false" />
                            <hr class="WelcomeLine">
                            <h4 class="UpcomingThin">November 3: On-Site, James Madison University</h4>
                           
                            <h4 class="UpcomingThin">November 8: Off-Site, Penn Elementary Program 1</h4>
                            <h4 class="UpcomingThin">November 8: Off-Site, Penn Elementary Program 2</h4>
                            <h4 class="UpcomingThin">November 14: Online, University of Antwerp</h4>


                            <div>





                                <br>
                            </div>



                        </div>


                    

                </div>




            </div>
        </div>



    </div>
</asp:Content>
