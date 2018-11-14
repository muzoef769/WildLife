﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="AddInvoice.aspx.cs" Inherits="AddInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-md-6 mx-auto text-center">

            <h1 class="CardTitle">View Invoice Info</h1>
        </div>
    </div>
   


    <div class="container-fluid ContactContainer mt-0">

<div class="card mx-auto  ProgramCard">
    
    <div class="card-body">

         <div class="table-responsive " style="background-color: transparent; padding-top: 0% !important;">
        <div class="row mx-auto">
            
               <div class="col-xl-4 col-lg-4 col-md-4 col-s-12 ">
                    <asp:Label ID="lblInvoice" runat="server" Text="Invoice Number: "></asp:Label>
                 
                    <asp:TextBox ID="txtInvoice" runat="server" Placeholder="Invoice Number"></asp:TextBox>
                         </div>
             <div class="col-xl-4 col-lg-4 col-md-4 col-s-12">
                    <asp:Label ID="lblOrganization" runat="server" Text="Desired Organization: "></asp:Label>
                    <asp:DropDownList ID="drpInvoiceOrganization" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="viewGridView" DataTextField="OrganizationName" DataValueField="OrganizationID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT [OrganizationID], [OrganizationName] FROM [Organization]"></asp:SqlDataSource>
                     </div>

                         <div class="col-xl-4 col-lg-4 col-md-4 col-s-12 ">
                             <asp:Label  runat="server" Text="Program Invoices "></asp:Label>  <br />
                    <asp:DropDownList ID="ProgramListInvoice" runat="server"></asp:DropDownList>
                              </div>
                    
                

             <div class="col-xl-12 col-lg-12 col-md-12 col-s-12">
                 <br />
                    <asp:GridView ID="GridView5" runat="server" CssClass=" table table-condensed table-bordered table-hover AnimalCard" AutoPostBack="true">
                        <HeaderStyle ForeColor="Black" BackColor="#339933"></HeaderStyle>
                    </asp:GridView>

              </div>
            </div>
        </div>
        <div class="row mx-auto">
            <div class="col-12">
                

                <asp:Button ID="btnAddProgram2Invoice"
                    runat="server"
                    Text="Add Program to Invoice"
                    CssClass="btn mx-auto d-flex justify-content-center btn-success"
                    UseSubmitBehavior="false"
                    CauseValidation="true"/>
                <br />
            </div>
        </div>
    </div>
         </div>
    </div>
                
            </div>
           








    <div class="card-body container-fluid d-flex justify-content-center">
    </div>

    

    
</asp:Content>

