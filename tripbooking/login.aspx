<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="tripbooking.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f7;
            margin: 0;
            padding: 0;
        }

        .login-container {
            width: 380px;
            margin: 100px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px 10px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            transition: 0.3s ease;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #3a86ff;
            outline: none;
        }

        .login-container input[type="submit"],
        .login-container .asp-button {
            width: 100%;
            padding: 12px;
            background-color: #3a86ff;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-container input[type="submit"]:hover,
        .login-container .asp-button:hover {
            background-color: #265ec4;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-container">
        <asp:TextBox ID="txt_username" runat="server" placeholder="Mobile Number"></asp:TextBox>
        <asp:TextBox ID="txt_password" runat="server" placeholder="Password"></asp:TextBox>
        <asp:Button ID="btnu_login" runat="server" Text="Login" CssClass="asp-button" OnClick="btnu_login_Click" />
        <asp:Label ID="errormgs" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
