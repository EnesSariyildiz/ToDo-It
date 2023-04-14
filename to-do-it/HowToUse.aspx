<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="HowToUse.aspx.cs" Inherits="to_do_it.HowToUse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="">

        <%--Nasil kullanilir ?--%>
        <h4 class="mt-5" id="text">
            <b>How To Use ?</b>
        </h4>
        <%--    Adim 1  --%>
        <div>
            <h6 class="mt-4">Step One :
            </h6>
            <p class="mt-3">Please create an account for free.</p>
            <hr />
        </div>

        <%--    Adim 2  --%>
        <div>
            <h6 class="mt-4">Step Two :
            </h6>
            <p class="mt-3">Specify what you want to do.</p>
            <hr />
        </div>
        <%--    Adim 3  --%>
        <div>
            <h6 class="mt-4">Step Three :
            </h6>
            <p class="mt-3">Enter the title.</p>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control border-secondary " disabled placeholder="example; programming lesson"></asp:TextBox>
            <hr />
        </div>
        <%--    Adim 4 --%>
        <div>
            <h6 class="mt-4">Step Four :
            </h6>
            <p class="mt-3">Enter the description.</p>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control border-secondary " disabled placeholder="example; 2 hours algorithm will be studied"></asp:TextBox>
            <hr />
        </div>
        <%--    Adim 5  --%>
        <div>
            <h6 class="mt-4">Step Five :
            </h6>
            <p class="mt-3">Save your list.</p>
            <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-dark" disabled />
            <hr />
        </div>
        <%--    Adim 6 --%>
        <div>
            <h6 class="mt-4">AND</h6>
            <p class="mt-3">Enjoy being organized.😎 </p>
            <div style="display: flex; align-items: center; justify-content: center; height: 100vh;">
                <img src="image/enjoy.gif" />
            </div>
            <hr />
        </div>



    </div>
</asp:Content>
