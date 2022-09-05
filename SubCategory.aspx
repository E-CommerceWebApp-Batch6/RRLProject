<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="E_Cart_Online_Shopping.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <br />
                <h2>Add Sub Category</h2>
                <hr />

                   <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Main CategoryID"></asp:Label>
                    <div class="col-md-3">

                        <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Main Category ID" ControlToValidate="ddlMainCatID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>

                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="SubCategory Name"></asp:Label>
                    <div class="col-md-3">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryName" runat="server" CssClass="text-danger" ErrorMessage="Please Enter SubCategory Name" ControlToValidate="txtSubCategory" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>

                   <div class="form-group">
                         <asp:Button ID="btnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add SubCategory" OnClick="btnAddSubCategory_Click"/>
                       
                         <div class="col-md-3">
                        </div>
                  </div>

               <h1>Sub Category</h1>
        <hr />
        <div class="panel panel-default">

            <div class="panel-heading">All Sub Categories</div>


            <asp:Repeater ID="rptrSubCategory" runat="server">
                <HeaderTemplate>
                        <table class="table">
                                        <thead>
                                           <tr>
                                       <th>#</th> 
                                   <th>Sub Categories</th> 
                                     <th>Main Category</th>
                                  <th>Edit</th> 
    
                                  </tr>

                            </thead>

                       <tbody>

                </HeaderTemplate>
                  
                <ItemTemplate>
                   <tr>
                     <th><%# Eval("SubCatID") %></th>
                     <td><%# Eval("SubCatName") %></td>
                     <td><%# Eval("CatName") %></td>
                      

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
