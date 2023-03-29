<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="to_do_it.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="fixed">

    </div>
    <div class="container col-md-5 col-md-offset-3" id="blog">

        <div class="mt-5" id="tanitim">

            <%--    Site Tanitimi   --%>

            <%--    hosgeldiniz --%>

            <h1 class="" id="text"><b>Remembering<br />
                has  never  been easier.</b></h1>
            <p class="mt-2">
              Our website that will make your life easier is online. You can access it with your phone, tablet or computer.
            </p>

            <%--    Simdi dene butonu   --%>

            <div class="mt-5">
                <asp:Button ID="tryIt" runat="server" Text="Now try it."  CssClass="btn btn-dark btn-lg " OnClick="tryIt_Click"/>
            </div>

            <%--    TO DO'IT nedir --%>

            <h4 class="mt-5" id="title"><b> What is "TO DO IT"?</b></h4>
            <p class="mt-3">
                To Do'it bir not alma ve görev yönetimi web sitesidir. Bu web sitesi, insanların günlük hayatlarında yapacakları işleri, alışveriş listelerini, hatırlamaları gerekenleri ve daha pek çok şeyi kolayca not alabilmelerini sağlar.
            </p>
            <p class="mt-3">
                Kullanıcılar notlarını kategorize edebilir, öncelik düzeylerini belirleyebilir ve hatırlatıcılar ekleyebilirler. Böylece, hayatlarında önemli olan şeyleri unutmamalarını ve daha verimli bir şekilde yönetmelerini sağlar.
            </p>
            <hr />

            <%--    Neden Sizi Kullanmalıyım ? --%>

            <h4 class="mt-4" id="title"><b> Why Should I Use ?</b></h4>
            <p class="mt-3">
                TO DO'IT, günlük yaşamınızda yapmanız gereken işleri ve görevleri organize etmek için kullanabileceğiniz kullanıcı dostu bir web sitesidir. TO DO'IT ile yapabileceğiniz işlevler arasında, görevlerinizi listeleyebilir, görevlerinize hatırlatıcılar ekleyebilir, görevlerinizi öncelik sırasına göre düzenleyebilir ve tamamlanan görevlerinizi işaretleyebilirsiniz.
            </p>
            <p class="mt-3">
                TO DO'IT, yapılacak işlerinizi organize etmenize ve zamanınızı daha verimli bir şekilde kullanmanıza yardımcı olur. Ayrıca, unutkanlığı önlemenize ve hedeflerinize odaklanmanıza yardımcı olur. TO DO'IT, motivasyonunuzu artırır ve sizi daha üretken hale getirir.
            </p>
            <p class="mt-3">
                TO DO'IT'i kullanarak, işlerinizi planlamak ve kontrol altına almak daha kolay hale gelir. Ayrıca, TO DO'IT'i kullanarak, işlerinizi daha düzenli hale getirir ve zamanınızı daha verimli bir şekilde kullanarak daha fazla iş başarabilirsiniz.
            </p>
            <hr />
        </div>

    </div>
</asp:Content>
