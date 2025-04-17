<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3_Grupo18_Programacion.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 style="margin-left:160px">Localidades</h3>         
            Nombre de Localidad:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLocalidad" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button style="margin-left:160px" ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" />
            <br />
            <br />
            <br />
            <h3 style="margin-left:165px">Usuario</h3>
            Nombre de Usuario:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
