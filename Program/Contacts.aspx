<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="main">
        <div class="row">
            <div class="container-fluid AnimalReportContainer">
                <div class="row">
                    <div class="col-lg-6 col-md- 6 col-s-12 col-xl-4">
                        <div class="card-mx-auto AnimalReportCard">
                            <div class="card-body">
                                <h3>Add Contact</h3>

                                <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                                <asp:TextBox ID="txtFirstName" runat="server" Css="form-control"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                                <asp:TextBox ID="txtLastName" runat="server" Css="form-control"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" Css="form-control"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblPhoneNumber" runat="server" Text="Primary Phone Number: "></asp:Label>
                                <asp:TextBox ID="txtPrimaryPhone" runat="server" Css="form-control"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblSecondNumber" runat="server" Text="Secondary Phone Number: "></asp:Label>
                                <asp:TextBox ID="txtSecondaryPhone" runat="server" Css="form-control"></asp:TextBox>
                                <br />
                                <asp:Label ID="lbldrpOrganizationList" runat="server" Text="What organzation would you like to associate the contact with? "></asp:Label>
                                <asp:DropDownList ID="drpOrganizationList" runat="server" CssClass="form-control-sm"></asp:DropDownList>
                                <br />
                                <asp:Button ID="btnAddContact"
                                    runat="server"
                                    CssClass="btn btn-success"
                                    UseSubmitBehavior="false"
                                    CauseValidation="true"
                                    Text="Submit Contact"
                                    OnClick="submitContact"
                                    data-toggle=""/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--ADD POP UP MODAL--%>

    </div>
</asp:Content>


