<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Program" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblRadioOnOrOff" runat="server" Text="On or Off-site: "></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>On-Site</asp:ListItem>
        <asp:ListItem>Off-Site</asp:ListItem>
    </asp:RadioButtonList>
    <br />
        <fieldset>
    <asp:Label ID="lblOrganzationName" runat="server" Text="OrganizationName: "></asp:Label>
    <asp:DropDownList ID="drplistOrganizationName" runat="server">
        <asp:ListItem> </asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnAddOrganziation" runat="server" Text="Add Organization" />
        <asp:Button ID="btnEditOrganization" runat="server" Text="Edit Organization" />
        </fieldset>
    <br />
    <fieldset>
        <legend>Contact Information</legend>
    <asp:Label ID="lblJobTitle" runat="server" Text="Job Title:"></asp:Label>
    <asp:DropDownList ID="drplistJobTitle" runat="server">
        <asp:ListItem> </asp:ListItem>
        <asp:ListItem>Other</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
        <asp:Button ID="btnAddJobTitle" runat="server" Text="Add Job Title" />
        <asp:Button ID="btnEditJobTitle" runat="server" Text="Edit Job Title" />
    <br />
    <br />
    <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email Address: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPrimaryPhoneNumber" runat="server" Text="Primary Phone Number: "></asp:Label>
    <asp:TextBox ID="txtPrimaryPhoneNumber" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblSecondaryPhoneNumber" runat="server" Text="Secondary Phone Number: "></asp:Label>
    <asp:TextBox ID="txtSecondaryPhoneNumber" runat="server"></asp:TextBox>
    </fieldset>
    
</asp:Content>

