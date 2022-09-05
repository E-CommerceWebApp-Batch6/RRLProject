<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGender.aspx.cs" Inherits="E_Cart_Online_Shopping.AddGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <br />
                <h2>Add Gender</h2>
                <hr />

                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                    <div class="col-md-3">

                        <asp:TextBox ID="txtGender" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Gender" ControlToValidate="txtGender" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>

                   

                   
            

                   <div class="form-group">
                         <asp:Button ID="btnAddGender" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddGender_Click"   />
                       
                         <div class="col-md-3">
                        </div>
                  </div>
                <h1>Gender</h1>
        <hr />
        <div class="panel panel-default">

            <div class="panel-heading">All Gender</div>


            <asp:Repeater ID="rptrGender" runat="server">
                <HeaderTemplate>
                        <table class="table">
                                        <thead>
                                           <tr>
                                       <th>#</th> 
                                   <th>Gender</th> 
                                  <th>Edit</th> 
    
                                  </tr>

                            </thead>

                       <tbody>

                </HeaderTemplate>
                  
                <ItemTemplate>
                   <tr>
                     <th><%# Eval("GenderID") %></th>
                     <td><%# Eval("GenderName") %></td>
                     <td>Edit</td>
                   </tr>

                </ItemTemplate>

                <FooterTemplate>
                     </tbody>

                      </table>
                </FooterTemplate>



            </asp:Repeater>

           
                 
        </div>
              
       </div>
    </div> 

</asp:Content>
