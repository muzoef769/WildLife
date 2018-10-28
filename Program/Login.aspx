<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
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
	  <h2 class=" CardTitle d-flex justify-content-center "> Log In</h2>
  <div class="form-group">
    <label for="inputEmail">Email address</label>
      <asp:TextBox ID="txtUsername" placeholder ="Username" required ="required" CssClass="form-control" runat="server" ></asp:TextBox>   
  </div>
  <div class="form-group ">
    <label for="inputPassword">Password</label>
    <asp:TextBox ID="txtPassword" placeholder ="Password" TextMode ="Password" required ="required" CssClass="form-control" runat="server"></asp:TextBox>
      <%--<div class="text-center"><asp:Label ID="lblStatus" runat="server" Visible="false" ForeColor="White"></asp:Label></div>--%>
  </div>
  <div class="form-group ">
      <div class="text-center"><asp:Label ID="lblStatus" runat="server" Visible="true" ForeColor="Transparent" Text="qiejiowqj"></asp:Label></div>
      </div>
        <br>
		<div class="row">
<%-- <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 "></div>--%>
   <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 offset-2">
       <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary LoginButton" OnClick="btnLogin_Click" Text="Login" CausesValidation="true" UseSubmitBehavior="false"/>
   </div>
    <div class="col-md-4 col-sm-4 col-lg-4 col-xs-4 col-xl-4 "><a class="btn btn-primary LoginButton" data-toggle="modal" data-target="#RegisterModal" href="index.html" role="button" runat="server">Register
  </a></div>

    
</div>
  </div>
</div>
</div>
	
	<div class="modal" id="RegisterModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
               <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header NewUserTitle">Register an Account</div>
        <div class="card-body">
          
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                   <label for="firstName">First name</label>
<%--                     <input type="text" id="firstName" class="form-control" placeholder="First name" required="required" autofocus runat="server">--%>
                    <asp:TextBox ID="txtFirstName" class="form-control" placeholder="First name" required="required" runat="server"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <label for="lastName">Last name</label>
<%--                     <input type="text" id="lastName" class="form-control" placeholder="Last name" required="required" runat="server">--%>
                      <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last name" required="required" runat="server"></asp:TextBox>
                   
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                 <label for="AddEmail">Username</label>
<%--                <input type="email" id="AddEmail" class="form-control" placeholder="Email address" required="required" runat="server">--%>
                  <asp:TextBox ID="txtNewUsername" class="form-control" placeholder="Username" required="required" runat="server"></asp:TextBox>
               
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <label for="addPassword">Password</label>
<%--                    <input type="password" id="addPassword" class="form-control" placeholder="Password" required="required" runat="server">--%>
                     <asp:TextBox ID="txtNewPassword" class="form-control" TextMode="Password" placeholder="Password" required="required" runat="server"></asp:TextBox>
                    
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                   <label for="confirmPassword">Confirm password</label>
<%--                     <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required" runat="server">--%>
                     <asp:TextBox ID="txtConfirmPassword" class="form-control" TextMode="Password" placeholder="Password" required="required" runat="server"></asp:TextBox>
                    
                    <br>
                  </div>
                     </div>
                  
                </div>
                
                
              </div>
<asp:RadioButtonList ID="rdoPosition" runat="server">
    <asp:ListItem>  Volunteer </asp:ListItem>
    <asp:ListItem>  Staff </asp:ListItem>
</asp:RadioButtonList>
                  
          </div>
            <asp:Button ID="btnRegister" runat="server"  Text="Register" CssClass="btn btn-primary btn-login LoginButton btn-block" OnClick="btnRegister_Click" UseSubmitBehavior="false"/>
         
          <div class="text-center">
            <a class="d-block small mt-3" data-dismiss="modal" href="#" runat="server">Login Page</a>
          
          </div>
        </div>
      </div>
    </div>
          
              
            </div>
            
        </div>
    </div>
</asp:Content>

