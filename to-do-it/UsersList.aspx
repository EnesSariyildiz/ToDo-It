<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="to_do_it.UsersList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="UserList">

        <div class="mt-5 border border-dark rounded p-5" id="tanitim">
            <h1 class="" id="text"><b>The best cure
                <br />
                for sadness is work.</b></h1>
            <a href="https://tr.wikipedia.org/wiki/Arthur_Conan_Doyle" target="_blank" class="text-dark link-class">
                <p class="mt-3 " id="githubAccess"><i>- Arthur Conan Doyle</i></p>
            </a>
        </div>
        <%--    liste ekleme    --%>


        <div class="mt-5" id="form">
            <div class="">

                <%--    başlık textbox   --%>

                <div class="form-group">
                    <h5 class="mb-3">Title</h5>
                    <asp:TextBox ID="txtTitle" runat="server" class="form-control border-secondary" placeholder="enter the title" autocomplete="off"></asp:TextBox>
                </div>

                <%--    açıklama textbox    --%>

                <div class="form-group mt-4">
                    <h5 class="mb-3">Description</h5>
                    <asp:TextBox ID="txtDesc" runat="server" class="form-control border-secondary" placeholder="enter the description " TextMode="MultiLine" autocomplete="off"></asp:TextBox>
                </div>

                <%--    kaydet button   --%>

                <div class="mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-outline-dark float-right" OnClick="Button1_Click" />
                </div>
            </div>
        </div>

        <%--    başlık   --%>

        <div>
            <h3 class="taskTitle mb-4">Tasks 
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-list-task" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M2 2.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5V3a.5.5 0 0 0-.5-.5H2zM3 3H2v1h1V3z" />
                    <path d="M5 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM5.5 7a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9zm0 4a.5.5 0 0 0 0 1h9a.5.5 0 0 0 0-1h-9z" />
                    <path fill-rule="evenodd" d="M1.5 7a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5V7zM2 7h1v1H2V7zm0 3.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5H2zm1 .5H2v1h1v-1z" />
                </svg>
            </h3>
        </div>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="">
                    <div class="shadow p-3 mb-5  rounded" id="myDiv">
                        <div class="">
                            <p>
                                <h5>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                                        <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z" />
                                    </svg>
                                    <asp:Label runat="server" Text='<%# Eval("title") %>'></asp:Label>
                                </h5>
                                <hr />
                            </p>

                            <p class="mt-3">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
                                    <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992a.252.252 0 0 1 .02-.022zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486-.943 1.179z" />
                                </svg>
                                <asp:Label runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            </p>
                        </div>

                        <%--    silme button    --%>
                        <asp:HyperLink NavigateUrl='<%# "DeleteList.aspx?ID=" + Eval("id") %>' ID="HyperLink1" runat="server" class="btn btn-outline-danger btn-sm mr-2">Delete</asp:HyperLink>

                        <%--tamamlama button--%>
                        <div class="form-check form-switch float-right mb-5">
                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
                            <label class="form-check-label" for="flexSwitchCheckChecked">Done</label>
                        </div>
                    </div>
                    <div>
            </ItemTemplate>
        </asp:Repeater>
    </div>





</asp:Content>
