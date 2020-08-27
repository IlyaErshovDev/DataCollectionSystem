<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Remont.aspx.cs" Inherits="Remont" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 27px;
            width: 100px;
        }
        #Select2 {
            height: 27px;
            width: 101px;
        }
        #Select3 {
            height: 27px;
            width: 100px;
        }
        </style>
</head>
<body>
    <form id="form6" runat="server">
   <div style="height: 1081px; background-color: #D2D0D2;">

     <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Ввод геометрических параметров (ремонт)</p> 
       
            
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
        
         
        <asp:Button ID="Button2" runat="server" Text="ОК" style="position: absolute; left: 813px; top: 670px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button2_Click1" />
               
        <asp:Label ID="Label8" runat="server" Text="Label" style="position: absolute; top: 62px; left: 421px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Errormes" runat="server" style="position: absolute; top: 736px; left: 38px; width: 256px; margin-top: 0px;" Font-Bold="True" ForeColor="Red"></asp:Label>
        
       <asp:Label ID="Label11" runat="server" Text="Калибровка/Расточка" style="position: absolute; top: 90px; left: 462px;"></asp:Label>
       <asp:Label ID="Label12" runat="server" Text="Годность" style="position: absolute; top: 133px; left: 464px;"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" style="position: absolute; top: 89px; left: 629px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox6" runat="server" style="position: absolute; top: 89px; left: 694px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox7" runat="server" style="position: absolute; top: 132px; left: 542px; width: 26px;" ReadOnly="True"></asp:TextBox>
               
    
       <asp:Label ID="Label13" runat="server" Text="/" style="position: absolute; top: 89px; left: 670px; height: 21px; width: 7px;" Font-Bold="False" Font-Size="Larger"></asp:Label>
       <asp:Label ID="Label14" runat="server" Text="Геометрические параметры колеса до ремонта:" style="position: absolute; top: 200px; left: 44px; width: 365px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label15" runat="server" Text = "Утопание (вылет) ступицы, мм" style="position: absolute; left: 48px; top: 492px; width: 217px; margin-top: 17px; height: 20px; right: 1094px;"></asp:Label>
       <asp:Label ID="Label16" runat="server" Text = "Ширина обода, мм" style="position: absolute; left: 131px; top: 224px; width: 132px; margin-top: 17px; height: 20px; bottom: 320px;"></asp:Label>
       <asp:Label ID="Label17" runat="server" Text = "Причина ремонта" style="position: absolute; left: 604px; top: 115px; width: 146px; margin-top: 17px; height: 20px;"></asp:Label>
        
       <asp:TextBox ID="TextBox8" MaxLength="5" runat="server" style="position: absolute; top: 241px; left: 275px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox9" MaxLength="2" runat="server" style="position: absolute; top: 509px; left: 276px;"  Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox10" runat="server" style="position: absolute; top: 131px; left: 753px; width: 95px;" ReadOnly="True"></asp:TextBox>
        
       <asp:Label ID="Label18" runat="server" Text="Геометрические параметры колеса после ремонта:" style="position: absolute; top: 422px; left: 32px; width: 391px;" Font-Bold="True"></asp:Label>
       
       <asp:Label ID="Label20" runat="server" Text = "Ширина обода, мм" style="position: absolute; left: 132px; top: 452px; width: 132px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label21" runat="server" Text = "Годность" style="position: absolute; left: 579px; top: 615px; width: 72px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label22" runat="server" Text = "Причина брака" style="position: absolute; left: 541px; top: 651px; width: 113px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox12" MaxLength="2" runat="server" style="position: absolute; top: 282px; left: 275px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox13" MaxLength="3" runat="server" style="position: absolute; top: 322px; left: 275px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:CheckBox ID="CheckBox1" runat="server" style="position: absolute; top: 632px; left: 138px;" Text="Диаметр ступицы" TextAlign="Left"/>
       <asp:Label ID="Label23" runat="server" Text = "Толщина диска у обода, мм" style="position: absolute; left: 454px; top: 224px; width: 194px; margin-top: 17px; height: 20px;"></asp:Label>
   
          <select id="Select1" runat="server" name="D1" style="position: absolute; top: 631px; left: 658px;">
               <option> </option>
              <option value="Т">Т</option>
              <option value="Зд">Зд</option>
              <option value="Б-к">Б-к</option>
           </select>

          <select id="Select2" runat="server" name="D2" style="position: absolute; top: 668px; left: 658px;">
              <option value=""> </option> 
              <option value="Вм.вн.д.в.с"> Вм.вн.д.в.с</option>
              <option value="Вм.вн.д.н.с"> Вм.вн.д.н.с</option>
              <option value="Вм.д.с н.с"> Вм.д.с н.с</option>
              <option value="Вм.об.н.с"> Вм.об.н.с</option>
              <option value="Вм.ст.н.с"> Вм.ст.н.с</option>
              <option value="Вм.я.ст.в.с"> Вм.я.ст.в.с</option>
              <option value="Вм.я.ст.н.с"> Вм.я.ст.н.с</option>
              <option value="Вн.ф.>доп.зн.н.с"> Вн.ф.>доп.зн.н.с</option>
              <option value="Вн.ф.<доп.зн.н.с"> Вн.ф.< доп.зн.н.с</option>
              <option value="Марк.> 4мм"> Марк.> 4мм</option>
              <option value="ф.ст.<доп.зн.н.с"> ф.ст.< доп.зн.н.с</option>
              <option value="ф.ст.>доп.зн.н.с"> ф.ст.>доп.зн.н.с</option>
           </select>
       
       
        <asp:Label ID="Label9" runat="server" Text="Label" style="position: absolute; top: 62px; left: 85px; width: 314px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label24" runat="server" Text = "Утопание (вылет) ступицы, мм" style="position: absolute; left: 47px; top: 265px; width: 216px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox14" runat="server" style="position: absolute; top: 363px; left: 275px; margin-top: 2px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:Label ID="Label25" runat="server" Text = "Внутренний диаметр обода н.с., мм" style="position: absolute; left: 18px; top: 305px; width: 243px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label26" runat="server" Text = "Внутренний диаметр обода в.с., мм" style="position: absolute; left: 19px; top: 348px; width: 243px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox15" MaxLength="5" runat="server" style="position: absolute; top: 467px; left: 276px; margin-top: 2px;" Width="80px"></asp:TextBox>
       <asp:Label ID="Label27" runat="server" Text = "Внутренний диаметр обода н.с., мм" style="position: absolute; left: 18px; top: 532px; width: 247px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox16" MaxLength="3" runat="server" style="position: absolute; top: 549px; left: 276px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox17" MaxLength="3" runat="server" style="position: absolute; top: 590px; left: 276px;" Width="80px"></asp:TextBox>
       <asp:Label ID="Label28" runat="server" Text = "Внутренний диаметр обода в.с., мм" style="position: absolute; left: 18px; top: 572px; width: 247px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:CheckBox ID="CheckBox2" runat="server" style="position: absolute; top: 669px; left: 177px;" Text="Маркировка" TextAlign="Left"/>
       
       
       <asp:CheckBox ID="CheckBox3" runat="server" style="position: absolute; top: 366px; left: 519px;" Text="Диаметр ступицы" TextAlign="Left" Enabled="False" EnableTheming="False" EnableViewState="False"/>
       
       
       <asp:TextBox ID="TextBox18" runat="server" style="position: absolute; top: 241px; left: 658px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:Label ID="Label29" runat="server" Text = "Толщина диска у ступицы, мм" style="position: absolute; left: 435px; top: 265px; width: 224px; margin-top: 17px; height: 20px; right: 700px;"></asp:Label>
       <asp:Label ID="Label30" runat="server" Text = "Толщина диска в середине, мм" style="position: absolute; left: 431px; top: 306px; width: 224px; margin-top: 17px; height: 20px; right: 704px;"></asp:Label>
       
       
       <asp:TextBox ID="TextBox19" runat="server" style="position: absolute; top: 282px; left: 658px;" ReadOnly="True" Width="80px"></asp:TextBox>
       
       
       <asp:TextBox ID="TextBox20" runat="server" style="position: absolute; top: 323px; left: 658px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:Label ID="Label31" runat="server" Text = "Толщина диска у обода, мм" style="position: absolute; left: 454px; top: 492px; width: 194px; margin-top: 17px; height: 20px;"></asp:Label>
   
       <asp:Label ID="Label32" runat="server" Text = "Толщина диска у ступицы, мм" style="position: absolute; left: 435px; top: 533px; width: 224px; margin-top: 17px; height: 20px; right: 700px;"></asp:Label>
       <asp:Label ID="Label33" runat="server" Text = "Толщина диска в середине, мм" style="position: absolute; left: 431px; top: 573px; width: 224px; margin-top: 17px; height: 20px; right: 704px;"></asp:Label>
       
       
       <asp:TextBox ID="TextBox21" MaxLength="2" runat="server" style="position: absolute; top: 509px; left: 658px;"  Width="80px"></asp:TextBox>
       
       
       <asp:TextBox ID="TextBox22" MaxLength="2" runat="server" style="position: absolute; top: 550px; left: 658px;"  Width="80px"></asp:TextBox>
       
       
       <asp:TextBox ID="TextBox23" MaxLength="2" runat="server" style="position: absolute; top: 590px; left: 658px;"  Width="80px"></asp:TextBox>
       
       
       <asp:Label ID="Label34" runat="server" Text = "Выявленный дефект" style="position: absolute; left: 500px; top: 452px; width: 151px; margin-top: 17px; height: 20px;"></asp:Label>
   
          <select id="Select3" runat="server" name="D3" style="position: absolute; top: 469px; left: 658px;">
               <option value=""> </option> 
              <option value="Вм.вн.д.в.с"> Вм.вн.д.в.с</option>
              <option value="Вм.вн.д.н.с"> Вм.вн.д.н.с</option>
              <option value="Вм.д.с н.с"> Вм.д.с н.с</option>
              <option value="Вм.об.н.с"> Вм.об.н.с</option>
              <option value="Вм.ст.н.с"> Вм.ст.н.с</option>
              <option value="Вм.я.ст.в.с"> Вм.я.ст.в.с</option>
              <option value="Вм.я.ст.н.с"> Вм.я.ст.н.с</option>
              <option value="Вн.ф.>доп.зн.н.с"> Вн.ф.>доп.зн.н.с</option>
              <option value="Вн.ф.<доп.зн.н.с"> Вн.ф.< доп.зн.н.с</option>
              <option value="Марк.> 4мм"> Марк.> 4мм</option>
              <option value="ф.ст.<доп.зн.н.с"> ф.ст.< доп.зн.н.с</option>
              <option value="ф.ст.>доп.зн.н.с"> ф.ст.>доп.зн.н.с</option>
           </select></div>
    </form>
</body>
</html>
