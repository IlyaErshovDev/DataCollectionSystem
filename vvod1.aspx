<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vvod1.aspx.cs" Inherits="vvod1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div style="height: 1081px; background-color: #D2D0D2;">

     <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Ввод номера колеса и номера плавки</p> 
       
            
        </div>
        <asp:TextBox ID="TextBox1" MaxLength="2" runat="server" style="position: absolute; top: 89px; left: 149px; width: 20px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" MaxLength="2" runat="server" style="position: absolute; top: 131px; left: 149px; width: 20px;"></asp:TextBox>
        <asp:TextBox ID="TextBox3" MaxLength="6" runat="server" style="position: absolute; top: 130px; left: 212px;"></asp:TextBox>
        <asp:TextBox ID="TextBox4" MaxLength="6" runat="server" style="position: absolute; top: 89px; left: 212px;"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text = "Номер колеса <span style= color:red>*</span>" style="position: absolute; left: 27px; top: 73px; width: 110px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="Label2" runat="server" Text = "Номер плавки <span style= color:red>*</span>" style="position: absolute; left: 27px; top: 115px; width: 110px; margin-top: 17px; height: 20px; right: 1222px;"></asp:Label>
        
   
        <asp:Label ID="Label3" runat="server" Text = "Поля, обозначенные знаком <span style= color:red>*</span>, обязательны для заполнения" style="position: absolute; left: 84px; top: 307px; width: 443px; margin-top: 17px; height: 20px;"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="(год)" style="position: absolute; top: 112px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="(год)" style="position: absolute; top: 153px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="(номер)" style="position: absolute; top: 112px; left: 270px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="(номер)" style="position: absolute; top: 153px; left: 270px; height: 19px;" Font-Size="Smaller"></asp:Label>
        
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Обработка внутренней стороны" style="position: absolute; top: 191px; left: 151px; height: 24px; width: 239px;" />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Кантовка" style="position: absolute; top: 198px; left: 151px; height: 24px; width: 89px; margin-top: 35px;" />     
            
        
        
        <asp:Button ID="Button1" runat="server" Text="Выход" style="position: absolute; left: 154px; top: 268px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="ОК" style="position: absolute; left: 46px; top: 268px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button2_Click" />
               
        <asp:Label ID="Label8" runat="server" Text="Label" style="position: absolute; top: 62px; left: 422px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label" style="position: absolute; top: 62px; left: 84px; width: 306px;" Font-Bold="True"></asp:Label>
               
    
        
   
            <asp:Label ID="Errormes" runat="server" Text="" style="position: absolute; top: 374px; left: 30px; width: 668px;" Font-Bold="True" ForeColor="Red"></asp:Label>
               
    
        
   
     </div>
    </form>
</body>
</html>
