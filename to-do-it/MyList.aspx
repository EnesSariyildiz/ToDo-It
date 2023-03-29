<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="MyList.aspx.cs" Inherits="to_do_it.MyList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3">

        <asp:Repeater runat="server">
            <itemtemplate>
                <div class="shadow p-3 mb-5 bg-white rounded mt-5">
                    <div class="mx-auto">
                        <h5>
                            <asp:Label runat="server" Text="Algoritma Dersi"></asp:Label>
                        </h5>
                        <p>
                            <asp:Label runat="server" Text="lacakde"></asp:Label>
                        </p>
                    </div>
                    <asp:Button runat="server" Text="Delete" class="btn btn-outline-danger btn-sm" />
                </div>
            </itemtemplate>
        </asp:Repeater>

    </div>

























</asp:Content>
