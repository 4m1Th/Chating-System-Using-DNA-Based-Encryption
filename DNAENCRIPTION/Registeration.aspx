<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="DNAENCRIPTION.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="section-middle1" id="bottom">
		<div class="row about-main">
			<div class="col-lg-6 about-text-grid1 text-left">
			</div>
			<div class="col-lg-6 about-right mt-lg-0 mt-4" style="padding-left:30px;padding-right:30px;padding-top:130px" >
				<%--<h3 class="tittle1 mb-4"></h3>--%>
				<p class="mt-4">
                         <div class="head">
                                <div class="row">
                                   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <div class="col-xs-6">

                                        <asp:LinkButton ID="LinkButton1" CssClass=" voter-form-link" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">User</asp:LinkButton>
                                    </div>&nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    <div class="col-xs-6">
                                        <asp:LinkButton ID="LinkButton2" CssClass="candidate-form-link" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">Employee</asp:LinkButton>
                                    </div>
                                </div>
                                </div>
                            
                            <hr />
                            <br />
                            <br />
                  <div class="container" style="padding:0px">
                          <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                        <div class="card" style="color:white">
                           
                                    
                                    <br />
                               
                                <div class="card-body" style="padding-left:60px;padding-top:5px">
                                    <div>

                                         <div class="input-group form-group">
                                 <asp:TextBox ID="Client_name" class="form-control" placeholder="Full Name" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="Client_name" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                   
                                           
                                        </div>

                                        <div class="input-group form-group">
                                            
                                               <asp:TextBox ID="Phone_no" class="form-control" placeholder="Phone_no" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ControlToValidate="Phone_no" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9]{10}$" ControlToValidate="Phone_no" ErrorMessage="Fill this field"></asp:RegularExpressionValidator>
                                            </div>
                                        <div class="input-group form-group">
                                         
                                              <asp:TextBox ID="Mail_id" class="form-control" placeholder="Mail_id" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger" ControlToValidate="Mail_id" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="input-group form-group">
                                             <asp:TextBox ID="Password" TextMode="Password" class="form-control" placeholder="Password" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="text-danger" ControlToValidate="Password" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                           
				
                                        </div>
                                        <div class="input-group form-group">
                                             <asp:TextBox ID="Confirm_password" TextMode="Password"  class="form-control" placeholder="Confirm_password" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass="text-danger" ControlToValidate="Confirm_password" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="Confirm_password" ControlToCompare="Password" ErrorMessage="CompareValidator"></asp:CompareValidator>       
				
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="submit" class="btn float-left login_btn" runat="server" Text="Submit" OnClick="submit_Click"/>

                                           
                                        </div>
                                    </div>
                                </div>
                             
                            </div>
                                    </asp:View>
                              <asp:View ID="View2" runat="server">
                                        <div class="card" style="color:white">
                                <div class="card-header">
                                   <br />
                                    
                                </div>
                                <div class="card-body" style="padding-left:60px;padding-top:5px">
                                    <div>

                                         <div class="input-group form-group">
                                 <asp:TextBox ID="TextBox1" class="form-control" placeholder="Full Name" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="text-danger" ControlToValidate="TextBox1" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                   
                                           
                                        </div>

                                        <div class="input-group form-group">
                                            
                                               <asp:TextBox ID="TextBox2" class="form-control" placeholder="Phone_no" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="text-danger" ControlToValidate="TextBox2" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^[0-9]{10}$" ControlToValidate="TextBox2" ErrorMessage="Fill this field"></asp:RegularExpressionValidator>
                                            </div>
                                        <div class="input-group form-group">
                                         
                                              <asp:TextBox ID="TextBox3" class="form-control" placeholder="Mail_id" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="text-danger" ControlToValidate="TextBox3" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="input-group form-group">
                                             <asp:TextBox ID="TextBox4" TextMode="Password"  class="form-control" placeholder="Password" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass="text-danger" ControlToValidate="TextBox4" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                           
				
                                        </div>
                                        <div class="input-group form-group">
                                             <asp:TextBox ID="TextBox5" TextMode="Password"  class="form-control" placeholder="Confirm_password" runat="server" Width="400px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass="text-danger" ControlToValidate="TextBox5" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox5" ControlToCompare="TextBox4" ErrorMessage="CompareValidator"></asp:CompareValidator>       
				
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="Button1" class="btn float-left login_btn" runat="server"  Text="Submit" OnClick="Button1_Click"  />
                                           
                                        </div>
                                    </div>
                                </div>
                             
                            </div>
                              </asp:View>
                              </asp:MultiView>
                  </div>
                    </p>
			</div>
			</div>
		
</section>  
</asp:Content>
