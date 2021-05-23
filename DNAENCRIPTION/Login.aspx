<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeFile="~/Login.aspx.cs" Inherits="DNAENCRIPTION.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section-middle1" id="bottom">
		<div class="row about-main">
			<div class="col-lg-6 about-text-grid1 text-left">
			</div>
			<div class="col-lg-6 about-right mt-lg-0 mt-4" style="padding-left:30px;padding-right:30px;padding-top:130px" >
				<h3 class="tittle1 mb-4"></h3>
                  <p class="mt-4">
                  <div class="container" style="padding:0px">
                       
                            <div class="card" style="color:white">
                                <div class="card-header" >
                                    <h3>Sign In</h3>
                                    
                                </div>
                                <div class="card-body">
                                    <div>

                                         <div class="input-group form-group">
                                             <asp:RadioButton ID="RadioButton1"  runat="server" GroupName="type" /> &nbsp &nbsp User &nbsp &nbsp <asp:RadioButton GroupName="type" ID="RadioButton2" runat="server" /> &nbsp &nbspEmployee
                   
                                           
                                        </div>

                                        <div class="input-group form-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                                            </div>
                                            <asp:TextBox ID="name" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="input-group form-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                                            </div>
                                            <asp:TextBox ID="pass"  TextMode="Password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="row align-items-center remember">
                                            <asp:CheckBox ID="CheckBox1" Text="Remember Me" runat="server" />
                                           
				
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="submit" class="btn float-right login_btn" runat="server" Text="Submit" OnClick="submit_Click" />
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="d-flex justify-content-center links">
                                        Don't have an account?<a href="Registeration.aspx">Sign Up</a>
                                    </div>
                                    <%--<div class="d-flex justify-content-center">
                                        <a href="#">Forgot your password?</a>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </p>
			</div>

			
		
</section>  
</asp:Content>
