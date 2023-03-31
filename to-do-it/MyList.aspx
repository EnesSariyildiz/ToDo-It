<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="MyList.aspx.cs" Inherits="to_do_it.MyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3">


         <div class="jumbotron mt-5" id="tanitim">
            <h1 class="" id="text"><b>İyi düzenlenmiş zaman,
                <br />
                iyi düzenlenmiş bir zihnin en kesin işaretidir.</b></h1>
            <p class="mt-3">
                -Sir Isaac Pitman
            </p>
        </div>

        <%--    liste ekleme    --%>

        <div>
            <div class="mt-5" id="form">
                <div class="container" style="margin-top: 100px">

                    <%--    Baslik TextBox'i   --%>

                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control border-secondary" placeholder="Title "></asp:TextBox>
                    </div>

                    <%--    Aciklama TextBox'i   --%>

                    <div class="form-group mt-4">
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control border-secondary" placeholder="Explanation " TextMode="MultiLine"></asp:TextBox>
                    </div>

                    <%--    Kaydet butonu   --%>

                    <div class="mt-4">
                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-dark float-right" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>

            <%--    /liste ekleme    --%>

            <h3 class="mt-5">My lists</h3>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="shadow p-3 mb-5 bg-white rounded mt-5">
                        <div class="mx-auto">
                            <h5>
                                <asp:Label runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </h5>
                            <p>
                                <asp:Label runat="server" Text='<%# Eval("Explanation") %>'></asp:Label>
                            </p>
                        </div>

                        <%--    Silme butonu    --%>

                        <asp:Button runat="server" Text="Delete" class="btn btn-outline-danger btn-sm" />
                        <asp:Button runat="server" Text="Update" class="btn btn-outline-primary btn-sm" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
</asp:Content>
