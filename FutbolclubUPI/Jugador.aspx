<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jugador.aspx.cs" Inherits="FutbolclubUPI.Jugador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>UPI FUTBOL CLUB</title>
        <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #111;
                }

        .active {
            background-color: #04AA6D;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Sistema del UPI FUTBOL CLUB
        </div>
        <div>
            <ul>
                <li><a class="active" href="principal.aspx">Inicio</a></li>
                <li><a href="#Jugador.aspx">Jugadores</a></li>
                <li><a href="Entrenador.aspx">Entrenadores</a></li>
                <li><a href="#about">Salir</a></li>
            </ul>
        </div>
          <div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="sqljugadores" GridLines="Horizontal" Height="178px" Width="349px">
          <AlternatingRowStyle BackColor="#F7F7F7" />
          <Columns>
              <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
              <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
              <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
          </Columns>
          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
          <SortedAscendingCellStyle BackColor="#F4F4FD" />
          <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
          <SortedDescendingCellStyle BackColor="#D8D8F0" />
          <SortedDescendingHeaderStyle BackColor="#3E3277" />
      </asp:GridView>
              <asp:SqlDataSource ID="sqljugadores" runat="server" ConnectionString="<%$ ConnectionStrings:UHFCConnectionString2 %>" SelectCommand="SELECT * FROM [Jugador]"></asp:SqlDataSource>
  </div>
    </form>
</body>
</html>
