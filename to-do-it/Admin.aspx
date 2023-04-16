<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="to_do_it.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="blog">




        <h4 class="mt-5">User add</h4>
        <div class="mt-3 border border-dark p-4 rounded mb-5 id="adminDiv">

              <%--username ekleme--%>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <br />
                <asp:TextBox ID="TxtAdminUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
           
            <%--e-mail ekleme--%>
            <div class="mt-5">
                <asp:Label ID="Label3" runat="server" Text="E-mail"></asp:Label>
                <br />
                <asp:TextBox ID="TxtAdminEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtAdminEmail" ErrorMessage="Must be in email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

             <%--şifre ekleme--%>
            <div class="mt-4">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="TxtAdminPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <%--kaydet butonu--%>
            <div class="mt-4">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-dark" OnClick="Button1_Click" />
            </div>
             <asp:Label ID="LblWarning" runat="server" Text="Please fill in the fields." CssClass="text-danger"></asp:Label>
        </div>


        <%--kullanıcı bilgileri--%>
        <div>
            <h4 class="mt-5">User information</h4>
        </div>
        <div class="mt-3">
            <table class="table  p-3 mb-5 rounded">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Username</th>
                        <th scope="col">E-Mail</th>
                        <th scope="col">Password</th>
                        <th scope="col">User Status</th>
                    </tr>
                </thead>

                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <td>#<%# Eval("id") %></td>
                                <td><%# Eval("username") %></td>
                                <td><%# Eval("e_mail") %></td>
                                <td><%# Eval("password") %></td>
                                <td>
                                    <asp:HyperLink NavigateUrl='<%# "AdminUsersDelete.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-danger">Delete</asp:HyperLink>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>



        





    </div>
</asp:Content>
