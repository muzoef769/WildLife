<%@ Page Title="Program" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Program.aspx.cs" Inherits="Program" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
<div class="main">

<div class="row">


<div class="container-fluid ProgramContainer">

<div class="card mx-auto  ProgramCard">
  <div class="card-body">
	  <h1 id="ProgramMonth" class=" ProgramCardTitle d-flex justify-content-center "> April</h1>
	  <h4 class=" ProgramCardTitle Underline d-flex justify-content-center "> Off-Site</h4>
	 
    <div class="d-flex justify-content-center "> <button data-toggle="modal" data-target="#AddProgramModal" class="btn btn-primary LoginButton" type="button">Add Program</button></div>
   

  
  	
  <div class="ProgramShort">
  <div class="row">
  <div class="col-md-12"><h5 class="ProgramCardTitle float-left"> Birds of Prey</h5></div>
</div>
 <div class="row">
   
   
   <div class="table-responsive">
    <table class="table table-bordered ProgramBioShort">
        <thead>
            <tr>
               
                <th>Status</th>
                <th>Organization Name</th>
                <th>Educator(s)</th>
                <th>Date/Time</th>
               
            </tr>
        </thead>
      <tbody>
            <tr>
               
                <td class="ShortStatus">Completed</td>
                <td class="ShortOrgName">JMU</td>
                <td class="ShortEd">Raina</td>
                <td class="ShortDT">4/2/2018 3:00</td>
           
            </tr>
           
        </tbody>
    </table>
</div>
 
</div>

  </div>
  
  <div class="ProgramShort">
  
  
  
<%--  <div class="row">
  <a href="#" data-toggle="modal" data-target="#ProgramModal">
  <div class="col-md-12"><h5 class="ProgramCardTitle float-left " > Wild Winter Worlds</h5></div></a>
</div>--%>
 
<%-- <div class="row">
  <div class="table-responsive">
    <table class="table table-bordered ProgramBioShort">
        <thead>
            <tr>
               
                <th>Status</th>
                <th>Organization Name</th>
                <th>Educator(s)</th>
                <th>Date/Time</th>
               
            </tr>
        </thead>
      <tbody>
            <tr>
               
                <td class="ShortStatus">Pending</td>
                <td class="ShortOrgName">JMU</td>
                <td class="ShortEd">Raina, Alex</td>
                <td class="ShortDT">4/3/2018 3:00</td>
           
            </tr>
           
        </tbody>
    </table>
</div>
</div>--%>
</div>
 
	<br>

</div>
</div>
</div>
</div>
<asp:Label ID="lblErrorMessage" runat="server"></asp:Label>

<%--<div class="modal" id="EditProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Edit Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultEditProgram">
                    
                  <div class="row  ">
                  
	    <div class=" col-md-6">
	    <h4> Program:</h4> <input type="name" class="form-control" id="EditProgram" placeholder="Change Program Name">
	    <h4> Type:</h4> <input type="name" class="form-control" id="EditProgramType" placeholder="Change Type">
	    <h4> Date/Time:</h4> <input type="name" class="form-control" id="EditDT" placeholder="Change Date/Time">
	    <h4> Number of Kids:</h4> <input type="name" class="form-control" id="EditNumKid" placeholder="Number of Kids">
	    <h4> Number of Adults:</h4> <input type="name" class="form-control" id="EditNumAdult" placeholder="Number of Adults">
	    <h4> Educators:</h4> <input type="name" class="form-control" id="EditEd" placeholder="Change Educators">
	    <h4> Mileage:</h4> <input type="name" class="form-control" id="EditMiles" placeholder="Change Mileage">
	    
	    <br>
	     <h4 class="Animal"> Birds:</h4> <br/>
<div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Birds <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Buddy</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Verlon</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Edie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Maggie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Grayson</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Keeya</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Ruby</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Rosalie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Athena</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Gus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Papa G'Ho</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Quin</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Buttercup</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Jaz</a></li>
  
