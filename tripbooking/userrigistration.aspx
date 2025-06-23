<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userrigistration.aspx.cs" Inherits="tripbooking.userrigistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
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

        .auto-style1 {
            width: 93%;
        }
        .auto-style2 {
            width: 145px;
        }
        .auto-style3 {
            width: 263px;
        }
        .auto-style4 {
            width: 145px;
            height: 40px;
        }
        .auto-style5 {
            width: 263px;
            height: 40px;
            margin-left: 40px;
        }
        .auto-style6 {
            height: 40px;
            width: 218px;
        }
        .auto-style7 {
            width: 145px;
            height: 41px;
        }
        .auto-style8 {
            width: 263px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
            width: 218px;
        }
        .auto-style10 {
            width: 145px;
            height: 39px;
        }
        .auto-style11 {
            width: 263px;
            height: 39px;
        }
        .auto-style12 {
            height: 39px;
            width: 218px;
        }
        .div1
        {
            width:500px;
            height:450px;
            background-color:beige;
            padding-left:20px;
            padding-top:10px;
            position:relative;
            left:50%; 
            top:50px;
            transform:translate(-50%);
            
        }
        #btn_register
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width:352px;
            height:30px;
            background-color:#00ff21;
            border-radius:5px;
            color:black;
            position:relative;
            top: 0px;
            left: 0px;
        }
        #btn_ulogin
        {
             width:180px;
            height:30px;
            border:none;
            background-color:#0a61fc;
            border-radius:5px;
            color:white;
        }
        .auto-style13 {
            width: 218px;
        }

        #loginsection
        {
            width:100%;
            height:400px;
            background-color:rgba(188, 197, 213, 0.93);
            position:relative;
            left:50%;
            top:50px;
            transform:translate(-50%);
           
            display:none;
            
        }
        .divlogin
        {
            padding:20px;
            width:350px;
            height:200px;
            background-color:beige;
           position:relative;
           top:85px;
           left:35%;
        }
        #btnlogin
        {
            width:300px;
            height:30px;
            background-color:#0a61fc;
            border:none;
            border-radius:5px;
            color:white;

        }
        #loginmodel
        {
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="navbar">
    <a class="logo" href="#">Online Trip Booking</a>
    <ul>
        <li><a href="homepage.aspx">Home</a></li>
        <li><a href="login.aspx">Login</a></li>
    </ul>

</div>
    <div class="div1" id="registersection">
        <h2>User registration</h2>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtuname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Enter Your name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email Id</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtuemail" runat="server" Height="30px" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtuemail" Display="Dynamic" ErrorMessage="Email id incorrect" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mobile Number</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtumoblieno" runat="server" Height="30px" TextMode="Number" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtumoblieno" Display="Dynamic" ErrorMessage="Moble Number can't valid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}">Invalid Number</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtupassword" runat="server" Height="30px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtupassword" Display="Dynamic" ErrorMessage="RequiredField password" ForeColor="Red" SetFocusOnError="True">Enter Password</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Address</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtuaddress" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuaddress" Display="Dynamic" ErrorMessage="Required user addres" ForeColor="Red" SetFocusOnError="True">Enter Address</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">City</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtusercity" runat="server" Height="30px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtusercity" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Enter City</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Pin Code</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtupincode" runat="server" Height="30px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtupincode" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">Enter Pin Code</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            
            
        </table>
        <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" />
        <asp:HyperLink ID="loginpagelink" runat="server" href="login.aspx">Login>></asp:HyperLink>
    </div>

        


       
    </form>
   
</body>
</html>
