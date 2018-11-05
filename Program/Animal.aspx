<%@ Page Title="Animal" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <%--<h1 class ="text-dark text-center" style="font:50px arial">Wildlife Center</h1>--%>
   <%-- <div class="container-fluid ProgramContainer">
        <div class="card mx-auto  ProgramCard">--%>
          
    
    <br/>
           <br/>
           <br/>
           <div id="AddAnimalButton" class="col-md-12">
                    <a class="btn btn-primary d-flex  mx-auto justify-content-center btn-AddAnimal" href="#" data-toggle="modal" data-target="#AddModal" role="button">Add Animal</a>
                </div>
           <br/>
           <br/>
           <br/>
     
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AnimalID" Class ="col-md-12 " DataSourceID="AnimalSQL" BackColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#999999" BorderColor="#336600" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="AnimalID" InsertVisible="False" SortExpression="AnimalID" Visible="false">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AnimalID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("AnimalID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AnimalName" SortExpression="AnimalName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AnimalName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("AnimalName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AnimalType" SortExpression="AnimalType">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AnimalType") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("AnimalType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="Status">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Status") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Status") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastUpdated" SortExpression="LastUpdated">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LastUpdated") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("LastUpdated") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastUpdatedBy" SortExpression="LastUpdatedBy">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LastUpdatedBy") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("LastUpdatedBy") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
    <br/>
           <br/>
           <br/>
    
    

    <asp:GridView ID="GridView2" runat="server" Visible="False" BackColor="White">
    </asp:GridView>




            <asp:SqlDataSource 
                ID="AnimalSQL" 
                runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:connString %>"
                DeleteCommand="DELETE FROM [Animal] WHERE [AnimalID] = @original_AnimalID AND [AnimalName] = @original_AnimalName AND [AnimalType] = @original_AnimalType AND [Status] = @original_Status AND [LastUpdated] = @original_LastUpdated AND [LastUpdatedBy] = @original_LastUpdatedBy" 
                InsertCommand="INSERT INTO [Animal] ([AnimalName], [AnimalType], [Status], [LastUpdated], [LastUpdatedBy]) VALUES (@AnimalName, @AnimalType, @Status, @LastUpdated, @LastUpdatedBy)"
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [AnimalID], [AnimalName], [AnimalType], [Status], Convert(CHAR(10),[LastUpdated],101) as [LastUpdated], [LastUpdatedBy] FROM [Animal]" 
                UpdateCommand="UPDATE [Animal] SET [AnimalName] = @AnimalName, [AnimalType] = @AnimalType, [Status] = @Status, [LastUpdated] = @LastUpdated, [LastUpdatedBy] = @LastUpdatedBy WHERE [AnimalID] = @original_AnimalID AND [AnimalName] = @original_AnimalName AND [AnimalType] = @original_AnimalType AND [Status] = @original_Status AND [LastUpdated] = @original_LastUpdated AND [LastUpdatedBy] = @original_LastUpdatedBy">
                <DeleteParameters>
                    <asp:Parameter Name="original_AnimalID" Type="Int32" />
                    <asp:Parameter Name="original_AnimalName" Type="String" />
                    <asp:Parameter Name="original_AnimalType" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="original_LastUpdated" />
                    <asp:Parameter Name="original_LastUpdatedBy" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AnimalName" Type="String" />
                    <asp:Parameter Name="AnimalType" Type="String" />
                    <asp:Parameter Name="Status" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="LastUpdated" />
                    <asp:Parameter Name="LastUpdatedBy" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AnimalName" Type="String" />
                    <asp:Parameter Name="AnimalType" Type="String" />
                    <asp:Parameter Name="Status" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="LastUpdated" />
                    <asp:Parameter Name="LastUpdatedBy" Type="String" />
                    <asp:Parameter Name="original_AnimalID" Type="Int32" />
                    <asp:Parameter Name="original_AnimalName" Type="String" />
                    <asp:Parameter Name="original_AnimalType" Type="String" />
                    <asp:Parameter Name="original_Status" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="original_LastUpdated" />
                    <asp:Parameter Name="original_LastUpdatedBy" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

    <asp:GridView ID="GridView3" runat="server" Visible="False" BackColor="White"></asp:GridView>







    <div class="modal" id="AddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-full" role="document">
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
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Deactive</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Type: </h4>
                            <asp:DropDownList ID="ddlAddType" runat="server" CssClass="form-control-plaintext attributeDropDown" AutoCompleteType="Disabled">
                                <asp:ListItem>Bird</asp:ListItem>
                                <asp:ListItem>Mammal</asp:ListItem>
                                <asp:ListItem>Reptile</asp:ListItem>
                            </asp:DropDownList>
                            <h4>Name: </h4>
                            <asp:TextBox ID="txtAddName" runat="server" CssClass="form-control" AutoCompleteType="Disabled" ReadOnly="False"></asp:TextBox>
                            
                            <br>
                            <label for="exampleInputFile">Add Picture</label>
                            <input type="file" id="exampleInputFile">
                            <p class="help-block">Choose Picture of animal</p>
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













