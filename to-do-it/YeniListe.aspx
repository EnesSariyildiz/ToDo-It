<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="YeniListe.aspx.cs" Inherits="to_do_it.Listelerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-6 col-md-offset-3">
        <div>
            <div class="mt-5  ">
                <div class="container ">
                    <div class="form-group">
                        <input type="text" class="form-control border-secondary " id="txtBaslik" placeholder="Başlık ">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control border-secondary" id="txtAciklama" placeholder="Açıklama "></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary float-right">Kaydet</button>
                </div>
            </div>
        </div>





    </div>
</asp:Content>
