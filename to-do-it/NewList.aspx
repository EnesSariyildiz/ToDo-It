<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="NewList.aspx.cs" Inherits="to_do_it.Listelerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3">
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
                         <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-dark float-right" />
                    </div>
                   
                </div>
            </div>
        </div>





    </div>
</asp:Content>
