<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <div class="col-md-12">
        <asp:Button ID="btnAddProgram"
            runat="server" 
            CssClass="btn btn-success"
            UseSubmitBehavior="false"
            CauseValidation="true"
            Text="Add Program"
            OnClick="redirectProgram"/>
    </div>
    <br />
    <br />
    <div class="table-responsive">
        <asp:GridView ID="grdViewProgram" runat="server" 
            AutoGenerateColumns="false" DataKeyNames="ProgramID"
            Class="table-responsive-md" AllowSorting="True"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            BackColor="White" HorizontalAlign="Left"
            DataSourceID="ProgramSQL">

            <AlternatingRowStyle BackColor="#999999" BorderColor="#336600" />
            <Columns>
                <asp:CommandField ShowEditButton="true" ShowSelectButton="true"/>

                <asp:TemplateField HeaderText="Program Name"
                    InsertVisible="False"
                    SortExpression="ProgramName"
                    Visible="false">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProgramName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProgamName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Program Type"
                    InsertVisible="False" 
                    SortExpression="ProgramType"
                    Visible="false">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProgramType") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProgramType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Program Cost"
                    InsertVisible="False"
                    SortExpression="ProgramCost"
                    Visible="false">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProgramCost") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProgramCost") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>
</asp:Content>

