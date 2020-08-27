<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vvod_geom_par_vs.aspx.cs" Inherits="vvod_geom_par_vs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form5" runat="server">
   <div style="height: 1081px; background-color: #D2D0D2;">

     <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Ввод геометрических параметров (обработка внутренней стороны)</p> 
       
            
        </div>
        <asp:TextBox ID="TextBox1" runat="server" style="position: absolute; top: 88px; left: 149px; width: 20px; " ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="position: absolute; top: 131px; left: 149px; width: 20px;" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="position: absolute; top: 130px; left: 212px;" ReadOnly="True" Width="90px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" style="position: absolute; top: 89px; left: 212px;" ReadOnly="True" Width="90px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text = "Номер колеса" style="position: absolute; left: 27px; top: 73px; width: 110px; margin-top: 17px; height: 20px;"></asp:Label>
        
   
        <asp:Label ID="Label2" runat="server" Text = "Номер плавки" style="position: absolute; left: 27px; top: 115px; width: 110px; margin-top: 17px; height: 20px; right: 1222px;"></asp:Label>
        
   
        
        <asp:Label ID="Label4" runat="server" Text="(год)" style="position: absolute; top: 112px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="(год)" style="position: absolute; top: 153px; left: 150px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="(номер)" style="position: absolute; top: 112px; left: 240px; height: 19px;" Font-Size="Smaller"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="(номер)" style="position: absolute; top: 153px; left: 240px; height: 19px;" Font-Size="Smaller"></asp:Label>
        
         
        <asp:Button ID="Button2" runat="server" Text="ОК" style="position: absolute; left: 712px; top: 575px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button2_Click" />
               
        <asp:Label ID="Label8" runat="server" Text="Label" style="position: absolute; top: 62px; left: 418px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label" style="position: absolute; top: 62px; left: 85px; width: 309px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Errormes" runat="server" style="position: absolute; top: 651px; left: 44px; width: 336px;" Font-Bold="True" ForeColor="Red"></asp:Label>
        
       <asp:Label ID="Label11" runat="server" Text="Калибровка/Расточка" style="position: absolute; top: 90px; left: 462px;"></asp:Label>
       <asp:Label ID="Label12" runat="server" Text="Годность" style="position: absolute; top: 132px; left: 544px;"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" style="position: absolute; top: 89px; left: 629px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox6" runat="server" style="position: absolute; top: 89px; left: 694px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox7" runat="server" style="position: absolute; top: 131px; left: 627px; width: 26px;" ReadOnly="True"></asp:TextBox>
               
    
       <asp:Label ID="Label13" runat="server" Text="/" style="position: absolute; top: 89px; left: 670px; height: 21px; width: 7px;" Font-Bold="False" Font-Size="Larger"></asp:Label>
       <asp:Label ID="Label14" runat="server" Text="Геометрические параметры колеса до обработки:" style="position: absolute; top: 200px; left: 44px; width: 365px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label15" runat="server" Text = "Диаметр круга катания, мм" style="position: absolute; left: 27px; top: 224px; width: 189px; margin-top: 17px; height: 20px; right: 803px;"></asp:Label>
       <asp:Label ID="Label16" runat="server" Text = "Ширина обода, мм" style="position: absolute; left: 82px; top: 263px; width: 132px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label17" runat="server" Text = "Утопание (вылет) ступицы, мм" style="position: absolute; left: 402px; top: 224px; width: 216px; margin-top: 17px; height: 20px;"></asp:Label>
        
       <asp:TextBox ID="TextBox8" runat="server" style="position: absolute; top: 240px; left: 227px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox9" runat="server" style="position: absolute; top: 280px; left: 227px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox10" runat="server" style="position: absolute; top: 241px; left: 642px;" ReadOnly="True" Width="80px"></asp:TextBox>
        
       <asp:Label ID="Label18" runat="server" Text="Геометрические параметры колеса после обработки:" style="position: absolute; top: 335px; left: 44px; width: 391px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label3" runat="server" Text="- с наружной стороны:" style="position: absolute; top: 358px; left: 44px; width: 196px;" Font-Bold="True"></asp:Label>
       
       <asp:Label ID="Label19" runat="server" Text = "Диаметр круга катания, мм" style="position: absolute; left: 53px; top: 372px; width: 204px; margin-top: 17px; height: 20px; right: 773px;"></asp:Label>
       <asp:Label ID="Label20" runat="server" Text = "Ширина обода, мм" style="position: absolute; left: 109px; top: 409px; width: 145px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label21" runat="server" Text = "Утопание (вылет) ступицы, мм" style="position: absolute; left: 25px; top: 447px; width: 230px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label22" runat="server" Text = "Внутренний диаметр обода, мм" style="position: absolute; left: 23px; top: 483px; width: 232px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox12" runat="server" style="position: absolute; top: 387px; left: 269px;" Width="80px" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox13" runat="server" style="position: absolute; top: 425px; left: 269px; right: 662px;" Width="80px" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox14" runat="server" style="position: absolute; top: 462px; left: 269px;" Width="80px" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox15" runat="server" style="position: absolute; top: 499px; left: 269px;" Width="80px" ReadOnly="True"></asp:TextBox>
       <asp:CheckBox ID="CheckBox1" runat="server" style="position: absolute; top: 541px; left: 119px;" Text="Диаметр ступицы" TextAlign="Left" Enabled="False"/>
       <asp:Label ID="Label23" runat="server" Text = "Поля, обозначенные знаком <span style= color:red>*</span>, обязательны для заполнения" style="position: absolute; left: 43px; top: 563px; width: 443px; margin-top: 17px; height: 20px;"></asp:Label>
   
       
   
       <asp:Label ID="Label24" runat="server" Text = "Вылет ступицы, мм <span style= color:red>*</span>" style="position: absolute; left: 532px; top: 371px; width: 152px; margin-top: 17px; height: 20px; right: 675px;"></asp:Label>
       <asp:Label ID="Label25" runat="server" Text="- с внутренней стороны:" style="position: absolute; top: 358px; left: 453px; width: 196px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label26" runat="server" Text = "Толщина диска у обода, мм <span style= color:red>*</span>" style="position: absolute; left: 480px; top: 408px; width: 202px; margin-top: 17px; height: 20px; right: 677px;"></asp:Label>
       <asp:Label ID="Label27" runat="server" Text = "Толщина диска у ступицы, мм <span style= color:red>*</span>" style="position: absolute; left: 461px; top: 446px; width: 224px; margin-top: 17px; height: 20px; right: 674px;"></asp:Label>
       <asp:Label ID="Label28" runat="server" Text = "Толщина диска в середине, мм <span style= color:red>*</span>" style="position: absolute; left: 458px; top: 482px; width: 224px; margin-top: 17px; height: 20px; right: 337px;"></asp:Label>
       <asp:Label ID="Label29" runat="server" Text = "Внутренний диаметр обода, мм <span style= color:red>*</span>" style="position: absolute; left: 453px; top: 522px; width: 230px; margin-top: 17px; height: 20px; right: 336px;"></asp:Label>
       <asp:TextBox ID="TextBox16" MaxLength="2" runat="server" style="position: absolute; top: 388px; left: 705px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox17" MaxLength="2" runat="server" style="position: absolute; left: 705px; top: 424px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox18" MaxLength="2" runat="server" style="position: absolute; left: 705px; top: 462px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox19" MaxLength="2" runat="server" style="position: absolute; left: 705px; top: 499px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox20" MaxLength="3" runat="server" style="position: absolute; left: 705px; top: 539px;" Width="80px"></asp:TextBox>
       
       
   
   
    </div>
    </form>
</body>
</html>
