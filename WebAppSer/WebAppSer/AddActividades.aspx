<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddActividades.aspx.cs" Inherits="WebAppSer.AddActividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form class="text-center" id="form1" runat="server">
        <div>
            <h1 >Agregar Actividades</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Descripcion : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <hr />
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            <hr />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div> 
    </form>
</body>
</html>
