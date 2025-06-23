<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="tripbooking.homepage" %>

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

.slider {
      width: 100%;
      
      height:400px;
      overflow: hidden;
      position: relative;
      
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
    }

    .slides {
      display: flex;
      width: 400%;
      animation: slide 12s infinite;
    }

    .slides img {
      width: 100%;
      height: auto;
      object-fill:cover;
    }

    @keyframes slide {
      0% { margin-left: 0%; }
      25% { margin-left: -100%; }
      50% { margin-left: -200%; }
      75% { margin-left: -300%; }
      100% { margin-left: 0%; }
    }

    @media screen and (max-width: 768px) {
        .navbar {
            text-align: center;
        }

        .navbar .logo, .navbar ul {
            float: none;
            display: block;
        }

        .navbar ul li {
            display: block;
            margin: 10px 0;
        }
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="navbar">
    <a class="logo" href="#">Online Trip Booking</a>
    <ul>
        <li><a href="homepage.aspx">Home</a></li>
        <li><a href="about.aspx">About Us</a></li>
        
        <li><a href="userrigistration.aspx">Registration</a></li>
        <li><a href="Admin\adminlogin.aspx">Admin</a></li>
    </ul>

</div>
        <!-- image slider -->
        <div class="slider">
    <div class="slides">
        <img src="images/download%20(6).jpeg" alt="Slide 1" />
        <img src="images/download%20(7).jpeg" alt="Slide 2" />
        <img src="images/images%20(3).jpeg" alt="Slide 3"/>
        <img src="images/images%20(4).jpeg" alt="Slide 4"/>
    </div>
  </div>
    </form>
</body>
</html>
