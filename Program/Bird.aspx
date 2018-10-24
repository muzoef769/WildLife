<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Bird.aspx.cs" Inherits="Bird" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
    float: left;
    width: 33.33%;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Three Equal Columns</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Birds</h2>
    <a href="Animal.aspx">
  <img src="storyblocks-bald-eagle-haliaeetus-leucocephalus-portrait-of-brown-bird-of-prey-with-white-head-yellow-bill-symbol-of-freedom-of-the-united-states-of-america-alaska-usa_ScUQXlQ7-G.jpg" /> 
</a>
    <br /> 
     <br /> 
    <asp:Label ID="Label1" runat="server" Text="Birds"></asp:Label>
      <p></p>
  </div>
  <div class="column" style="background-color:#bbb;">
    <h2>Column 2</h2>
    <p>Some text..</p>
  </div>
  <div class="column" style="background-color:#ccc;">
    <h2>Column 3</h2>
    <p>Some text..</p>
  </div>
</div>
</asp:Content>

