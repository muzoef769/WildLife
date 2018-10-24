<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Birds.aspx.cs" Inherits="Birds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

<%--    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">--%>
        <style>
            * {
                box-sizing: border-box;
            }

            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                width: 33.33%;
                padding: 10px;
                height: 300px; /* Should be removed. Only for demonstration */
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
        </style>
<%--    </head>
    <body>--%>

        <h2>All Birds</h2>

        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Buddy</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx">
                            <img src="Buddy.jpg" style="width: 150px"/>
                        </a>
                    </div>
                </div>

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Create Bird Report" />

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Edie</h2>
                <a href="Animal.aspx">
                    <img src="edie.jpg" style="width: 150px"/>
                </a>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button4" runat="server" Text="Create Bird Report" />





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Verlon</h2>
                <a href="Animal.aspx">
                    <img src="Verlon.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button5" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button6" runat="server" Text="Create Bird Report" />





            </div>
        </div>



        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Maggie</h2>
                <a href="Animal.aspx">
                    <img src="maggie.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="BirdAdd" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="BirdReport" runat="server" Text="Create Bird Report" />

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Hudson</h2>
                <a href="Animal.aspx">
                    <img src="hudson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button7" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button8" runat="server" Text="Create Bird Report" />






            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Grayson</h2>
                <a href="Animal.aspx">
                    <img src="grayson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button9" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button10" runat="server" Text="Create Bird Report" />






            </div>
        </div>
<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Keeya</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx">
                            <img src="keeya.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                <asp:Button ID="Button11" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button12" runat="server" Text="Create Bird Report" />

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Ruby</h2>
                <a href="Animal.aspx">
                    <img src="07-ruby.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button13" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button14" runat="server" Text="Create Bird Report" />





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Rosalie</h2>
                <a href="Animal.aspx">
                    <img src="rose.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button15" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button16" runat="server" Text="Create Bird Report" />





            </div>
        </div>

<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Athena</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx">
                            <img src="athena.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                <asp:Button ID="Button17" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button18" runat="server" Text="Create Bird Report" />

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Gus</h2>
                <a href="Animal.aspx">
                    <img src="gus.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button19" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button20" runat="server" Text="Create Bird Report" />





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Papa G'Ho</h2>
                <a href="Animal.aspx">
                    <img src="papagho.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button21" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button22" runat="server" Text="Create Bird Report" />





            </div>
        </div>

        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Quinn</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx">
                            <img src="quinn.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                <asp:Button ID="Button23" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button24" runat="server" Text="Create Bird Report" />

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Alex</h2>
                <a href="Animal.aspx">
                    <img src="alex.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                <asp:Button ID="Button25" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button26" runat="server" Text="Create Bird Report" />





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Buttercup</h2>
                <a href="Animal.aspx">
                    <img src="Buttercup%202014%20(17).jpg" style="width: 150px"   />
                </a>
                <br />
                <br />
                <asp:Button ID="Button27" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button28" runat="server" Text="Create Bird Report" />





            </div>
        </div>
        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Jaz</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx">
                            <img src="14-jaz.jpg" style="width: 150px"  />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                <asp:Button ID="Button29" runat="server" Text="Add New Bird" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button30" runat="server" Text="Create Bird Report" />

            </div>
            </div>


<%--    </body>
    </html>

--%>









</asp:Content>

