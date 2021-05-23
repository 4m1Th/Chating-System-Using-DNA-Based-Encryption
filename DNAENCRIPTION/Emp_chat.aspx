<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Emp_chat.aspx.cs" Inherits="DNAENCRIPTION.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <div class="container" style="padding:150px;padding-left:200px">
        <div class="head">
                                <div class="row">
                                   &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <div class="col-xs-6">

                                        <asp:LinkButton ID="LinkButton1" CssClass=" voter-form-link" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Admin</asp:LinkButton>
                                    </div>&nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                    <div class="col-xs-6">
                                        <asp:LinkButton ID="LinkButton2" CssClass="candidate-form-link" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">User</asp:LinkButton>
                                    </div>
                                </div>
                                </div>
                            
                            <hr />
                            <br />
                            <br />
                        <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                            <div class="card"  style="color:white;height:100%">
                                <div class="card-header">
                                    <h3>Admin Chat</h3>
                                    
                                </div>
                                <div class="card-body" style="padding-top:10px;padding-left:150px;padding-right:100px">
            
                                    <div class="input-group form-group">
                                            <asp:Label runat="server" ID="Label1" Text="Message" CssClass="form-control" BackColor="Transparent" BorderColor="Transparent" Font-Bold="true" ForeColor="Black" Font-Size="20px"></asp:Label><br />
                                            
                                        </div>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>

                                   
                                  <asp:Panel ID="Panel1" runat="server"  BackColor="#5ba388" Height="270px" ScrollBars="Vertical" Width="400px" BorderStyle="Outset" Direction="LeftToRight">
    <asp:DataList ID="DataList1" runat="server">
                                        <ItemTemplate>
                                            <div class="row" >
                                                <div class="col-xl-4">
                                            <asp:Label ID="Label5" runat="server" ForeColor="White" Text='<%# Eval("name") %>'></asp:Label>
                                            &nbsp;
                                                </div>
                                                <div class="col-xl-8">
                                                    <div class="ch" style=" display: inline-block;color: Black;background-color: #dfece7;height: 45px; width: 240px;padding: 12px;border-radius: 25px;">
                                            &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text='<%# Eval("message") %>'></asp:Label>
</div>                                                </div>
                                            </div>
                                            &nbsp;&nbsp;



                                                           
                                        </ItemTemplate>
                                    </asp:DataList>




                                    

                                   </asp:Panel>
                                    <br />
                                             <asp:Panel ID="Panel2" runat="server" >
                                   
                                                        <div class="input-group form-group" style="width: 400px">
                                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" BackColor="#dfece7"  CssClass="form-control"  runat="server" ></asp:TextBox>
                                    </div>
                                     <div class="form-group" style="left: -1px; top: 0px; width: 400px">

                                            <asp:Button ID="Button2" class="btn float-right login_btn" runat="server" Text="Send" OnClick="send_Click" />
                                    </div>
                                                 </asp:Panel>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>
          </div>
                    </asp:View>
                            <asp:View ID="View2" runat="server">
                                 <div class="card"  style="color:white;height:100%">
                                <div class="card-header">
                                    <h3>Client Chat</h3>
                                    <br />
                                    <asp:DropDownList ID="chat1" CssClass="form-control" runat="server" OnSelectedIndexChanged="chat1_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">


                                        <asp:ListItem Value="0">--select--</asp:ListItem>


                                     </asp:DropDownList>
                                    
                                </div>
                                <div class="card-body" style="padding-top:10px;padding-left:150px;padding-right:100px">
            
                                    <div class="input-group form-group">
                                            <asp:Label runat="server" ID="Label3" Text="Message" CssClass="form-control" BackColor="Transparent" BorderColor="Transparent" Font-Bold="true" ForeColor="Black" Font-Size="20px"></asp:Label><br />
                                            
                                        </div>
                                    
                                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>

                                   
                                  <asp:Panel ID="Panel3" runat="server"  Visible="false" BackColor="#5ba388" Height="270px" ScrollBars="Vertical" Width="400px" BorderStyle="Outset" Direction="LeftToRight">
    <asp:DataList ID="DataList2" runat="server">
                                        <ItemTemplate>
                                            <div class="row" >
                                                <div class="col-xl-4">
                                            <asp:Label ID="Label5" runat="server" ForeColor="White" Text='<%# Eval("name") %>'></asp:Label>
                                            &nbsp;
                                                </div>
                                                <div class="col-xl-8">
                                                    <div class="ch" style=" display: inline-block;color: Black;background-color: #dfece7;height: 45px; width: 240px;padding: 12px;border-radius: 25px;">
                                            &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Black" Text='<%# Eval("message") %>'></asp:Label>
</div>                                                </div>
                                            </div>
                                            &nbsp;&nbsp;



                                                           
                                        </ItemTemplate>
                                    </asp:DataList>




                                    

                                   </asp:Panel>
                                    <br />
                                             <asp:Panel ID="Panel4" runat="server" Visible="false" >
                                   
                                                        <div class="input-group form-group" style="width: 400px">
                                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" BackColor="#dfece7"  CssClass="form-control"  runat="server" ></asp:TextBox>
                                    </div>
                                     <div class="form-group" style="left: -1px; top: 0px; width: 400px">

                                            <asp:Button ID="Button1" class="btn float-right login_btn" runat="server" Text="Send" OnClick="Button1_Click" />
                                    </div>
                                                 </asp:Panel>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>
          </div>
                            </asp:View>
                    </asp:MultiView>
          </div>

</asp:Content>
