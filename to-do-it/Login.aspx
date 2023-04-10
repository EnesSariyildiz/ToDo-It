<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="to_do_it.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TO DO'IT LOGIN</title>
    <link rel="shortcut icon" type="img/aim.png" href="image/logo.png" />
    <link href="LoginCss.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">

        <div class="form-wrapper">
            <div class="container col-md-5 col-md-offset-3">
                <div class="form-group mb-5">
                    <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="TextBox4" type="text" runat="server" class="form-control " placeholder="Username "></asp:TextBox>
                </div>
                <div class="form-group mb-5">
                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox5" type="password" runat="server" class="form-control " placeholder="Password"></asp:TextBox>
                </div>
                
                <asp:Button ID="Button1" class="btn btn-dark float-right" runat="server" Text="Login" />
           
            </div>
        </div>





    </form>

    <script src="Index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
