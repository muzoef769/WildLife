<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <script>$("button").click(function(){
  var columns_container = $(".dynamic-columns");
  if (!columns_container.hasClass("expanded")) {
    $(".dynamic-columns .col:first").removeClass("col-xs-2");
    $(".dynamic-columns .col:first").addClass("col-xs-1");
    
    $(".dynamic-columns .col:last-child").removeClass("col-xs-8");
    $(".dynamic-columns .col:last-child").addClass("col-xs-9");
    columns_container.toggleClass("expanded");
  }
  else {
    $(".dynamic-columns .col:first").removeClass("col-xs-1");
    $(".dynamic-columns .col:first").addClass("col-xs-2");
    
    $(".dynamic-columns .col:last-child").removeClass("col-xs-9");
    $(".dynamic-columns .col:last-child").addClass("col-xs-8");
    columns_container.toggleClass("expanded");
  }
});</script>


    <div class="row">
        <div class="col-md-6 mx-auto text-center">
            <h1 class="OpenCardTitle">View Program Info</h1>
        </div>
    </div>


    <div class="row">
        <br />
        <div id="AddAnimalButton" class="col-lg-2 col-md-4 col-s-4  d-flex  mx-auto justify-content-center">
             <asp:Button ID="btnAddProgram"
            runat="server"
            CssClass="btn btn-primary  btn-AddAnimal"
            UseSubmitBehavior="false"
            CauseValidation="true"
            Text="Add Program"
            OnClick="redirectProgram" />
        </div>
    </div>


    

    <br />

    <div class="table-responsive">
            
        <div class="row mx-auto d-flex justify-content-center ">
            <div class="col-xl-7 col-lg-12 col-md-12 col-s-12 ">
                <asp:GridView ID="GridView1" runat="server"
                    HeaderStyle-ForeColor="black"
                    ItemStyle-ForeColor="black" AutoGenerateColumns="False"
                    DataKeyNames="ProgramID" CssClass=" table-responsive-md table table-condensed table-bordered table-hover AnimalCard"
                    DataSourceID="ProgramSQL" BackColor="White" HorizontalAlign="Left"
                    AllowSorting="True">

                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />

                        <asp:TemplateField HeaderText="ProgramID" InsertVisible="False" SortExpression="ProgramID" Visible="false">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProgramID") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProgramID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Program Name" SortExpression="ProgramName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProgramName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProgramName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Program Type" SortExpression="ProgramType">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProgramType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProgramType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Program Cost" SortExpression="ProgramCost">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProgramCost") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProgramCost") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Capacity" SortExpression="Capacity">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Capacity") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Capacity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Last Updated" SortExpression="LastUpdated">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastUpdated") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastUpdated") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Last Updated By" SortExpression="LastUpdatedBy">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastUpdatedBy") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastUpdatedBy") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <HeaderStyle ForeColor="White" BackColor="#777678"></HeaderStyle>
                </asp:GridView>

                <asp:SqlDataSource
                    ID="ProgramSQL"
                    runat="server"
                    ConflictDetection="CompareAllValues"
                    ConnectionString="<%$ ConnectionStrings:connString %>"
                    DeleteCommand="DELETE FROM [Program] WHERE [ProgramID] = @original_ProgramID AND [ProgramName] = @original_ProgramName AND [ProgramType] = @original_ProgramType AND [ProgramCost] = @original_ProgramCost AND [Capacity] = @orginial_Capacity AND [LastUpdated] = @original_LastUpdated AND [LastUpdatedBy] = @original_LastUpdatedBy"
                    InsertCommand="INSERT INTO [Program] ([ProgramName], [ProgramType], [ProgramCost], [Capacity], [LastUpdated], [LastUpdatedBy]) VALUES (@AnimalName, @AnimalType, @ProgramCost, @Capacity, @LastUpdated, @LastUpdatedBy)"
                    OldValuesParameterFormatString="original_{0}"
                    SelectCommand="SELECT [ProgramID], [ProgramName], [ProgramType], [ProgramCost], [Capacity], Convert(CHAR(10),[LastUpdated],101) as [LastUpdated], [LastUpdatedBy] FROM [Program]"
                    UpdateCommand="UPDATE [Program] SET [ProgramName] = @ProgramName1 AND [ProgramType] = @ProgramType1 AND [ProgramCost] = @ProgramCost1 AND [Capacity] = @Capacity1 AND [LastUpdated] = @LastUpdated1 AND [LastUpdatedBy] = @LastUpdatedBy1 WHERE [ProgramID] = @ProgramID2 AND [ProgramName] = @ProgramName2 AND [ProgramType] = @ProgramType2 AND [ProgramCost] = @ProgramCost2 AND [Capacity] = @Capacity2 AND [LastUpdated] = @LastUpdated2 AND [LastUpdatedBy] = @LastUpdatedBy2">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ProgramID" Type="Int32" />
                        <asp:Parameter Name="original_ProgramName" Type="String" />
                        <asp:Parameter Name="original_ProgarmType" Type="String" />
                        <asp:Parameter Name="original_ProgramCost" Type="Double" />
                        <asp:Parameter Name="original_Capacity" Type="Int32" />
                        <asp:Parameter Name="original_LastUpdated" DbType="Date" />
                        <asp:Parameter Name="original_LastUpdatedBy" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProgramName" Type="String" />
                        <asp:Parameter Name="ProgramType" Type="String" />
                        <asp:Parameter Name="ProgramCost" Type="Double" />
                        <asp:Parameter Name="Capacity" Type="Int32" />
                        <asp:Parameter Name="LastUpdated" DbType="Date" />
                        <asp:Parameter Name="LastUpdatedBy" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProgramName1" Type="String" />
                        <asp:Parameter Name="ProgramType1" Type="String" />
                        <asp:Parameter Name="ProgramCost1" Type="Double" />
                        <asp:Parameter Name="Capacity1" Type="Int32" />
                        <asp:Parameter Name="LastUpdated1" DbType="Date" />
                        <asp:Parameter Name="LastUpdatedBy1" Type="String" />
                        <asp:Parameter Name="ProgramID2" Type="Int32" />
                        <asp:Parameter Name="ProgramName2" Type="String" />
                        <asp:Parameter Name="ProgramType2" Type="String" />
                        <asp:Parameter Name="ProgramCost2" Type="Double" />
                        <asp:Parameter Name="Capacity2" Type="Int32" />
                        <asp:Parameter Name="LastUpdated2" DbType="Date" />
                        <asp:Parameter Name="LastUpdatedBy2" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </div>
</asp:Content>

