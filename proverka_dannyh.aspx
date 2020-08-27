<%@ Page Language="C#" AutoEventWireup="true" CodeFile="proverka_dannyh.aspx.cs" Inherits="proverka_dannyh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
   <div style="height: 1081px; background-color: #D2D0D2;">

     <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Проверка данных</p> 
       
            
        </div>
        <asp:TextBox ID="TextBox1" runat="server" style="position: absolute; top: 88px; left: 149px; width: 20px; " ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="position: absolute; top: 131px; left: 149px; width: 20px;" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="position: absolute; top: 130px; left: 212px;" ReadOnly="True" Width="90px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="position: absolute; top: 89px; left: 212px;" ReadOnly="True" Width="90px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text = "Номер колеса <span style= color:red>*</span>" style="position: absolute; left: 27px; top: 73px; width: 110px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="Label2" runat="server" Text = "Номер плавки <span style= color:red>*</span>" style="position: absolute; left: 27px; top: 115px; width: 110px; margin-top: 17px; height: 20px; right: 1222px;"></asp:Label>
        
   
        
        <asp:Label ID="Label4" runat="server" Text="(год)" style="position: absolute; top: 112px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="(год)" style="position: absolute; top: 153px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="(номер)" style="position: absolute; top: 112px; left: 231px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="(номер)" style="position: absolute; top: 153px; left: 231px; height: 19px;" Font-Size="Smaller"></asp:Label>
        
         
        <asp:Button ID="Button1" runat="server" Text="Отмена" style="position: absolute; left: 388px; top: 212px; height: 30px; width: 72px; margin-top: 0px;" BackColor="#999999" Font-Size="Medium" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="ОК" style="position: absolute; left: 293px; top: 212px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button2_Click" />
               
        <asp:Label ID="Label8" runat="server" Text="Label" style="position: absolute; top: 62px; left: 419px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label" style="position: absolute; top: 61px; left: 84px; width: 311px;" Font-Bold="True"></asp:Label>
       
        
       <asp:Label ID="Label11" runat="server" Text="Калибровка/Расточка" style="position: absolute; top: 90px; left: 462px;"></asp:Label>
       <asp:Label ID="Label12" runat="server" Text="Годность" style="position: absolute; top: 132px; left: 544px;"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" style="position: absolute; top: 89px; left: 629px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox6" runat="server" style="position: absolute; top: 89px; left: 694px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox7" runat="server" style="position: absolute; top: 131px; left: 627px; width: 26px;" ReadOnly="True"></asp:TextBox>
               
    
       <asp:Label ID="Errormes" runat="server" Text="" style="position: absolute; top: 273px; left: 100px;" Font-Bold="True" ForeColor="Red"></asp:Label>
   
       <asp:Label ID="Label13" runat="server" Text="/" style="position: absolute; top: 89px; left: 670px; height: 21px; width: 7px;" Font-Bold="False" Font-Size="Larger"></asp:Label>
               
    
        
   
     </div>
    </form>
</body>
</html>
