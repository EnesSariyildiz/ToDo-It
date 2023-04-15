<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="to_do_it.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="blog">
        <div>
            <h4 class="mt-5">Users Information</h4>
        </div>
        <div class="mt-3">
            <table class="table shadow p-3 mb-5 rounded">
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

        <%--admin ekleme--%>
        <div class="mb-5">
            <div class="mt-5">
                <h4>Admin Information</h4>
            </div>
            <div class="mt-3 ">
                <table class="table shadow p-3 mb-5 rounded ">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Username</th>
                            <th scope="col">Password</th>
                            <th scope="col">User Status</th>
                        </tr>
                    </thead>

                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td>#<%# Eval("id") %></td>
                                    <td><%# Eval("username") %></td>
                                    <td><%# Eval("password") %></td>
                                    <td>
                                        <asp:HyperLink NavigateUrl='<%# "AdminDelete.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-danger">Delete</asp:HyperLink>
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
        <div class="mt-5 border border-dark p-4 rounded mb-5 id="adminDiv">
             <h4>Admin Add</h4>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <br />
                <asp:TextBox ID="TxtAdminUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mt-4">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="TxtAdminPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mt-4">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-dark" OnClick="Button1_Click" />
            </div>
        </div>





    </div>
</asp:Content>
