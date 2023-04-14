<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="to_do_it.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="blog">
        <div>
            <h4 class="mt-5">Users</h4>
        </div>
        <div class="mt-5">
            <table class="table table-dark">
                <thead class="">
                    <tr>
                        <th scope="col">#Id</th>
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
