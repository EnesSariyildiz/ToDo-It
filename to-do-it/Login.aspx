﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="to_do_it.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <link rel="shortcut icon" type="img/aim.png" href="image/logo.png" />
    <link href="LoginCss.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="body">
    <form id="form1" runat="server">

        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">

                                    <h2 class="fw-bold mb-2 text-uppercase">Welcome</h2>
                                    <p class="text-white-50 mb-5">TO DO'IT</p>

                                    <%--enter username--%>
                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="TxtUsername" runat="server" class="form-control border-secondary" placeholder="Username "></asp:TextBox>
                                    </div>

                                    <%--enter password--%>
                                    <div class="form-outline form-white mb-4">
                                        <asp:TextBox ID="TxtPassword" runat="server" class="form-control border-secondary" placeholder="Password" type="password"></asp:TextBox>
                                    </div>

                                    <asp:Button ID="BtnLogin" runat="server" Text="Login" class="btn btn-outline-light btn-lg px-5 mt-4" />
                                    <p class="small mb-5 pb-lg-2 pt-5"><a class="text-white-50 " href="#!">Forgot password?</a></p>
                                </div>
                                <div>
                                    <asp:Label ID="LblWarning" runat="server" Text="please fill in the fields" CssClass="text-danger"></asp:Label>
                                </div>

                                <%--Don't have an account?--%>
                                <div>
                                    <p class="mb-0">
                                        Don't have an account? <a href="NewUser.aspx" class="text-white-50 fw-bold">Sign Up</a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </form>

    <script src="Index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>