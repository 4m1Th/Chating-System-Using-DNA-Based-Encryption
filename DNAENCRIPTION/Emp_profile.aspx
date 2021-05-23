<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Emp_profile.aspx.cs" Inherits="DNAENCRIPTION.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="padding:200px;padding-left:200px">

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                      <h3 class="text-center">Profile</h3>
            <br />
            <br />
                                             
            <table class="nav-justified">
                <tr>
                    <td style="width: 180px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="White" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="name" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 180px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="White" Text="Phone"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="phone" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 180px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="White" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="email" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 180px">
                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="White" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="password" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="White"></asp:Label>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#000099" OnClick="LinkButton1_Click">Change Password</asp:LinkButton>
                    </td>
                </tr>
            </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table class="nav-justified" style="height: 259px">
                    <tr>
                        <td style="width: 242px; height: 67px">
                            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="Black" Text="Current Password"></asp:Label>
                        </td>
                        <td style="height: 67px ;padding-top:50px">
                            <asp:TextBox ID="TextBox1" TextMode="Password"  CssClass="form-control" runat="server" Height="30px" Width="314px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" ControlToValidate="TextBox1" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 242px; height: 67px;">
                            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="Black" Text="New Password"></asp:Label>
                        </td>
                        <td style="height: 67px;">
                            <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="form-control" runat="server" Height="30px" Width="314px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" CssClass="text-danger" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>

                            </td>
                    </tr>
                    <tr>
                        <td style="width: 242px; height: 67px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="20px" ForeColor="Black" Text="Confirm Password"></asp:Label>
                        </td>
                        <td style="height: 67px">
                            <asp:TextBox ID="TextBox3" TextMode="Password"  CssClass="form-control" runat="server" Height="30px" Width="314px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3"  CssClass="text-danger" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3"  CssClass="text-warning" ErrorMessage="Not Matching" ControlToCompare="TextBox2"></asp:CompareValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 242px">&nbsp;</td>
                        <td>
                             
                                <asp:Button ID="ereg" class="btn btn-default" runat="server" Text="Submit" Width="142px" BackColor="#006699" Font-Size="15pt" ForeColor="Black" OnClick="ereg_Click" />
                       
                        </td>
                    </tr>
                </table>
                </asp:View>
            </asp:MultiView>
                <br />
             <br /> <br /> <br /> <br /> <br />
            </div>
</asp:Content>
