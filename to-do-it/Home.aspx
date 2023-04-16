<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="to_do_it.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="blog">

        <div class="mt-5" id="tanitim">
            <%--    Hoşgeldiniz   --%>

            <div class="border border-dark rounded pl-3 pt-3 pb-3" onmouseover="changeColor('#596e79')" onmouseout="changeColor('black')">
                <h1 class="" id="text"><b>Remembering<br />
                    has  never  been easier.</b></h1>
                <p class="mt-2">
                    Our website that will make your life easier is online. You can access it with your phone, tablet or computer.
                </p>
            </div>

            <%--    Şimdi dene   --%>

            <div class="mt-5">
                <asp:Button ID="tryIt" runat="server" Text="Now try it." CssClass="btn btn-dark btn-lg" OnClick="tryIt_Click" />
            </div>

            <%--   To do it nedir --%>

            <h4 class="mt-5" id="title"><b>What is "TO DO IT"?</b></h4>
            <p class="mt-3">
                To Do'it is a note taking and task management website. This website allows people to easily jot down chores in their daily life, shopping lists, things to remember and more.
            </p>
            <p class="mt-3">
                Users can categorize their notes, set priority levels, and add reminders. Thus, it enables them not to forget the important things in their lives and to manage them more efficiently.
            </p>
            <hr />

            <%--    neden kullanmalıyım  --%>

            <h4 class="mt-4" id="title"><b>Why Should I Use ?</b></h4>
            <p class="mt-3">
                TO DO'IT is a user-friendly website that you can use to organize the tasks and tasks you need to do in your daily life. Among the functions you can do with TO DO'IT, you can list your tasks, add reminders to your tasks, prioritize your tasks and mark your completed tasks.
            </p>
            <p class="mt-3">
                TO DO'IT helps you organize your to-dos and use your time more efficiently. It also helps you avoid forgetfulness and focus on your goals. TO DO'IT increases your motivation and makes you more productive.
            </p>
            <p class="mt-3 mb-5">
                By using TO DO'IT, it becomes easier to plan and control your work. Also, by using TO DO'IT, you can streamline your work and accomplish more by using your time more efficiently.
            </p>
            <hr class="mb-3" />
        </div>
        
    </div>

    <%--    footer  --%>

    <footer class="footer text-muted mb-3">
        <div class="container">
            <p class="text-center">&copy; 2023 Enes Sarıyıldız. All Rights Reserved.</p>
        </div>
    </footer>
    <%--    /footer  --%>
</asp:Content>
