<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <div class="container" style="width: 800px; margin: 0 auto;">
        <h5 class="display-4 text-white text-center">Successfully Created Invoice!</h5>

        <br />
            <h3 class="text-white text-center">Invoice #:
                <asp:Label runat="server" ID="lblInvoiceNum" Text="JNMT543"></asp:Label> <%--need to pass in Invoice number from addProgram.aspx --%>
            </h3>
        


        <div class="row">
            <div class="jumbotron bg-dark text-white" runat="server" id="content" style="width: 800px; height: 500px; margin: 0 auto;">

<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <li style="font-size: large;">
            <b>Program Name: </b>&nbsp;
            <asp:Label ID="ProgramNameLabel" runat="server" Text='<%# Eval("ProgramName") %>' />
            <br />
            <b>Program Type: </b>&nbsp;
            <asp:Label ID="LocationTypeLabel" runat="server" Text='<%# Eval("LocationType") %>' />
            <br />
            <b class="">Time Slot: </b>
            <asp:Label ID="TimeSlotLabel" runat="server" CssClass="" Text='<%# Eval("TimeSlot") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="font-size: large">
            <b>Program Name: </b>
            <asp:TextBox ID="ProgramNameTextBox" runat="server" Text='<%# Bind("ProgramName") %>' />
            <br />
            <b>Program Type: </b>
            <asp:TextBox ID="LocationTypeTextBox" runat="server" Text='<%# Bind("LocationType") %>' />
            <br />
            <b>Time Slot: </b>
            <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="font-size: large">
            <b>Program Name: </b>
            <asp:TextBox ID="ProgramNameTextBox" runat="server" Text='<%# Bind("ProgramName") %>' />
            <br />
            <b>Program Type: </b>
            <asp:TextBox ID="LocationTypeTextBox" runat="server" Text='<%# Bind("LocationType") %>' />
            <br />
            <b>Time Slot: </b>
            <asp:TextBox ID="TimeSlotTextBox" runat="server" Text='<%# Bind("TimeSlot") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
        <br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="font-size: large">
            <b>Program Name: </b>
            <asp:Label ID="ProgramNameLabel" runat="server" Text='<%# Eval("ProgramName") %>' />
            <br />
            <b>Program Type: </b>
            <asp:Label ID="LocationTypeLabel" runat="server" Text='<%# Eval("LocationType") %>' />
            <br />
            <b>Time Slot: </b>
            <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Eval("TimeSlot") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="font-size: large">
            <b>Program Name: </b>
            <asp:Label ID="ProgramNameLabel" runat="server" Text='<%# Eval("ProgramName") %>' />
            <br />
            <b>Program Type: </b>
            <asp:Label ID="LocationTypeLabel" runat="server" Text='<%# Eval("LocationType") %>' />
            <br />
            <b>Time Slot: </b>
            <asp:Label ID="TimeSlotLabel" runat="server" Text='<%# Eval("TimeSlot") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
                </asp:ListView>



                <asp:SqlDataSource 
                    ID="SqlDataSource1" 
                    runat="server" 
                    ConnectionString="<%$ ConnectionStrings:connString %>" 
                    SelectCommand="SELECT Program.ProgramName, NewProgram.LocationType, NewProgram.TimeSlot FROM Invoice INNER JOIN AssignInvoice ON Invoice.InvoiceID = AssignInvoice.InvoiceID INNER JOIN NewProgram ON AssignInvoice.NewProgramID = NewProgram.NewProgramID INNER JOIN Program ON NewProgram.ProgramID = Program.ProgramID WHERE Invoice.InvoiceNumber = '2'"></asp:SqlDataSource>

                <%--need to use parameter for invoice number--%>

            </div>
            
        </div>







        <div >
            <div class="row mt-3">
                <div class="col text-left">
                    <asp:Button ID="btnCreate" runat="server" Text="Create Another Program" CssClass="btn btn-success" OnClick="btnCreate_Click"></asp:Button>
                </div>
                <div class="col text-right">
                    <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Back To Home" CssClass="btn btn-success"></asp:Button>
                </div>
            </div>
           
            
            
        </div>
        
    </div>









</asp:Content>

