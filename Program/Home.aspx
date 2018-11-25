<%@ Page Title="Home" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
        <div class="container-fluid PaymentContainer col-xl-10  col-lg-10 col-md-11 col-sm-11 col-xs-11">

            <div class="card mx-auto  WelcomeCard ">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class=" CardTitle WelcomeTitle d-flex justify-content-center ">Welcome, <%:Session["UserFullName"] %></h1>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-md-6 mx-auto d-flex justify-content-center">
                            <div id="AddAnimalButton" class=" ml-2">
                                <a class="btn btn-primary d-flex  mx-auto btn-block justify-content-center btn btn-success" style="width: 140px !important;" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a>
                            </div>
                            <div id="AddOrganizationButton" class=" ml-4 ">
                                <a class="btn btn-primary d-flex  mx-auto btn-block justify-content-center btn btn-success" style="width: 140px !important;" href="AddOrganization.aspx" role="button">Add Organization</a>
                            </div>




                            <br>
                        </div>
                        <br />
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-6 mx-auto d-flex justify-content-center">
                            <div id="AddProgramButton" class=" ml-2">
                                <a class="btn btn-primary d-flex  mx-auto btn-block justify-content-center btn btn-success" style="width: 140px !important;" href="AddProgram.aspx" role="button">Add Program</a>
                            </div>
                            <div id="ViewProgramButton" class=" ml-4">
                                <a class="btn btn-primary d-flex  mx-auto btn-block justify-content-center btn btn-success" style="width: 140px !important;" href="Program.aspx" role="button">View Programs</a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>



    </div>
    <div class="row">
        <div class="container-fluid PaymentContainer">

            <div class="card mx-auto  WelcomeCard">
                <div class="card-body align-content-center">
                    <div class="row align-content-center">
                        <div class="col-md-12 mx-auto">
                            <h4 class=" CardTitle WelcomeTitle d-flex justify-content-center ">Approve Volunteer Status</h4>
                        </div>

                                </div>
                        <div class="mx-auto table-responsive">
                            <asp:GridView ID="statusGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                HeaderStyle-ForeColor="black"
                                ItemStyle-ForeColor="black"
                                CssClass=" table-responsive-md table table-condensed table-bordered table-hover AnimalCard justify-content-center"
                                BackColor="White" HorizontalAlign="Center">
                                <Columns>
                                    <%--<asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" InsertVisible="False" Visible="false" ReadOnly="True" />--%>
                                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                    <asp:TemplateField HeaderText="Approve Volunteer?">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkStatus" runat="server" Style="text-align: center" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                            </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>"
                            SelectCommand="SELECT [FirstName], [LastName], [Username] FROM [User] WHERE ([UserStatus] = @UserStatus) AND ([UserType] = @UserType)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Not Approved" Name="UserStatus" Type="String" />
                                <asp:Parameter DefaultValue="Volunteer" Name="UserType" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <br />
                    <div class="col-md-4 mx-auto">
                        <asp:Button ID="btnStatusUpdate" class="btn btn-success btn-block" runat="server" Text="Update Status" OnClick="btnStatusUpdate_Click" />
                    </div>



                </div>
            </div>


        </div>
    </div>
    <br />
    <br />
    <br />
    <br />

    <div class="modal" id="AddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Add Animal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body p-4" id="resultAdd">



                    <div class="row  ">

                        <div class=" col-md-8">
                            <h4>Animal Status: </h4>
                            <asp:DropDownList ID="ddlAddStatus" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Inactive</asp:ListItem>
                                <asp:ListItem>Temporarily Inactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlAddType" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>
                            <h4>Add Image: </h4>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <br>
                        </div>
                        <!-- End  Description -->


                    </div>
                    <div class="row">
                        <br>
                    </div>
                    <div class="row">

                        <div class="col-md-2">
                            <asp:Button ID="btnAddModal" runat="server" Text="Add" Class="btn btn-primary LoginButton FormButton" UseSubmitBehavior="false" OnClick="btnAddModal_Click"></asp:Button>
                        </div>



                    </div>

                </div>
                <div class="modal-footer">
                    <%--                    <button type="button" data-toggle="modal" data-target="#EditModal" class="btn btn-secondary" data-dismiss="modal">Edit</button>--%>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
