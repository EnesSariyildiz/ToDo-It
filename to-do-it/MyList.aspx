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
                    <asp:Button runat="server" Text="Delete" class="btn btn-outline-danger btn-sm" />
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>























</asp:Content>
