<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="Work_Request.aspx.cs" Inherits="DNAENCRIPTION.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container" style="padding:150px;padding-left:200px">
                       
                            <div class="card"  style="color:white;height:100%">
                                <div class="card-header">
                                    <h3>Work</h3>
                                    
                                </div>
                                <div class="card-body" style="padding-top:10px;padding-left:150px;padding-right:100px">
      

                                        <div class="input-group form-group">
                                            <asp:Label runat="server" ID="work" Text="Enter your project topic" CssClass="form-control" BackColor="Transparent" BorderColor="Transparent" Font-Bold="true" ForeColor="White" Font-Size="20px"></asp:Label><br />
                                            
                                        </div>
                                      <div class="input-group form-group">  
                                    <asp:TextBox ID="name" class="form-control"  runat="server"></asp:TextBox>
                                      </div>
                                    <div class="input-group form-group">
                                            <asp:Label runat="server" ID="Label1" Text="Short description about your work" CssClass="form-control" BackColor="Transparent" BorderColor="Transparent" Font-Bold="true" ForeColor="White" Font-Size="20px"></asp:Label><br />
                                            
                                        </div>
                                      <div class="input-group form-group">  
                                    <asp:TextBox ID="desc" TextMode="MultiLine" class="form-control"  runat="server" Height="177px"></asp:TextBox>
                                      </div>
                                        <div class="form-group">
                                            <asp:Button ID="submit" class="btn float-right login_btn" runat="server" Text="Submit" OnClick="submit_Click" />
                                            <br />
                                            <br />
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Works and Status</asp:LinkButton>
                                    <br />
                                    <br />

                                    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="Work_name" HeaderText="Work" />
                                            <asp:BoundField DataField="status" HeaderText="Status" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="White" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#487575" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#275353" />
                                        </asp:GridView>
                                        </div>
                                   
                                </div>
                                </div>
                               
                            </div>
                       

</asp:Content>
