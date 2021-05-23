<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MemberDetails.aspx.cs" Inherits="DNAENCRIPTION.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container" style="background: url(../images/altnews-twitter-back.jpg)  no-repeat 0px 0px;background-size:cover; max-width:100% !important; width:1500px !important; height:1000px">

    <div class="container" style="padding-top:200px;padding-left:300px">
        <div class="head">
                                <div class="row">
                                   <div class="col-xs-6">

                                        <asp:LinkButton ID="LinkButton1" CssClass="voter-form-link" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">User</asp:LinkButton>
                                    </div>
                                    <div class="col-xs-6" style="padding-left:200px">
                                        <asp:LinkButton ID="LinkButton2" CssClass="candidate-form-link" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">Employee</asp:LinkButton>
                                    </div>
                                </div>
                                </div>
                            
                            <hr />
                            <br />
                            <br />

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>

            </asp:View>
             <asp:View ID="View2" runat="server">
                  <asp:GridView ID="GridView2" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
             </asp:View>
        </asp:MultiView>
    
        </div>
    </div>
</asp:Content>
