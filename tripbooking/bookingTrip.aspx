<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookingTrip.aspx.cs" Inherits="tripbooking.bookingTip" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            padding:0;
            margin:0;
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

         
   
    .div1 {
        max-width: 500px;
        position:relative;
        left:70px;
        /*margin: 10px auto;*/
        padding: 30px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        font-family: 'Segoe UI', sans-serif;
    }

    h4 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 25px;
        font-size: 22px;
    }

    .div1 label,
    .div1 asp\:Label {
        display: block;
        margin-top: 10px;
        font-weight: 600;
        color: #34495e;
    }

    .div1 asp\:TextBox,
    .div1 asp\:DropDownList,
    .div1 asp\:CheckBox,
    .div1 asp\:Label,
    .div1 input[type="text"],
    .div1 textarea,
    .div1 select {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }
    #txtno_ofdays
    {
             width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }
    .div1 textarea {
        resize: vertical;
    }

    /*.div1 asp\:Button,
    .div1 button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 12px;
        font-size: 16px;
        border-radius: 6px;
        width: 100%;
        cursor: pointer;
        margin-top: 10px;
    }

    .div1 asp\:Button:hover,
    .div1 button:hover {
        background-color: #0056b3;
    }*/
    #btnsubmit
    {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 12px;
        font-size: 16px;
        border-radius: 6px;
        width: 100%;
        cursor: pointer;
        margin-top: 10px;
    }
     #btnsubmit{
          background-color: #0056b3;
     }
#txtfrom 
{
      width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
}  

#txtto
{
       width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;

}
.grid
{
    width:350px;
    height:50vh;
    /*padding: 10px;
  background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 6px;*/
    position:relative;
    /*top:10px;
    left:10px;*/
}
#gdroutes
{
    width:340px;
    height:50vh;
    
}
.container
{
 display:flex;
 column-gap:20%;   
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="navbar">
    <a class="logo" href="#">Online Trip Booking</a>
    <ul>
        <li><a href="homepage.aspx">Home</a></li>
        
        
    </ul>

</div>
    <h4>Fix the Route</h4>
        <div class="container">

        
        <div class="div1">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:TextBox ID="txtusername" runat="server" placeholder="Name"></asp:TextBox>
            <asp:TextBox ID="txtusernumber" runat="server" placeholder="Contact Number"></asp:TextBox>
            <asp:DropDownList ID="ddlfrom" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlfrom_SelectedIndexChanged"></asp:DropDownList>
            <asp:DropDownList ID="dddestination" runat="server" OnSelectedIndexChanged="dddestination_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <asp:TextBox ID="txtviewpoints" runat="server" TextMode="MultiLine" placeholder="View Points"></asp:TextBox>
            <asp:TextBox ID="txtcost" runat="server" placeholder="Fare" ReadOnly="True"></asp:TextBox>
            <asp:TextBox ID="txtmembers" runat="server" placeholder="How Many Members"  ></asp:TextBox>
            <asp:TextBox ID="txtno_ofdays" runat="server" TextMode="Number" placeholder="How many Days" AutoPostBack="True" OnTextChanged="txtno_ofdays_TextChanged"></asp:TextBox>
            
            
            <%--<asp:Label ID="lblfrom" runat="server" Text="From"></asp:Label>
            <asp:TextBox ID="txtfrom" runat="server" TextMode="Date" ></asp:TextBox>
            <asp:Label ID="lblto" runat="server" Text="To"></asp:Label>
            <asp:TextBox ID="txtto" runat="server" TextMode="Date" OnTextChanged="txtto_TextChanged" AutoPostBack="True"></asp:TextBox>--%>
            <br />
            <br />
            <%--<asp:Label ID="lbltotal_days" runat="server" Text=""></asp:Label>--%>
            
            <asp:DropDownList ID="ddselect_vehicle" runat="server">
            </asp:DropDownList>
            <asp:Label ID="lbl_tc" runat="server" Text="Total Fare"></asp:Label> <br />
            <asp:CheckBox ID="checkbox_payment" runat="server" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="checkbox_payment_CheckedChanged"/> Payment is Mandatory
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="Button1_Click" />

      </div>
        <div class="grid">
            <asp:GridView ID="gdroutes" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="r_from" HeaderText="From" />
                    <asp:BoundField DataField="r_to" HeaderText="To" />
                    <asp:BoundField DataField="r_payment" HeaderText="Cost" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>

        </div>
    </form>
</body>
</html>
