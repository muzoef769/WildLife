﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Animal.aspx.cs" Inherits="Animal" %>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 
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
</asp:Content>--%>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<h2>Three Equal Columns</h2>

<div class="row">
  <div class="column" style="background-color:#aaa;">
    <h2>Birds</h2>
    <a href="Animal.aspx">
  <img src="Images/storyblocks-bald-eagle-haliaeetus-leucocephalus-portrait-of-brown-bird-of-prey-with-white-head-yellow-bill-symbol-of-freedom-of-the-united-states-of-america-alaska-usa_ScUQXlQ7-G.jpg" /> 
</a>
    <br /> 
     <br /> 
    <asp:Button ID="ViewBird" runat="server" Text="View Bird" OnClick="btnViewProfile"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="BirdReport" runat="server" Text="Create Bird Report" />
      
  </div>
  <div class="column" style="background-color:#bbb;">
    <h3>Mammals</h3>
    <a href="Animal.aspx">
        <img src="Images/149_2101619.jpg" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="ViewMammal" runat="server" Text="View Mammal" OnClick="btnViewProfile"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="MammalReport" runat="server" Text="Create Mammal Report" />




  </div>
  <div class="column" style="background-color:#ccc;">
<h4>Reptiles</h4>
    <a href="Animal.aspx">
        <img src="Images/138_1079348.jpg" />
        
</a>
    <br /> 
     <br /> 
      <asp:Button ID="ViewReptile" runat="server" Text="View Reptile" OnClick="btnViewProfile"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="ReptileReport" runat="server" Text="Create Reptile Report" />

  </div>
</div>

  <%--  <h2>Animal Home Page</h2>
<p>Select the type of Animal</p>

<a href="Animal.aspx">
  <img src="storyblocks-bald-eagle-haliaeetus-leucocephalus-portrait-of-brown-bird-of-prey-with-white-head-yellow-bill-symbol-of-freedom-of-the-united-states-of-america-alaska-usa_ScUQXlQ7-G.jpg" /> 
</a>
    <br /> 
     <br /> 
    <asp:Label ID="Label1" runat="server" Text="Birds"></asp:Label>--%>

</asp:Content>

