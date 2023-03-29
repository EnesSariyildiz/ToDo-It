<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="to_do_it.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container col-md-6 col-md-offset-3 mt-5">
        <h3>İletişim Formu</h3>
        <form action="#" method="post">
            <div class="form-group">
                <label for="name">Adınız:</label>
                <input type="text" class="form-control" id="name" placeholder="Adınızı girin" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">E-posta Adresiniz:</label>
                <input type="email" class="form-control" id="email" placeholder="E-posta adresinizi girin" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Mesajınız:</label>
                <textarea class="form-control" id="message" placeholder="Mesajınızı girin" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Gönder</button>
            <h2 class="mt-5">İletişim</h2>
            <br />
            <p>Bana aşağıdaki sosyal medya hesaplarından veya iletişim formu aracılığıyla ulaşabilirsiniz.</p>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i>Instagram</a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a href="https://github.com/EnesSariyildiz"><i class="fa fa-github"></i>Github</a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i>LinkedIn</a>
                </div>
            </div>
            <hr>
        </form>
    </div>

































</asp:Content>
