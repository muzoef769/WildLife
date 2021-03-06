﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

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
                        <asp:TextBox ID="txtStatus" runat="server" Visible="true" ForeColor="Transparent" BackColor="Black" BorderStyle="None" ReadOnly="true" OnTextChanged="txtStatus_TextChanged" CssClass="text-center"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 offset-2">
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success btn-block" OnClick="btnLogin_Click" Text="Login" CausesValidation="true" UseSubmitBehavior="false" />
                    </div>
                    <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 ">
                        <a class="btn btn-success btn-block" data-toggle="modal" data-target="#RegisterModal" href="index.html" role="button" runat="server">Register
                        </a>
                    </div>
                    <div class="align-content-center">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success btn-block" OnClick="PasswordReset" Text="Password Reset" CausesValidation="true" UseSubmitBehavior="false" />
                    </div>
                    <%--<asp:Button ID="btnPass" runat="server" OnClick="PasswordReset" Text="Password Reset" CausesValidation="true" UseSubmitBehavior="false"/>--%>
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
                                            <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First name" required="required" runat="server" MaxLength="50"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last name" required="required" runat="server" MaxLength="50"></asp:TextBox>

                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" required="required" runat="server" MaxLength="50"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtNewUsername" class="form-control" placeholder="Username" required="required" runat="server" MaxLength="50"></asp:TextBox>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input id="txtNewPassword" type="password" class="form-control" placeholder="Password" autocomplete="off" runat="server" clientidmode="Static" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input id="txtConfirmPassword" type="password" class="form-control" placeholder="Confirm Password" autocomplete="off" runat="server" clientidmode="Static" required>
                                            <div id="errors" class="text-center well" style="font-size: inherit"></div>

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
                                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success btn-block" OnClick="btnRegister_Click" UseSubmitBehavior="false" ValidationGroup="registerValidation" OnClientClick="$('#Confirmation').modal()" role="button" />

                                <div class="text-center">
                                    <a class="d-block small mt-3" data-dismiss="modal" href="#" runat="server">Login Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <br />
            <br />
        </div>
    </div>

    <div class="modal" id="Confirmation" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body p-4" id="confirmationMod">

                    <div class="row  ">

                        <h5>Successfully Created User!</h5>
                    </div>

                    <div class="row">
                    </div>
                    <div class="modal-footer">
                        <%--                    <button type="button" data-toggle="modal" data-target="#EditModal" class="btn btn-secondary" data-dismiss="modal">Edit</button>--%>
                    </div>
                </div>
            </div>
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
    <script>
<%--    <script type="text/javascript">
        $(document).ready(function () {
            e.preventDefault();
            $("#btnRegister<?php echo $rnt['id'];?>").click(function () {
                $("#Confirmation<?php echo $rnt['id'];?>").modal('show');
            });
        });
    --%>

        var modal = document.getElementById('Confirmation');
        var btn = document.getElementById("btnRegister");
        var span = document.getElementsByClassName("close")[0];
        btn.onclick = function () {
            modal.style.display = "block";
        }
        span.onclick = function () {
            modal.style.display = "none";
        }
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
    </script>


</asp:Content>


