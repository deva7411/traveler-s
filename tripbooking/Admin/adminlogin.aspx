<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="tripbooking.Admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            
        }
       body
       {
           height: 100vh;
            
            justify-content: center;
            
           background-image: linear-gradient(135deg, transparent 0%, transparent 17%,rgba(87, 146, 234,0.6) 17%, rgba(87, 146, 234,0.6) 59%,transparent 59%, transparent 64%,rgba(34, 81, 222,0.6) 64%, rgba(34, 81, 222,0.6) 100%),linear-gradient(45deg, transparent 0%, transparent 2%,rgb(87, 146, 234) 2%, rgb(87, 146, 234) 46%,rgb(114, 178, 239) 46%, rgb(114, 178, 239) 54%,transparent 54%, transparent 63%,rgb(7, 48, 216) 63%, rgb(7, 48, 216) 100%),linear-gradient(90deg, rgb(255,255,255),rgb(255,255,255));
           
       }
    .navbar {
        background-color: #007bff;
        overflow: hidden;
        padding: 10px 20px;
        font-family: Arial, sans-serif;
    }

    .navbar .logo {
        float: left;
        color: white;
        font-size: 20px;
        font-weight: bold;
        text-decoration: none;
    }

    .navbar ul {
        float: right;
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .navbar ul li {
        display: inline-block;
        margin-left: 20px;
    }

    .navbar ul li a {
        color: white;
        text-decoration: none;
        font-size: 16px;
        padding: 8px;
        transition: background-color 0.3s ease;
    }

    .navbar ul li a:hover {
        background-color: #0056b3;
        border-radius: 4px;
    }

    
  .login-container
  {
      width:300px;
      height:200px;
      background-color:white;
      border:none;
      box-shadow:2px 2px 5px;
      position:relative;
      left:35%;
      top:50px;
      padding:20px;
  }
  .txtbox
  {
      width:250px;
      height:30px;
      padding:10px;
      
  }
  #btnLogin
  {
      width:250px;
      height:30px;
      border:none;

  }

  #lblMessage
  {
      color:red;
  }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar">
    <a class="logo" href="#">Online Trip Booking</a>
    <ul>
      
    </ul>

</div>
    </div>
           <div class="login-container">
            <h2>Admin Login</h2>
               
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" CssClass="txtbox"></asp:TextBox>
               <br />
               <br />
            <asp:TextBox ID="txtPassword" runat="server" Placeholder="Password" CssClass="txtbox" TextMode="Password"></asp:TextBox>
               <br />
               <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#0066FF" OnClick="btnLogin_Click" />
               <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message" ></asp:Label>
        </div>
    </form>
</body>
</html>
