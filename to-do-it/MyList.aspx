<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="MyList.aspx.cs" Inherits="to_do_it.MyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-5 col-md-offset-3">

        <div class="jumbotron mt-5" id="tanitim">
            <h1 class="" id="text"><b>The best cure
                <br />
                for sadness is work.</b></h1>
            <p class="mt-3">
                <i>- Arthur Conan Doyle</i>
            </p>
        </div>

        <%--    list add    --%>


        <div class="mt-5" id="form">
            <div class="" style="margin-top: 100px">

                <%--    title textbox   --%>

                <div class="form-group">
                    <h4 class="mb-3">Enter the title;</h4>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control border-secondary" placeholder="Title "></asp:TextBox>


                </div>

                <%--    explanatin textbox    --%>

                <div class="form-group mt-4">
                    <h4 class="mb-3">Enter the explanation;</h4>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control border-secondary" placeholder="Explanation " TextMode="MultiLine"></asp:TextBox>

                </div>

                <%--    save button   --%>

                <div class="mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-dark float-right" OnClick="Button1_Click" />
                </div>
            </div>
        </div>

        <%--    /list add    --%>

        <h3 class="mt-5">My lists</h3>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>

                <div class="mt-5">
                    <div class="mx-auto">
                        <h5>
                            <asp:Label runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                        </h5>
                        <p class="mt-3">
                            <asp:Label runat="server" Text='<%# Eval("Explanation") %>'></asp:Label>
                        </p>
                    </div>

                    <div>
                        <%--    delete button    --%>

                        <asp:HyperLink NavigateUrl='<%# "listeSilme.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server" class="btn btn-outline-danger btn-sm mr-2">Delete</asp:HyperLink>
                        <div class="form-check form-switch float-right mb-5">
                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">
                            <label class="form-check-label" for="flexSwitchCheckChecked">Complate</label>
                        </div>
                    </div>
                </div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>







    </div>
</asp:Content>
