<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">


        <div class="container-fluid WelcomeContainer">

            <div class="card mx-auto  WelcomeCard">
                <div class="card-body">

                    <h1 class=" CardTitle  d-flex justify-content-center ">Welcome</h1>



                    <div class="row">
                        <div class="col-md-3">
                            <div class="thumbnail">
                                <img src="Images/notfound.jpg" style="width: 100px;" alt="...">
                                <h3 class="WelcomeName">Raina</h3>
                            </div>

                        </div>
                        <div class="col-md-9">
                            <h3 class="UpcomingPro">Upcoming Programs: 
       
                                <span class=" col-md-auto">
                                    <asp:Label ID="lblCurrentMonth" runat="server" Text="Month" CssClass="text-success"></asp:Label>

                                </span>

                            </h3>

                            <div welcomedate>
                            </div>
                            <asp:Button ID="btnUser" runat="server" Text="Create User" OnClick="btnUser_Click" Visible="false" />
                            <hr class="WelcomeLine">
                            <h4 class="UpcomingThin">November 13: Off-Site, James Madison University</h4>
                            <br>
                            <h4 class="UpcomingThin">November 13: Off-Site, James Madison University</h4>


                            <div>





                                <br>
                            </div>






                        </div>

                    </div>



                </div>
            </div>



        </div>
</asp:Content>
