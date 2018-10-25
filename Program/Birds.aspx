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
                        <a href="Animal.aspx?field1=1">  <%--have to change if changing to pop form--%>
                            <img src="Images/Buddy.jpg" style="width: 150px"/>
                        </a>
                    </div>
                </div>

                <br />
                <br />
               

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Edie</h2>
                <a href="Animal.aspx?field1=2">
                    <img src="Images/edie.jpg" style="width: 150px"/>
                </a>
                <br />
                <br />
                





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Verlon</h2>
                <a href="Animal.aspx?field1=3">
                    <img src="Images/Verlon.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                





            </div>
        </div>



        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Maggie</h2>
                <a href="Animal.aspx?field1=4">
                    <img src="Images/maggie.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Hudson</h2>
                <a href="Animal.aspx?field1=27">
                    <img src="Images/hudson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               






            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Grayson</h2>
                <a href="Animal.aspx?field1=5">
                    <img src="Images/grayson.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               






            </div>
        </div>
<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Keeya</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=6">
                            <img src="Images/keeya.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Ruby</h2>
                <a href="Animal.aspx?field1=7">
                    <img src="Images/07-ruby.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Rosalie</h2>
                <a href="Animal.aspx?field1=8">
                    <img src="Images/rose.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                >





            </div>
        </div>

<div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Athena</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=9">
                            <img src="Images/athena.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
               

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Gus</h2>
                <a href="Animal.aspx?field1=10">
                    <img src="Images/gus.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
                





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Papa G'Ho</h2>
                <a href="Animal.aspx?field1=11">
                    <img src="Images/papagho.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
        </div>

        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Quinn</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=12">
                            <img src="Images/quinn.jpg" style="width: 150px" />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            <div class="column" style="background-color: #bbb;">
                <h2>Alex</h2>
                <a href="Animal.aspx?field1=13">
                    <img src="Images/alex.jpg" style="width: 150px" />
                </a>
                <br />
                <br />
               





            </div>
            <div class="column" style="background-color: #ccc;">
                <h2>Buttercup</h2>
                <a href="Animal.aspx?field1=14">
                    <img src="Images/Buttercup%202014%20(17).jpg" style="width: 150px"   />
                </a>
                <br />
                <br />
               





            </div>
        </div>
        <div class="row">
            <div class="column" style="background-color: #aaa;">
                <h2>Jaz</h2>
                <div >
                    <div class="">
                        <a href="Animal.aspx?field1=15">
                            <img src="Images/14-jaz.jpg" style="width: 150px"  />
                        </a>
                    </div>
                </div>

                <br />
                <br />
                

            </div>
            </div>


<%--    </body>
    </html>

--%>









</asp:Content>

