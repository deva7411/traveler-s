<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acknowledgement.aspx.cs" Inherits="tripbooking.acknowledgement" %>

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
        position:relative;
        left:40%;
        color: white;
        font-size: 40px;
        font-weight: bold;
        text-decoration: none;
    }


        .auto-style1 {
            width: 60%;
            height: 287px;
        }
        .auto-style2 {
            width: 321px;
        }
        .auto-style3 {
            width: 398px;
        }

        .data
        {
            position:relative;
            
            width:500px;
            height:500px;
            background-color: white;
     
            padding-left:30px;

        }
        .auto-style4 {
            width: 321px;
            height: 48px;
        }
        .auto-style5 {
            width: 398px;
            height: 48px;
        }
        .imgs
        {
            width:500px;
            height:500px;
           


        }
        .d1
        {
            display:flex;
            position:relative;
            top:20px;
            left:15%;
            width:1000px;
            
            background-color:#007bff;

        }


        /* From Uiverse.io by vinodjangid07 */ 
.Btn {
  width: 50px;
  height: 50px;
  border: none;
  border-radius: 50%;
  background-color: rgb(27, 27, 27);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  position: relative;
  left:45%;
  top:50px;

  transition-duration: .3s;
  box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.11);
}

.svgIcon {
  fill: rgb(214, 178, 255);
}

.icon2 {
  width: 18px;
  height: 5px;
  border-bottom: 2px solid rgb(182, 143, 255);
  border-left: 2px solid rgb(182, 143, 255);
  border-right: 2px solid rgb(182, 143, 255);
}

.tooltip {
  position: absolute;
  right: -105px;
  opacity: 0;
  background-color: rgb(12, 12, 12);
  color: white;
  padding: 5px 10px;
  border-radius: 5px;
  display: flex;
  align-items: center;
  justify-content: center;
  transition-duration: .2s;
  pointer-events: none;
  letter-spacing: 0.5px;
}

.tooltip::before {
  position: absolute;
  content: "";
  width: 10px;
  height: 10px;
  background-color: rgb(12, 12, 12);
  background-size: 1000%;
  background-position: center;
  transform: rotate(45deg);
  left: -5%;
  transition-duration: .3s;
}

.Btn:hover .tooltip {
  opacity: 1;
  transition-duration: .3s;
}

.Btn:hover {
  background-color: rgb(150, 94, 255);
  transition-duration: .3s;
}

.Btn:hover .icon2 {
  border-bottom: 2px solid rgb(235, 235, 235);
  border-left: 2px solid rgb(235, 235, 235);
  border-right: 2px solid rgb(235, 235, 235);
}

.Btn:hover .svgIcon {
  fill: rgb(255, 255, 255);
  animation: slide-in-top 0.6s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
}

@keyframes slide-in-top {
  0% {
    transform: translateY(-10px);
    opacity: 0;
  }

  100% {
    transform: translateY(0px);
    opacity: 1;
  }
}
.center-cell {
    text-align: center;
    
}

footer
{
    width:100%;
    
    position:relative;
    top:30px;
   background-image: linear-gradient(37deg, rgb(32, 218, 233),rgb(40, 21, 236));
   display:flex;
}

footer p
{
     color:white;
    padding:20px;
    font-size:20px;
    text-align:center;
}
footer h2
{
    color:white;
    padding:10px;
    font-size:30px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="navbar">
    <a class="logo" href="#">Travelers</a>
    

</div>

        <div class="d1">

        

        <div class="data">
            
            <table class="auto-style1" style="background-color: #FFFFFF;  height: 490px;">
                <tr>
                    <td class="auto-style4 center-cell" >Name</td>
                    <td class="auto-style5 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_name" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Contact</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_contact" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Destination</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_destination" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">View Points</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_viewpoints" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Members</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_members" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Days</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_days" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Dates</td>
                    <td class="auto-style3 center-cell" style="background-position: center">
                        <asp:Label ID="lbl_dates" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2 center-cell">Total Cost</td>
                    <td class="auto-style3 center-cell" style="background-position: center;">
                        <asp:Label ID="lbl_total_cost" runat="server"></asp:Label>
                    </td>
                </tr>
               
                
            </table>
            
        </div>
        <div>
            <img src="imgs/traveler.png" class="imgs"/>
        </div>
    </div>

        
<button class="Btn" onclick="window.print()">
   <svg class="svgIcon" viewBox="0 0 384 512" height="1em" xmlns="http://www.w3.org/2000/svg"><path d="M169.4 470.6c12.5 12.5 32.8 12.5 45.3 0l160-160c12.5-12.5 12.5-32.8 0-45.3s-32.8-12.5-45.3 0L224 370.8 224 64c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 306.7L54.6 265.4c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3l160 160z"></path></svg>
   <span class="icon2"></span>
   <span class="tooltip">Download</span>
</button>
        <br />
        <br />
        <footer>
            <h2>Get in touch</h2>
            <p>+91 6366317184</p>
            <p>+91 9113635639</p>

        </footer>
    </form>
</body>
</html>