</ul>
  </div>
</div>
  </div>
</div>
	     
	     <br>
	     <h4 class="Animal"> Reptiles:</h4> 
	     <br>
	     <div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Reptiles <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Malcom</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Albus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Severus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Oscar</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Emma</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Wilson</a></li>
</ul>
  </div>
</div>
  </div>
</div>
	     
	     <br>
	     <h4 class="Animal"> Mammals:</h4> 
	     <br>
	     <div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Mammals <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Bo</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Posie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Willow</a></li>

  
</ul>
  </div>
</div>
  </div>
</div>
    
    <div class="row">
    <br>
</div>
	    <div class="row">
    <div class="col-md-4"> <button data-toggle="modal" data-target="#ProgramModal" data-dismiss="modal" class="btn btn-primary LoginButton" type="submit">Save</button></div>
   
</div>
	   
			</div> <!-- End  Description --> 
			
			 <div class=" col-md-6 ">
	    <h4> Organization:</h4>
            <asp:TextBox ID="txtOrganization" runat="server" CssClass="form-control" Placeholder="Add DICK Organization"></asp:TextBox>
        <h4> Contact:</h4>
            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" Placeholder="Add Contact"></asp:TextBox>
	    <h4> Email:</h4>
                 <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Add Email"></asp:TextBox>
	    <h4> Primary Number:</h4>
                 <asp:TextBox ID="txtPrimaryNumber" runat="server" CssClass="form-control" Placeholder="Add Primary #"></asp:TextBox>
	    <h4> Secondary Number:</h4>
                 <asp:TextBox ID="txtSecondaryNumber" runat="server" CssClass="form-control" Placeholder="Add Secondary #"></asp:TextBox>
	    <h4> Billing Address:</h4>
                 <asp:TextBox ID="txtBillingAddress" runat="server" CssClass="form-control" Placeholder="Add Billing Address"></asp:TextBox>
	    <h4> County:</h4>
                 <asp:TextBox ID="txtCounty" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <hr>
	   
	    <h4> Program Total:</h4>
                 <asp:TextBox ID="txtProgramTotal" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <h4> $/Mileage:</h4>
                 <asp:TextBox ID="txtMileage1" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <h4> Check # / Payment:</h4>
                 <asp:TextBox ID="txtPayment" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <h4> Amount Paid:</h4>
                 <asp:TextBox ID="txtPaid" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <hr>
	    <h4> Balance:</h4>
                 <asp:TextBox ID="txtBalance" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>
	    <h4> Invoice:</h4>
                 <asp:TextBox ID="Invoice" runat="server" CssClass="form-control" Placeholder="Add County"></asp:TextBox>

	   
			</div> <!-- End  Description --> 
		
	</div><!-- End  row --> 
          
          
           
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>--%>

<div class="modal" id="AddProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Edit Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultAddProgram">

                <div class="row  ">
                  
	    <div class=" col-md-6">
	    <h4> Program:</h4>
        <asp:DropDownList ID="drpProgramList" runat="server" CssClass="btn btn-default btn-sm dropdown-toggle"></asp:DropDownList>
	    <h4> Type:</h4>
            <asp:TextBox ID="txtType" runat="server" CssClass="form-control" Placeholder="Add Type"></asp:TextBox>
	    <h4> Date/Time:</h4>
            <asp:TextBox ID="txtDate" Cssclass="form-control" runat="server" Placeholder="Add Date/Time"></asp:TextBox>
	    <h4> Number of Kids:</h4>
            <asp:TextBox ID="txtKids" Cssclass="form-control" runat="server" Placeholder="Add Number of Kids"></asp:TextBox>
	    <h4> Number of Adults:</h4>
            <asp:TextBox ID="txtAdults" Cssclass="form-control" runat="server" Placeholder="Add Number of Adults"></asp:TextBox>
	    <h4> Educators:</h4>
            <asp:TextBox ID="txtEducators" Cssclass="form-control" runat="server" Placeholder="Add Educators"></asp:TextBox>
	    <h4> Mileage:</h4>
            <asp:TextBox ID="txtMileage" Cssclass="form-control" runat="server" Placeholder="Add Mileage"></asp:TextBox>
	    
	    <br>
	     <h4 class="Animal"> Birds:</h4> <br/>
