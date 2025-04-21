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
            <asp:TextBox ID="txtLocalidad" runat="server" ValidationGroup="1"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Debe ingresar una localidad" ValidationGroup="1">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button style="margin-left:160px" ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="1" />
            <br />
            <br />
            <asp:Label ID="lblExito" runat="server"></asp:Label>
            <br />
            <br />
            <asp:ValidationSummary ID="vsLocalidad" runat="server" ValidationGroup="1" />
            <br />
            <h3 style="margin-left:165px">Usuario</h3>
            Nombre de Usuario:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese un nombre de usuario" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Contraseña:&nbsp;
            <asp:TextBox style="margin-left:65px" ID="txtContrasenia1" runat="server" TextMode="Password" ValidationGroup="grupoUsuario"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCont1" runat="server" ControlToValidate="txtContrasenia1" ErrorMessage="Ingrese contraseña" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compareCont" runat="server" ControlToCompare="txtContrasenia2" ControlToValidate="txtContrasenia1" ErrorMessage="Las contraseñas no coinciden" ValidationGroup="grupoUsuario">*</asp:CompareValidator>
            <asp:CustomValidator ID="customCont1" runat="server" ControlToValidate="txtContrasenia1" ErrorMessage="Limite de caracteres: 20" OnServerValidate="customCont1_ServerValidate" ValidationGroup="grupoUsuario">*</asp:CustomValidator>
            <br />
            <br />
            Repetir contraseña:&nbsp;&nbsp;
            <asp:TextBox style="margin-left:13px" ID="txtContrasenia2" runat="server" TextMode="Password" ValidationGroup="grupoUsuario"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCont2" runat="server" ControlToValidate="txtContrasenia2" ErrorMessage="Repita contraseña" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="customCont2" runat="server" ControlToValidate="txtContrasenia2" ErrorMessage="Limite de caracteres: 20" OnServerValidate="customCont2_ServerValidate" ValidationGroup="grupoUsuario">*</asp:CustomValidator>
            <br />
            <br />
            Correo electrónico:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electrónico" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electrónico valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupoUsuario">*</asp:RegularExpressionValidator>  
            <br />
            <br />
            CP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Ingrese un Código Postal" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="Ingrese un código válido" MaximumValue="9431" MinimumValue="1000" ValidationGroup="grupoUsuario">*</asp:RangeValidator>
            <br />
            <br />
            Localidades:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlLocalidades" runat="server">
            </asp:DropDownList>
            &nbsp;
            <asp:RequiredFieldValidator ID="rfvDdlLocalidades" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Debe seleccionar una localidad, en caso de no haber localidad, debe ingresar una" InitialValue="--Seleccione una localidad--" ValidationGroup="grupoUsuario">*</asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="grupoUsuario" OnClick="btnGuardarUsuario_Click" />
            <asp:Label ID="lblBienvenido" runat="server" style="margin-left:100px"></asp:Label>
            <br />
            <br />
            <asp:ValidationSummary ID="vsUsuario" runat="server" ValidationGroup="grupoUsuario" />
            <p>
            <asp:Button ID="btnInicio" runat="server" Text=" Ir a inicio.aspx" Width="136px" OnClick="btnIrInicio_Click" />
            </p>
        </div>
    </form>
</body>
</html>
