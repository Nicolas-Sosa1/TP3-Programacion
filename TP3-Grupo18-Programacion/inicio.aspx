<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="TP3_Grupo18_Programacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-atomic="False" aria-autocomplete="none" aria-busy="False" aria-hidden="False">
            <asp:Label ID="lblBienvenida" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="30pt" Font-Strikeout="False" Font-Underline="False" Text="Bienvenido a Inicio.aspx"></asp:Label>
        </div>
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Ir Ejercicio 1" />
    </form>
</body>
</html>
