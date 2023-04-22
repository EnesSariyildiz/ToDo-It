<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="to_do_it.NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New User</title>
    <link rel="shortcut icon" type="img/aim.png" href="image/logo.png" />
    <link href="LoginCss.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <section class="vh-100">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card bg-dark text-white shadow-lg" style="border-radius: 1rem;">
                                <div class="card-body p-5 text-center">

                                    <div class="mb-md-5 mt-md-4 pb-5">

                                        <h2 class="fw-bold mb-2 text-uppercase">Welcome</h2>
                                        <p class="text-white-50 mb-5">TO DO'IT</p>

                                        <%--    Kullanıcı adı  --%>
                                        <div class="form-outline form-white mb-4">
                                            <asp:TextBox ID="TxtUsername" runat="server" class="form-control border-secondary" placeholder="Username"></asp:TextBox>
                                        </div>

                                        <%--   E-mail   --%>

                                        <div class="form-outline form-white mb-4">
                                            <asp:TextBox ID="TxtEmail" runat="server" class="form-control border-secondary" placeholder="E-mail Adress"></asp:TextBox>
                                        </div>



                                        <%--   Şifre  --%>
                                        <div class="form-outline form-white mb-4">
                                            <asp:TextBox ID="TxtPassword" runat="server" class="form-control border-secondary" placeholder="Password" type="password"></asp:TextBox>
                                        </div>

                                        <%--    Kayıt ol butonu--%>
                                        <asp:Button ID="BtnSignUp" runat="server" Text="Sign in" class="btn btn-outline-light btn-lg px-5 mt-4" type="submit" OnClick="BtnSignUp_Click" <%--OnClientClick="alert('Your registration has been made.'); return true;--%>" /> 
                                    <%--uyarıyı verdikten sonra true dönmesi işleme devam etmek için--%>
                                    </div>
                                    <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Must be in email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                    <div>
                                        <asp:Label ID="LblWarning" runat="server" Text="Please fill in the fields." CssClass="text-danger"></asp:Label>
                                        <asp:Label ID="LblWarningAdmin" runat="server" Text="Please choose a different username." CssClass="text-danger"></asp:Label>
                                         <%--<asp:Label ID="LblUserWarning" runat="server" Text="This username and e-mail are used." CssClass="text-danger"></asp:Label>--%>
                                    </div>

                                    <%--    Giriş sayfasına geri dön  --%>
                                    <div>
                                        <p class="mb-0">
                                            <a href="Login.aspx" class="text-white-50 fw-bold">Back to login page </a>
                                        </p>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
    <script src="Index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
