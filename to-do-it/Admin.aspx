<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="to_do_it.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="blog">

        <div class="mt-5 border border-dark rounded">
            <div class="p-3">
                <h5>
                    <asp:Label ID="Label5" runat="server" Text="Label">Unread Messages 📢</asp:Label>
                </h5>
            </div>
            <hr />
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class=" p-3">
                        <div>
                            <h6>
                                <asp:Label ID="Label4" runat="server" Text="Username;"></asp:Label>
                                <asp:Label ID="LblMessageUsername" runat="server" Text='<%# Eval("username") %>' CssClass="mt-5"></asp:Label>

                            </h6>
                        </div>
                        <div class="mt-4">
                            <p>
                                <asp:Label ID="LblMessage" runat="server" Text='<%# Eval("message") %>' CssClass="mt-5"></asp:Label>
                            </p>
                        </div>
                        <%--    delete button    --%>
                        <asp:HyperLink NavigateUrl='<%# "AdminMessageDelete.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-outline-danger btn-sm mr-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
</svg></asp:HyperLink>
                    </div>
                    <hr />

                </ItemTemplate>
            </asp:Repeater>
        </div>



        <h4 class="mt-5">User add</h4>
        <div class="mt-3 border border-dark p-4 rounded mb-5" id="adminDiv">

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
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-dark" OnClick="Button1_Click"  />
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
                        <th scope="col">User Delete</th>
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
                                    <asp:HyperLink NavigateUrl='<%# "AdminUsersDelete.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
</svg></asp:HyperLink>
                                </td>
                            </tr>
                        </tbody>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>









    </div>
</asp:Content>
