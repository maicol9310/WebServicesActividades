<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddActividades.aspx.cs" Inherits="WebAppSer.AddActividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="~/Scripts/jquery-3.3.1.min.js"></script>
    <script src="~/Scripts/umd/popper.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="http://localhost:60682">
            <img src="Images/Mark.png" alt="logo" style="width: 40px;" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="http://localhost:60682/AddActividades.aspx">Agregar Actividades</a>
                </li>
            </ul>
        </div>
    </nav>
    <form class="text-center" id="form1" runat="server">
        <div>
            <br />
            <h5 >Agregar Actividades</h5>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Descripcion : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <br />
        </div> 
        <div >
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="IdAct" HeaderText="ID" />
                    <asp:BoundField DataField="Descr" HeaderText="Descripción" />                  
                    <asp:ButtonField CommandName="Select" HeaderText="Agregar Horas" ShowHeader="True" Text="Horas" />
                  
                </Columns>
		    </asp:GridView>	
        </div>
        <br />
        <div>
             <a href="http://localhost:60682" class="button">Go to Back</a>
        </div>
    </form>
</body>
</html>
