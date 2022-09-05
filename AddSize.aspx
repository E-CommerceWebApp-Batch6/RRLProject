<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="E_Cart_Online_Shopping.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />
                <br />
                <h2>Add Size</h2>
                <hr />

                
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Size Name"></asp:Label>
                    <div class="col-md-3">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSize" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Size" ControlToValidate="txtSize" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>



                 <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Brand"></asp:Label>
                    <div class="col-md-3">

                        <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Main Category ID" ControlToValidate="ddlBrand" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>


                <div class="form-group">
                    <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                    <div class="col-md-3">

                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Category" ControlToValidate="ddlCategory" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>




                   <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Sub Category"></asp:Label>
                    <div class="col-md-3">

                        <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Sub Category" ControlToValidate="ddlSubCategory" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>


                 <div class="form-group">
                    <asp:Label ID="Label5" CssClass="col-md-2 control-label" runat="server" Text="Gender"></asp:Label>
                    <div class="col-md-3">

                        <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Gender" ControlToValidate="ddlGender" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                  </div>



                   <div class="form-group">
                         <asp:Button ID="btnAddSize" CssClass="btn btn-success" runat="server" Text="Add Size" OnClick="btnAddSize_Click" />
                       
                         <div class="col-md-3">
                        </div>
                  </div>

                <h1>Size</h1>
        <hr />
        <div class="panel panel-default">

            <div class="panel-heading">All Size</div>


            <asp:Repeater ID="rptrSize" runat="server">
                <HeaderTemplate>
                        <table class="table">
                                        <thead>
                                           <tr>
                                       <th>#</th> 
                                   <th>Size</th> 
                                    <th>Brand</th>
                                   <th>Category</th> 
                                  <th>Sub Category</th> 
                                <th>Gender</th> 
                                  <th>Edit</th> 
    
                                  </tr>

                            </thead>

                       <tbody>

                </HeaderTemplate>
                  
                <ItemTemplate>
                   <tr>
                     <th><%# Eval("SizeID") %></th>
                     <td><%# Eval("SizeName") %></td>
                     <td><%# Eval("Name") %></td>
                     <td><%# Eval("CatName") %></td>
                     <td><%# Eval("SubCatName") %></td> 
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