<div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Birds <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Buddy</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Verlon</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Edie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Maggie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Grayson</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Keeya</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Ruby</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Rosalie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Athena</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Gus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Papa G'Ho</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Quin</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Buttercup</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Jaz</a></li>
  
</ul>
  </div>
</div>
  </div>
</div>
	     
	     <br>
	     <h4 class="Animal"> Reptiles:</h4> 
	     <br>
	     <div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Reptiles <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Malcom</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Albus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Severus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Oscar</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Emma</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Wilson</a></li>
</ul>
  </div>
</div>
  </div>
</div>
	     
	     <br>
	     <h4 class="Animal"> Mammals:</h4> 
	     <br>
	     <div class="container">
  <div class="row">
       <div class="col-lg-12">
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Mammals <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Bo</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Posie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Willow</a></li>

  
</ul>
  </div>
</div>
  </div>
</div>
    
    <div class="row">
    <br>
    </div>
	    <div class="row">
        <div class="col-md-4"> <button data-dismiss="modal" class="btn btn-primary LoginButton" type="submit">Add</button></div> <%--Needs to add functionality to this button--%>
        </div>
	   
			</div> <!-- End  Description --> 
			
			 <div class=" col-md-6 ">
	    <h4> Organization:</h4>
                 <asp:TextBox ID="txtOrganization" Cssclass="form-control" runat="server" Placeholder="Add Organization"></asp:TextBox>
	    <h4> Contact:</h4>
                 <asp:TextBox ID="txtContact" Cssclass="form-control" runat="server" Placeholder="Add Contact"></asp:TextBox>
	    <h4> Email:</h4>
                 <asp:TextBox ID="txtEmail" Cssclass="form-control" runat="server" Placeholder="Add Email"></asp:TextBox>
	    <h4> Primary Number:</h4>
                 <asp:TextBox ID="txtPrimaryNumber" Cssclass="form-control" runat="server" Placeholder="Add Primary #"></asp:TextBox>
	    <h4> Secondary Number:</h4>
                 <asp:TextBox ID="txtSecondaryNumber" Cssclass="form-control" runat="server" Placeholder="Add Secondary #"></asp:TextBox>
	    <h4> Billing Address:</h4>
                 <asp:TextBox ID="txtBilling" Cssclass="form-control" runat="server" Placeholder="Add Address"></asp:TextBox>
	    <h4> County:</h4>
                 <asp:TextBox ID="txtCounty" Cssclass="form-control" runat="server" Placeholder="Add County"></asp:TextBox>
	    
	    <hr>
	   
	    <h4> Program Total:</h4>
                 <asp:TextBox ID="txtProgramTotal" Cssclass="form-control" runat="server" Placeholder="Add Program Total"></asp:TextBox>
	    <h4> $/Mileage:</h4>
                 <asp:TextBox ID="txtMileageAmount" Cssclass="form-control" runat="server" Placeholder="Add $/Mileage"></asp:TextBox>
	    <h4> Check # / Payment:</h4>
                 <asp:TextBox ID="txtCheck" Cssclass="form-control" runat="server" Placeholder="Add Type of Payment"></asp:TextBox>
	    <h4> Amount Paid:</h4>
                 <asp:TextBox ID="txtAmountPaid" Cssclass="form-control" runat="server" Placeholder="Add Amount Paid"></asp:TextBox>
	    <hr>
	    <h4> Balance:</h4>
                 <asp:TextBox ID="txtBalance" Cssclass="form-control" runat="server" Placeholder="Add Balance"></asp:TextBox>
	    <h4> Invoice:</h4>
                 <asp:TextBox ID="txtInvoice" Cssclass="form-control" runat="server" Placeholder="Add Invoice"></asp:TextBox>

	   
			</div> <!-- End  Description --> 
		
	</div><!-- End  row --> 
          
          
           
            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                <asp:Button ID="btnSubmitProgram" runat="server" CssClass="btn btn-primary LoginButton" Text="Submit Program" CauseValidation="true" OnClick="btnSubmit_Program" UseSubmitBehavior="false" />
            </div>
        </div>
    </div>
