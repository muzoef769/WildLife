<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PasswordReset.aspx.cs" Inherits="PasswordReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <fieldset>
            <%--<legend>Forgot Password</legend>
            <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RV1"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Please Enter Email"
                SetFocusError="True">
            </asp:RequiredFieldValidator>

            <asp:Button ID="btnPass" runat="server" Text="Submit" OnClick="btnPass_Click" CssClass="error"/>

            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>--%>

            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" 
            BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="Large" 
            onsendingmail="PasswordRecovery1_SendingMail" Width="532px" >                           
                <MailDefinition From="raj2511984@gmail.com" Subject="Forgetton Password" Priority="High">
                </MailDefinition>
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
                <TextBoxStyle Font-Size=Medium />
                <UserNameTemplate>
                    <span style="text-align:center">
                    <font face="Verdana">
                    <h3>Forgot Password </h3>
                        <asp:TextBox ID="UserName" runat="server" 
                        Width="236px"></asp:TextBox>&nbsp;<asp:Button ID="SubmitButton" runat="server" 
                        Text="SEND" CommandName="Submit" /><br />
                    <span  style="color: #FF0000">
                    <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                    </span>
                    </font> 
                    </span>                    
                </UserNameTemplate>
                <QuestionTemplate>
                <h2>Forgot Password</h2>
                    <asp:Literal ID="UserName" runat="server"></asp:Literal><br />
                Please answer your password question : <br />
                <asp:Literal ID="Question" runat="server"></asp:Literal>
                <asp:TextBox ID="Answer" runat="server"></asp:TextBox><br />
                 <asp:Button ID="SubmitButton" runat="server" Text="Send Answer By Mail" 
CommandName="Submit"/><br />
                  <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                </QuestionTemplate>
                <SuccessTemplate>
                Your password has been sent to your email addres
                <asp:Label ID="EmailLabel" runat="server"></asp:Label>
                </SuccessTemplate>
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
                <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#284775" />
        </asp:PasswordRecovery>
        
        </fieldset>
    </div>
</asp:Content>

