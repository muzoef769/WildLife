<%@ Page Title="Animal" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
    <%-- <div class="container-fluid ProgramContainer">
        <div class="card mx-auto  ProgramCard">--%>


    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-md-6 mx-auto text-center">

            <h1 class="CardTitle">View Animal Info</h1>
        </div>
    </div>

    <div class="row">
        <br />
        <div id="AddAnimalButton" class="col-lg-2 col-md-4 col-s-4 mx-auto">
            <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a>
        </div>
    </div>

    <br />

    <div class="table-responsive ">
        <div class="row mx-auto ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                <asp:GridView ID="GridView1" runat="server" HeaderStyle-ForeColor="black" ItemStyle-ForeColor="black" AutoGenerateColumns="False" DataKeyNames="AnimalID"
                    Class=" table-responsive-md table table-condensed table-bordered table-hover AnimalCard" DataSourceID="AnimalSQL" BackColor="White" HorizontalAlign="Left"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" Width="800px" Height="600px">

                    <AlternatingRowStyle BackColor="#CCFFCC" />

                    <Columns>
                        <asp:BoundField DataField="AnimalID" HeaderText="AnimalID" InsertVisible="False" ReadOnly="True" SortExpression="AnimalID" Visible="False" />
                        <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
                        <asp:BoundField DataField="AnimalType" HeaderText="AnimalType" SortExpression="AnimalType" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" InsertVisible="False" Visible="False" />
                        <asp:BoundField DataField="TotalKids" HeaderText="TotalKids" ReadOnly="True" SortExpression="TotalKids" />
                        <asp:BoundField DataField="TotalAdults" HeaderText="TotalAdults" ReadOnly="True" SortExpression="TotalAdults" />
                        <asp:BoundField DataField="TotalPeople" HeaderText="TotalPeople" ReadOnly="True" SortExpression="TotalPeople" />
                        <asp:BoundField DataField="TotalPrograms" HeaderText="TotalPrograms" SortExpression="TotalPrograms" ReadOnly="True" />
                        <asp:BoundField DataField="LastUpdatedBy" HeaderText="LastUpdatedBy" SortExpression="LastUpdatedBy" />
                        <asp:ImageField DataImageUrlField="Image" ControlStyle-Height="100" ControlStyle-Width="100">
                        </asp:ImageField>
                    </Columns>

<HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                </asp:GridView>
            </div>



            <div class="col-xl-5 col-lg-12  col-md-12 col-s-12 ">
                <asp:GridView ID="GridView2" runat="server" Visible="False" HorizontalAlign="Center" Class="table-responsive-md AnimalCard table table-condensed table-bordered table-hover" BackColor="White">
                </asp:GridView>
                <br />
                <br />
                <asp:GridView ID="GridView3" runat="server" Visible="False" HorizontalAlign="Center" Class="table-responsive-md AnimalCard table table-condensed table-bordered table-hover" BackColor="White">
                </asp:GridView>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />


    <asp:SqlDataSource
        ID="AnimalSQL"
        runat="server"
        ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>"
        DeleteCommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [AnimalName] = @original_AnimalName AND [AnimalType] = @original_AnimalType AND [Status] = @original_Status AND [LastUpdated] = @original_LastUpdated AND [LastUpdatedBy] = @original_LastUpdatedBy"
        InsertCommand="INSERT INTO [Animal] ([AnimalName], [AnimalType], [Status], [LastUpdated], [LastUpdatedBy]) VALUES (@AnimalName, @AnimalType, @Status, @LastUpdated, @LastUpdatedBy)"
        OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT Animal.AnimalID, Animal.AnimalName, Animal.AnimalType, Animal.Status, Animal.LastUpdatedBy, Animal.Image, SUM(ISNULL(NewProgram.TotalKids, '0')) AS TotalKids, SUM(ISNULL(NewProgram.TotalAdults, '0')) AS TotalAdults, SUM(ISNULL(NewProgram.TotalPeople, '0')) AS TotalPeople, COUNT(AssignAnimal.AssignAnimalID) AS TotalPrograms FROM Animal LEFT OUTER JOIN AssignAnimal ON Animal.AnimalID = AssignAnimal.AnimalID LEFT OUTER JOIN NewProgram ON AssignAnimal.NewProgramID = NewProgram.NewProgramID GROUP BY Animal.AnimalID, Animal.AnimalName, Animal.AnimalType, Animal.Status, Animal.LastUpdatedBy, Animal.Image"
        UpdateCommand="UPDATE [Animal] SET [AnimalName] = @AnimalName, [AnimalType] = @AnimalType, [Status] = @Status, [LastUpdated] = @LastUpdated, [LastUpdatedBy] = @LastUpdatedBy WHERE [AnimalID] = @original_AnimalID AND [AnimalName] = @original_AnimalName AND [AnimalType] = @original_AnimalType AND [Status] = @original_Status AND [LastUpdated] = @original_LastUpdated AND [LastUpdatedBy] = @original_LastUpdatedBy">
        <DeleteParameters>
            <asp:Parameter Name="original_AnimalID" Type="Int32" />
            <asp:Parameter Name="original_AnimalName" Type="String" />
            <asp:Parameter Name="original_AnimalType" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter DbType="Date" Name="original_LastUpdated" />
            <asp:Parameter Name="original_LastUpdatedBy" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AnimalName" Type="String" />
            <asp:Parameter Name="AnimalType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter DbType="Date" Name="LastUpdated" />
            <asp:Parameter Name="LastUpdatedBy" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AnimalName" Type="String" />
            <asp:Parameter Name="AnimalType" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter DbType="Date" Name="LastUpdated" />
            <asp:Parameter Name="LastUpdatedBy" Type="String" />
            <asp:Parameter Name="original_AnimalID" Type="Int32" />
            <asp:Parameter Name="original_AnimalName" Type="String" />
            <asp:Parameter Name="original_AnimalType" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter DbType="Date" Name="original_LastUpdated" />
            <asp:Parameter Name="original_LastUpdatedBy" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>






    <div class="modal" id="AddModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
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
                            <asp:DropDownList ID="ddlAddStatus" runat="server" CssClass="form-control-plaintext attributeDropDown" BorderStyle="solid" AutoCompleteType="Disabled">
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Inactive</asp:ListItem>
                                <asp:ListItem>Temporarily Inactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlAddType" runat="server" CssClass="form-control-plaintext attributeDropDown" BorderStyle="solid" AutoCompleteType="Disabled">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>

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



    <%--      </div>
        </div>--%>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connString %>" SelectCommand="SELECT AssignAnimal.AnimalID, AssignAnimal.NewProgramID, NewProgram.TotalKids, NewProgram.TotalAdults, NewProgram.TotalPeople, NewProgram.DateCompleted, NewProgram.ProgramID, NewProgram.LastUpdated, NewProgram.LastUpdatedBy FROM AssignAnimal INNER JOIN NewProgram ON AssignAnimal.NewProgramID = NewProgram.NewProgramID WHERE AnimalID = AnimalID"></asp:SqlDataSource>
    <%--<asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>--%>
</asp:Content>
