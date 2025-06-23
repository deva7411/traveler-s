<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="tripbooking.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flexbox;
            height: 100vh;
        }

        .dasboard {
            display: flex;
            width: 100%;
        }

        .sidebar {
            width: 300px;
            height: 100vh;
            background-color: #456baa;
            color: white;
            padding: 20px;
            box-sizing: border-box;
        }

        .sidebar_header {
            margin-bottom: 20px;
        }

        .sidebar_menu {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .menu_item {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

            .menu_item:hover {
                background-color: #98BBF5;
            }

     .main-content {
    flex-grow: 1;
    width: 100%;
    display: none; /* all content hidden by default */
    padding: 20px;
    background-color: white;
}

        .vehicle-container {
            width: 400px;
            height: 270px;
            background-color: white;
            box-shadow: 0px 0px 5px black;
            position: relative;
            top: 20px;
            padding: 10px;
            border-radius: 5px;
        }

        .txt_v {
            width: 380px;
            height: 30px;
        }

        .btn_v {
            width: 380px;
            height: 35px;
            background-color: #456baa;
            color: white;
            border: none;
            border-radius: 5px;
        }

            .btn_v:hover {
                background-color: #98BBF5;
            }

        .v {
            display: flex;
            column-gap: 10px;
        }

        .v_detalies {
            width: 300px;
            height: auto;
            position: relative;
            top: 10px;
        }

        #btnv_display {
            width: 200px;
            height: 30px;
            border: none;
            background-color: #007aff;
            color: white;
            border-radius: 5px;
        }

            #btnv_display:hover {
                background-color: #0d4f97;
            }

        #btn_display_orders {
            width: 200px;
            height: 30px;
            border: none;
            background-color: #007aff;
            color: white;
            border-radius: 5px;
        }

            #btn_display_orders:hover {
                background-color: #0d4f97;
            }

        #grid_orders {
            position: relative;
            top: 20px;
        }
        .r1
        {
         max-width: 500px;
        position:relative;
        top:20px;
        left:10px;
        padding: 30px;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        .r1 asp\:TextBox,
        .r1 input[type="text"]{

             width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        }
        #btn_route_save
        {
              background-color: #007bff;
        color: #fff;
        border: none;
        padding: 12px;
        font-size: 16px;
        border-radius: 6px;
        width: 100%;
        cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dasboard">
            <div class="sidebar">
                <div class="sidebar_header">
                    <a>
                        <h2>Admin Dashboard</h2>
                    </a>
                </div>

                <ul class="sidebar_menu">
                    <li>
                        <a class="menu_item" onclick="showpanel('dashboardContent')">Dashborad Content</a>
                    </li>
                    <li>
                        <a class="menu_item" onclick="showpanel('bookingorders')">Booking Orders</a>
                    </li>
                    <li>
                        <a class="menu_item" onclick="showpanel('vehicle')">Vehicles</a>
                    </li>
                    <li>
                        <a class="menu_item" onclick="showpanel('route')">Route</a>
                    </li>
                    
                </ul>
            </div>

            <!--dashboard content -->
            <div id="dashboardContent" class="main-content" >

                <h1>Welcome to the Dashboard</h1>
                <p>Click on the menu to explore.</p>
            </div>
            <!--booking orders content -->
            <div id="bookingorders" class="main-content" style="display:block;">
                <h1>Orders From Travelors</h1>
                <asp:Button ID="btn_display_orders" runat="server" Text="View the Orders" OnClick="btn_display_orders_Click" />
                <br />
                <asp:GridView ID="grid_orders" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="1000px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellSpacing="5">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="Name" />
                        <asp:BoundField DataField="contactnumber" HeaderText="Contact Number" />
                        <asp:BoundField DataField="destination" HeaderText="Destination" />
                        <asp:BoundField DataField="viewpoints" HeaderText="View Points" />
                        <asp:BoundField DataField="no_ofpeople" HeaderText="Members" />
                        <asp:BoundField DataField="no_days" HeaderText="Days" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>

            </div>
            <!--vehicle content -->
            <div id="vehicle" class="main-content">

                <h1>Adding Vehicles</h1>
                <div class="v">
                    <div class="vehicle-container">
                        <asp:TextBox ID="txtvehicle_type" runat="server" CssClass="txt_v" placeholder="Vehicel Type"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtvehicle_sits" runat="server" CssClass="txt_v" placeholder="How Many Sits"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtvehicle_number" runat="server" CssClass="txt_v" placeholder="Vehicel Number"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Upload Vehicel Image"></asp:Label>
                        <asp:FileUpload ID="upvehicle_img" runat="server" CssClass="txt_v" />
                        <br />
                        <br />
                        <asp:Button ID="btnSubmit" runat="server" Text="Save" CssClass="btn_v" OnClick="btnSubmit_Click" />
                        <asp:Label ID="lblmgs" runat="server" Text=""></asp:Label>
                    </div>


                    <div class="v_detalies">
                        <asp:Button ID="btnv_display" runat="server" Text="View" OnClick="btnv_display_Click" />
                        <br />
                        <br />
                        <asp:GridView ID="v_grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField HeaderText="Vehicle Name" DataField="v_type">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Sits" DataField="v_sits">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Vehicle Number" DataField="v_number">
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="vimg" runat="server" Height="70px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("v_image")) %>' Width="100px" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </div>
                </div>

            </div>
            <!--route content -->
            <div id="route" class="main-content" >
                <h1>Fixing the routes and payments</h1>
                <div class="r1">
                    From:
                    <asp:TextBox ID="txtfrom" runat="server" ></asp:TextBox>
                    To:
                    <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
                    Cost:
                    <asp:TextBox ID="txtpayment" runat="server"></asp:TextBox>
                    <asp:Button ID="btn_route_save" runat="server" Text="Save" OnClick="btn_route_save_Click" />
                    <asp:Label ID="r_lblmgs" runat="server" Text=""></asp:Label>
                </div>
            </div>

           


        </div>
        <script src="adminjs.js">

        </script>
    </form>
</body>
</html>
