<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="to_do_it.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="admin">

        <div class="mt-5 ">
            <div class="p-3">
                <h5>
                    <asp:Label ID="Label5" runat="server" Text="Label">Unread Messages <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-megaphone-fill ml-2" viewBox="0 0 16 16">
  <path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-11zm-1 .724c-2.067.95-4.539 1.481-7 1.656v6.237a25.222 25.222 0 0 1 1.088.085c2.053.204 4.038.668 5.912 1.56V3.224zm-8 7.841V4.934c-.68.027-1.399.043-2.008.053A2.02 2.02 0 0 0 0 7v2c0 1.106.896 1.996 1.994 2.009a68.14 68.14 0 0 1 .496.008 64 64 0 0 1 1.51.048zm1.39 1.081c.285.021.569.047.85.078l.253 1.69a1 1 0 0 1-.983 1.187h-.548a1 1 0 0 1-.916-.599l-1.314-2.48a65.81 65.81 0 0 1 1.692.064c.327.017.65.037.966.06z"/>
</svg></asp:Label>
                </h5>
            </div>

            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class=" p-3">
                        <div>
                            <h6>
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-hash" viewBox="0 0 16 16">
                                    <path d="M8.39 12.648a1.32 1.32 0 0 0-.015.18c0 .305.21.508.5.508.266 0 .492-.172.555-.477l.554-2.703h1.204c.421 0 .617-.234.617-.547 0-.312-.188-.53-.617-.53h-.985l.516-2.524h1.265c.43 0 .618-.227.618-.547 0-.313-.188-.524-.618-.524h-1.046l.476-2.304a1.06 1.06 0 0 0 .016-.164.51.51 0 0 0-.516-.516.54.54 0 0 0-.539.43l-.523 2.554H7.617l.477-2.304c.008-.04.015-.118.015-.164a.512.512 0 0 0-.523-.516.539.539 0 0 0-.531.43L6.53 5.484H5.414c-.43 0-.617.22-.617.532 0 .312.187.539.617.539h.906l-.515 2.523H4.609c-.421 0-.609.219-.609.531 0 .313.188.547.61.547h.976l-.516 2.492c-.008.04-.015.125-.015.18 0 .305.21.508.5.508.265 0 .492-.172.554-.477l.555-2.703h2.242l-.515 2.492zm-1-6.109h2.266l-.515 2.563H6.859l.532-2.563z" />
                                </svg>
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




        <div class="mt-3 p-4 rounded mb-5" id="adminDiv">
            <h6 class="mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-plus-fill mr-2" viewBox="0 0 16 16">
                    <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                    <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z" />
                </svg>
                Add a user</h6>

            <%--username ekleme--%>
            <div>
                <asp:TextBox ID="TxtAdminUsername" runat="server" CssClass="form-control" placeHolder="username" autocomplete="off"></asp:TextBox>
            </div>

            <%--e-mail ekleme--%>
            <div class="mt-3">
                <asp:TextBox ID="TxtAdminEmail" runat="server" CssClass="form-control" placeHolder="e-mail adress" autocomplete="off"></asp:TextBox>

            </div>

            <%--şifre ekleme--%>
            <div class="mt-3">
                <asp:TextBox ID="TxtAdminPassword" runat="server" CssClass="form-control" placeHolder="password" autocomplete="off"></asp:TextBox>
            </div>

            <%--kaydetme ve temizleme--%>
            <div class="mt-4">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-dark" OnClick="Button1_Click" />
                <asp:Button ID="txtClear" runat="server" Text="Clear" CssClass="btn btn-primary ml-2" OnClick="txtClear_Click" />
            </div>
            <asp:Label ID="LblWarning" runat="server" Text="Please fill in the fields." CssClass="text-danger"></asp:Label>
            <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtAdminEmail" ErrorMessage="Must be in email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>

        <%--kullanıcı bilgileri--%>
        <div>
            <h4 class="mt-5">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                </svg>
                User information

            </h4>
        </div>
        <div class="mt-3">
            <table class="table  p-3 mb-5 rounded">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Username</th>
                        <th scope="col">E-Mail</th>
                        <th scope="col">Password</th>

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
                            </tr>
                        </tbody>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>

    </div>
</asp:Content>
