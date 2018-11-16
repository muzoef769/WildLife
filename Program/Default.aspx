<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <%-- <div class="text-center mt-5">--%>
    <%--        <h2 class="display-3 text-white">Virginia Wildlife Center</h2>

        <div class="container jumbotron w-25 bg-white shadow">
            <div class="pb-3">
                <img src="Images/owl.png" class="container" />
                <a class="display-4 w-75 container">Login</a>--%>


    <%-- </div>

            <div class="form-group pb-2">
                <asp:Label ID="lblUsername" runat="server" CssClass="font-weight-bold" Text="Username"></asp:Label>
                <br />
                <div class="input-group bg-light">
                    <span class="input-group-addon pl-2 pt-2 pr-2 border rounded-left"><i class="fa fa-user text-dark"></i></span>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control shadow-sm" MaxLength="25" AutoCompleteType="Disabled" Required="required"></asp:TextBox>
                </div>
                <div class="invalid-feedback">Enter Username</div>
            </div>


            <div class="form-group pb-2">
                <asp:Label ID="lblPassword" runat="server" CssClass="font-weight-bold" Text="Password"></asp:Label>
                <br />
                <div class="input-group bg-light">
                    <span class="input-group-addon pl-2 pt-2 pr-2 border rounded-left"><i class="fa fa-unlock-alt text-dark"></i></span>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control shadow-sm" MaxLength="25" AutoCompleteType="Disabled" Required="required"></asp:TextBox>
                </div>
                <div class="invalid-feedback">Enter Password</div>
            </div>

            <asp:Label ID="lblStatus" runat="server" Visible="false"></asp:Label>

            <h6><a class="nav-link" href="NewUser.aspx">Not a User, Click Here!</a></h6> <%--remove, move to admin--%>

    <%--<div class="pt-1">
                <asp:Button ID="btnLogin" runat="server" CssClass="shadow-sm btn-primary rounded" OnClick="btnLogin_Click" Text="Login" CausesValidation="true" />
            </div>

        </div>
    </div>--%>
    <div class="container-fluid LoginContainer">
        <div class="card mx-auto  LoginCard" style="width: 25rem;">
            <div class="card-body ">
                <h2 class=" CardTitle d-flex justify-content-center">Log In</h2>
                <br />
                <div class="form-group ">
                    <%--<label>Username</label>--%>
                    <asp:TextBox ID="txtUsername" placeholder="Username" required="required" CssClass="form-control text-center " runat="server"></asp:TextBox>
                </div>
                <br />
                <div class="form-group ">
                    <%--<label>Password</label>--%>
                    <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" required="required" CssClass="form-control text-center " runat="server"></asp:TextBox>
                    <%--<div class="text-center"><asp:Label ID="lblStatus" runat="server" Visible="false" ForeColor="White"></asp:Label></div>--%>
                </div>
                <div class="form-group ">
                    <div class="text-center">
                        <asp:Textbox ID="txtStatus" runat="server" Visible="true" ForeColor="Transparent" BackColor="Black" BorderStyle="None" ReadOnly="true" OnTextChanged="txtStatus_TextChanged" CssClass="text-center" ></asp:Textbox></div>
                </div>
           
                <div class="row">
                    <%-- <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 "></div>--%>
                    <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 offset-2">
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success btn-block" OnClick="btnLogin_Click" Text="Login" CausesValidation="true" UseSubmitBehavior="false" />
                    </div>
                    <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 ">
                        <a class="btn btn-success btn-block" data-toggle="modal" data-target="#RegisterModal" href="index.html" role="button" runat="server">Register
                        </a>
                    </div>


                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="RegisterModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-full" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="container">
                        
                            <div class="modal-header ">Register an Account</div>
                            <div class="modal-body">

                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <%--                   <label for="firstName">First name</label>--%>
                                                <%--                     <input type="text" id="firstName" class="form-control" placeholder="First name" required="required" autofocus runat="server">--%>
                                                <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First name" required="required" runat="server" MaxLength="50"></asp:TextBox>
                                                <%--<asp:RegularExpressionValidator ID="txtFirstNameRequired" runat="server" ErrorMessage="Include First Name" ValidationGroup="registerValidation" ControlToValidate="txtFirstName"></asp:RegularExpressionValidator>--%>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <%--  <label for="lastName">Last name</label>--%>
                                                <%--                     <input type="text" id="lastName" class="form-control" placeholder="Last name" required="required" runat="server">--%>
                                                <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last name" required="required" runat="server" MaxLength="50"></asp:TextBox>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-label-group">
                                        <%--<label for="AddEmail">Username</label>--%>
                                        <%--                <input type="email" id="AddEmail" class="form-control" placeholder="Email address" required="required" runat="server">--%>
                                        <asp:TextBox ID="txtNewUsername" class="form-control" placeholder="Username" required="required" runat="server" MaxLength="50"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="form-group" >
                                    <div class="form-row" >
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <%--   <label>Password</label>--%>
                                                <input id="txtNewPassword" type="password" class="form-control" placeholder="Password" autocomplete="off" runat="server" clientidmode="Static" required>
                                                <%-- <asp:TextBox ID="txtNewPassword" class="form-control" TextMode="Password" placeholder="Password" required="required" runat="server"></asp:TextBox>--%>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <%--<label>Confirm password</label>--%>
                                                <input id="txtConfirmPassword" type="password" class="form-control" placeholder="Confirm Password" autocomplete="off" runat="server" clientidmode="Static" required>
                                                <div id="errors" class="text-center well" style="font-size: inherit"></div>
                                                <%--<asp:TextBox ID="txtConfirmPassword" class="form-control" TextMode="Password" placeholder="Password" required="required" runat="server"></asp:TextBox>--%>
                                                
                                                <asp:CompareValidator
                                                    ID="cmpConfirmPw"
                                                    runat="server"
                                                    ControlToValidate="txtConfirmPassword"
                                                    ControlToCompare="txtNewPassword"
                                                    Operator="Equal"
                                                    ErrorMessage="Passwords Do Not Match"
                                                    Type="String">
                                                </asp:CompareValidator>
                                            </div>

                                          
                                        </div>
                                        <div class="col-12 text-center" id="JSPassword"></div>
                                

                            </div>
                            <div class="row text-left">
                                <div class="col-md-4 col-sm-6">
                             <asp:RadioButtonList ID="rdoPosition" runat="server">
                                <asp:ListItem>Volunteer</asp:ListItem>
                                <asp:ListItem>Staff</asp:ListItem>
                            </asp:RadioButtonList>
                                </div>
                            </div>
                           
                            </div>
                                </div>
                        
                        <div class="row">
                        <div class="form-group col-md-4 mx-auto">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success btn-block" OnClick="btnRegister_Click" UseSubmitBehavior="false" ValidationGroup="registerValidation" />

                            <div class="text-center">
                                <a class="d-block small mt-3" data-dismiss="modal" href="#" runat="server">Login Page</a>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <br /><br />
        </div>
    </div>


    <asp:ScriptManager runat="server"></asp:ScriptManager>


    <script>
        $(document).ready(function () {
            $("#txtNewPassword").passwordValidation({ "confirmField": "#txtConfirmPassword" },

                function (element, valid, match, failedCases) {

                    $("#JSPassword").html("<pre>" + failedCases.join("\n") + "</pre>");

                    if (valid) $(element).css("border", "2px solid green");
                    if (!valid) $(element).css("border", "1px solid red");
                    if (valid && match) $("#txtConfirmPassword").css("border", "2px solid green");
                    if (!valid || !match) $("#txtConfirmPassword").css("border", "1px solid red");
                });
        });



    </script>

</asp:Content>


