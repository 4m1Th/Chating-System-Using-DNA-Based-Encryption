<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AssignWork.aspx.cs" Inherits="DNAENCRIPTION.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div class="container" style="padding:200px;padding-left:200px">
                       
                            <div class="card"  style="color:white;">
                                <div class="card-header">
                                    <h3>Work</h3>
                                    
                                </div>
                                <div class="card-body" style="top:30px; padding-top:30px;padding-left:150px;padding-right:100px;width:100% !important">

                                        <div class="input-group form-group row">
                                            <div class="col-lg-4" > Employee Name</div> 
                                             <div class="col-lg-8" > 
                                                     <asp:DropDownList ID="aw2" CssClass="form-control" runat="server"></asp:DropDownList>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ControlToValidate="aw2" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                             </div>
                                        </div>
                                    <div class="input-group form-group row">
                                            <div class="col-lg-4" > Work Name</div> 
                                             <div class="col-lg-8" > 
                                                     <asp:DropDownList ID="aw3" CssClass="form-control" runat="server"></asp:DropDownList>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger" ControlToValidate="aw3" ErrorMessage="Fill this field"></asp:RequiredFieldValidator>
                                             </div>
                                        </div>

                                       
                                        <div class="form-group">
                                            <asp:Button ID="submit" class="btn float-left login_btn" runat="server" Text="Submit" OnClick="submit_Click" />

                                           
                                        </div>
                                    </div>
                                   
                                </div>
                                </div>
                    


</asp:Content>