</div>


<%--<div class="modal" id="ProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultProgram">
                    
                  <div class="row  ">
                  
	    <div class=" col-md-6">
	    <h4> Program:</h4> <p class="ProgramCardTitle"> Wild Winter Worlds</p>
	    <h4> Type:</h4> <p class="LongType"> On-Site</p>
	    <h4> Date/Time:</h4> <p class="LongDT"> 4/2/2018 3:00</p>
	    <h4> Number of Kids:</h4> <p class="NumCh"> 10</p>
	    <h4> Number of Adults:</h4> <p class="NumAd"> 5</p>
	    <h4> Educators:</h4> <p class="LongEd"> Raina, Alex</p>
	    <h4> Mileage:</h4> <p class="Mile"> 45 Miles</p>
	    
	    <br>
	     <h4 class="Animal"> Birds:</h4> <p class="Birds"> Quinn</p>
	     
	     <br>
	     <h4 class="Animal"> Reptiles:</h4> <p class=" Birds"> Oscar</p>
	     
	     <br>
	     <h4 class="Animal"> Mammals:</h4> <p class=" Birds"> Bo</p>
	     <br>
	     <div class="row">
    <div class="col-md-4"> <button data-toggle="modal" data-target="#EditProgramModal" data-dismiss="modal" class="btn btn-primary LoginButton" type="submit">Edit</button></div>
   
</div>
	   
			</div> <!-- End  Description --> 
			
			 <div class=" col-md-6 ">
	  <h4> Organization:</h4> <p class="LongOrg"> James Madison University</p>
	    <h4> Contact:</h4> <p class="Contact">Jimmy Neutron</p>
	    <h4> Email:</h4> <p class="Email"> Blastoff@gmail.com</p>
	    <h4> Primary Phone:</h4> <p class="PrPhn"> xxx-xxx-xxxx</p>
	    <h4> Secondary Number:</h4> <p class="SecPhn">xxx-xxx-xxxx</p>
	    <h4> Billing Address:</h4> <p class="BillAd"> 800 South Main St, Harrisonburg, VA, 22801</p>
	    <h4> County:</h4> <p class="County"> Rockingham</p>
	    
	    <hr>
	   
	    <h4> Program Total:</h4> <p class="ProgTtl"> $300</p>
	    <h4> $/Mileage:</h4> <p class="MileCst"> </p>
	    <h4> Check # / Payment:</h4> <p class="Check"> #xxxx</p>
	    <h4> Amount Paid:</h4> <p class="AmntPaid"> $200</p>
	    <hr>
	    <h4> Balance:</h4> <p class="Balance"> $100</p>
	    <h4> Invoice:</h4> <p class="Invoice"> AW18-001</p>

	   
			</div> <!-- End  Description --> 
		
	</div><!-- End  row --> 
          
          
           
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>--%>


<ul class="container MonthNav">
                <h3><u>Month</u></h3>
                <li class="MonthLi">January</li>
               
                <li class="MonthLi">February</li>
           
                <li class="MonthLi">March</li>
              
                <li class="MonthLi">April</li>
              
                <li class="MonthLi">May</li>
             
                <li class="MonthLi">June</li>
           
                <li class="MonthLi">July</li>
             
                <li class="MonthLi">August</li>
             
                <li class="MonthLi">September</li>
              
                <li class="MonthLi">October</li>
               
                <li class="MonthLi">November</li>
               
                <li class="MonthLi">December</li>
                
                
            
            </ul>




</div>
</asp:Content>

