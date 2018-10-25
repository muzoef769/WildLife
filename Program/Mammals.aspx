<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Mammals.aspx.cs" Inherits="Mammals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

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
    <%--</head>
<body>--%>

    <h2>All Mammals</h2>

    <div class="row">
        <div class="column" style="background-color: #aaa;">
            <h2>Bo</h2>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/bo.jpg" OnClick="animal_OnClicked" />
            <%--<a href="Animal.aspx?field1=16" >
                <img src="Images/bo.jpg" style="width: 150px" />

            </a>--%>
            <br />
            <br />


        </div>
        <div class="column" style="background-color: #bbb;">
            <h2>Posie</h2>
            <a href="Animal.aspx?field1=17">
                <img src="Images/Posiesmaller.jpg" style="width: 150px" />

            </a>
            <br />
            <br />






        </div>
        <div class="column" style="background-color: #ccc;">
            <h2>Willow</h2>
            <a href="Animal.aspx?field1=18">
                <img src="Images/Willowsmall.jpg" style="width: 150px" />

            </a>
            <br />
            <br />






        </div>
    </div>


    <div class="modal fade" id="animalModal" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalTitle">Animal</h5>
                            <a role="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true" class="text-danger" >&times;</span>
                            </a>
                        </div>
                        <div class="modal-body">
                            
         <div class=" offset-2">
        <br />
        
        <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp<asp:TextBox ID="txtType" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:DropDownList ID="ddlType" runat="server" Visible="false">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
         </asp:DropDownList>   
        <br />
        <br />
         <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="187px" ReadOnly="True"></asp:TextBox>
        <br />
        
        <br />
                <br />
        <asp:Label ID="lblSpecies" runat="server" Text="Species: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSpecies" runat="server" ReadOnly="True"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="lblScientificName" runat="server" Text="Scientifc Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtScientificName" runat="server" ReadOnly="True"></asp:TextBox>
        <br />

        <br />
        
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <br />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" Width="102px"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="102px" Visible="False" />
             </div>
    <
                        </div>
<%--                        <div class="modal-footer">
                            <a role="button" class="btn btn-primary" data-dismiss="modal">Close</a>
                        </div>--%>
    </div>
    </div>
            </div>


</asp:Content>

