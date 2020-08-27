<%@ Page Language="C#" AutoEventWireup="true" CodeFile="authorization.aspx.cs" Inherits="authorization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Авторизация</title>
    <style type="text/css">
        #form1 {
            height: 178px;
        }
    </style>
</head>
<body>

        <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Вход в систему</p>
    
    <form id="form1" runat="server">
    
        <asp:TextBox ID="TextBox1" runat="server" style="position: absolute; left: 189px; top: 88px; width: 120px; height: 15px; margin-bottom: 0px;"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom: 0px; position: absolute; left: 188px; top: 130px; width: 120px; right: 703px;"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Войти" style="position: absolute; left: 391px; top: 103px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button1_Click" />
    
       
   
    </form>
    
    </div>

    <div style="height: 1081px; background-color: #D2D0D2;">

        <asp:Label ID="Label1" runat="server" Text = "Табельный номер <span style= color:red>*</span>" style="position: absolute; left: 27px; top: 73px; width: 139px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="Label2" runat="server" Text = "Пароль <span style= color:red>*</span>" style="position: absolute; left: 99px; top: 115px; width: 67px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="Label3" runat="server" Text = "Поля, обозначенные знаком <span style= color:red>*</span>, обязательны для заполнения" style="position: absolute; left: 100px; top: 177px; width: 443px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="erormess" runat="server" style="position: absolute; top: 168px; left: 164px; height: 16px; width: 268px;" ForeColor="Red" Visible="False"></asp:Label>
        
   
     </div>
</body>
</html>
