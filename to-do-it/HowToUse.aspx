﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NavbarMaster.Master" AutoEventWireup="true" CodeBehind="HowToUse.aspx.cs" Inherits="to_do_it.HowToUse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-5 col-md-offset-3" id="">

        <%--Nasil kullanilir ?--%>
       <h4 class="mt-5" id="text">
                <b>How To Use ?</b>
            </h4>
        <div>          
            <h6 class="mt-4">Step One :
            </h6>
            <p class="mt-3">Please specify what you want to do.</p>
            <hr />
        </div>
        <div>          
            <h6 class="mt-4">Step Two :
            </h6>
            <p class="mt-3">Please enter the title.</p>
            <hr />
        </div>
        <div>          
            <h6 class="mt-4">Step Three :
            </h6>
            <p class="mt-3">Please enter the explanation.</p>
            <hr />
        </div>
        <div>          
            <h6 class="mt-4">Step Four :
            </h6>
            <p class="mt-3">And enjoy being organized.😎 </p>
            <hr />
        </div>
            

    </div>
</asp:Content>