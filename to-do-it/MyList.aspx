<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="MyList.aspx.cs" Inherits="to_do_it.MyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-5 col-md-offset-3">

        <div class="jumbotron mt-5" id="tanitim">
            <h1 class="" id="text"><b>The best cure
                <br />
                for sadness is work.</b></h1>
            <a href="https://tr.wikipedia.org/wiki/Arthur_Conan_Doyle" target="_blank" class="text-dark link-class">
                <p class="mt-3 " id="githubAccess"><i>- Arthur Conan Doyle</i></p>
            </a>
        </div>

        <%--    list add    --%>


        <div class="mt-5" id="form">
            <div class="" style="margin-top: 100px">

                <%--    title textbox   --%>

                <div class="form-group">
                    <h5 class="mb-3">Enter the title;</h5>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control border-secondary" placeholder="Title "></asp:TextBox>


                </div>

                <%--    explanatin textbox    --%>

                <div class="form-group mt-4">
                    <h5 class="mb-3">Enter the explanation;</h5>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control border-secondary" placeholder="Explanation " TextMode="MultiLine"></asp:TextBox>

                </div>

                <%--    save button   --%>

                <div class="mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-dark float-right" OnClick="Button1_Click" />
                </div>
            </div>
        </div>

        <%--    /list add    --%>

        <%--    title   --%>

        <div>
            <h3 class="taskTitle">Tasks</h3>
        </div>
        
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="mt-5">
                    <div class="mx-auto shadow p-3 mb-5 bg-body rounded" id="myDiv">
                        <p>
                            <h5>
                                <asp:Label runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </h5>
                        </p>
                        <p class="mt-3">
                            <asp:Label runat="server" Text='<%# Eval("Explanation") %>'></asp:Label>
                        </p>
                    </div>

                    <div>
                        <%--    delete button    --%>
                        <asp:HyperLink NavigateUrl='<%# "listeSilme.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-outline-danger btn-sm mr-2">Delete</asp:HyperLink>

                        <%--Completed button--%>
                        <div class="form-check form-switch float-right mb-5">
                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
                            <label class="form-check-label" for="flexSwitchCheckChecked">Completed</label>
                        </div>
            </ItemTemplate>
        </asp:Repeater>







    </div>
</asp:Content>
