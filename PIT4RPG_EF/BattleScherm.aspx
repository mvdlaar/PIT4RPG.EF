<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BattleScherm.aspx.cs" Inherits="PIT4RPG_EF.BattleScherm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Naam:
        <asp:Label ID="lblNaam" runat="server" Text="Label"></asp:Label>
    
    </div>
        <asp:Button ID="btVecht" runat="server" OnClick="btVecht_Click" Text="Vecht!!" />
    </form>
</body>
</html>
