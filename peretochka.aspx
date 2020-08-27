<%@ Page Language="C#" AutoEventWireup="true" CodeFile="peretochka.aspx.cs" Inherits="peretochka" %>

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
    </style>
</head>
<body>
    <form id="form6" runat="server">
   <div style="height: 1081px; background-color: #D2D0D2;">

     <div style="width: 100%; height: 33px; background-color: #999999; font-size: x-large; color: #FFFFFF;">
    
            <p style="margin-left: 40px">Ввод геометрических параметров (переточка)</p> 
       
            
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
        
         
        <asp:Button ID="Button2" runat="server" Text="ОК" style="position: absolute; left: 808px; top: 573px; height: 30px; width: 72px;" BackColor="#999999" Font-Size="Medium" OnClick="Button2_Click1" />
               
        <asp:Label ID="Label8" runat="server" Text="Label" style="position: absolute; top: 62px; left: 421px;" Font-Bold="True"></asp:Label>
        <asp:Label ID="Errormes" runat="server" style="position: absolute; top: 648px; left: 36px; width: 256px;" Font-Bold="True" ForeColor="Red"></asp:Label>
        
       <asp:Label ID="Label11" runat="server" Text="Калибровка/Расточка" style="position: absolute; top: 90px; left: 462px;"></asp:Label>
       <asp:Label ID="Label12" runat="server" Text="Годность" style="position: absolute; top: 133px; left: 464px;"></asp:Label>
       <asp:TextBox ID="TextBox5" runat="server" style="position: absolute; top: 89px; left: 629px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox6" runat="server" style="position: absolute; top: 89px; left: 694px; width: 20px;" ReadOnly="True"></asp:TextBox>
       <asp:TextBox ID="TextBox7" runat="server" style="position: absolute; top: 132px; left: 542px; width: 26px;" ReadOnly="True"></asp:TextBox>
               
    
       <asp:Label ID="Label13" runat="server" Text="/" style="position: absolute; top: 89px; left: 670px; height: 21px; width: 7px;" Font-Bold="False" Font-Size="Larger"></asp:Label>
       <asp:Label ID="Label14" runat="server" Text="Геометрические параметры колеса до обработки:" style="position: absolute; top: 200px; left: 44px; width: 365px;" Font-Bold="True"></asp:Label>
       <asp:Label ID="Label15" runat="server" Text = "Диаметр круга катания, мм" style="position: absolute; left: 27px; top: 224px; width: 189px; margin-top: 17px; height: 20px; right: 803px;"></asp:Label>
       <asp:Label ID="Label16" runat="server" Text = "Ширина обода, мм" style="position: absolute; left: 82px; top: 263px; width: 132px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label17" runat="server" Text = "Причина переточки" style="position: absolute; left: 604px; top: 115px; width: 146px; margin-top: 17px; height: 20px;"></asp:Label>
        
       <asp:TextBox ID="TextBox8" runat="server" style="position: absolute; top: 240px; left: 227px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox9" runat="server" style="position: absolute; top: 280px; left: 227px;" ReadOnly="True" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox10" runat="server" style="position: absolute; top: 131px; left: 753px; width: 95px;" ReadOnly="True"></asp:TextBox>
        
       <asp:Label ID="Label18" runat="server" Text="Геометрические параметры колеса после обработки:" style="position: absolute; top: 335px; left: 44px; width: 391px;" Font-Bold="True"></asp:Label>
       
       <asp:Label ID="Label19" runat="server" Text = "Диаметр круга катания, мм <span style= color:red>*</span>" style="position: absolute; left: 53px; top: 372px; width: 204px; margin-top: 17px; height: 20px; right: 773px;"></asp:Label>
       <asp:Label ID="Label20" runat="server" Text = "Ширина обода, мм <span style= color:red>*</span>" style="position: absolute; left: 109px; top: 409px; width: 145px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label21" runat="server" Text = "Годность <span style= color:red>*</span>" style="position: absolute; left: 175px; top: 482px; width: 84px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:Label ID="Label22" runat="server" Text = "Причина брака" style="position: absolute; left: 139px; top: 522px; width: 113px; margin-top: 17px; height: 20px;"></asp:Label>
       <asp:TextBox ID="TextBox12" MaxLength="3" runat="server" style="position: absolute; top: 387px; left: 269px;" Width="80px"></asp:TextBox>
       <asp:TextBox ID="TextBox13" MaxLength="5" runat="server" style="position: absolute; top: 425px; left: 269px;" Width="80px"></asp:TextBox>
       <asp:CheckBox ID="CheckBox1" runat="server" style="position: absolute; top: 461px; left: 189px;" Text="Профиль" TextAlign="Left"/>
       <asp:Label ID="Label23" runat="server" Text = "Поля, обозначенные знаком <span style= color:red>*</span>, обязательны для заполнения" style="position: absolute; left: 43px; top: 563px; width: 443px; margin-top: 17px; height: 20px;"></asp:Label>
   
          <select id="Select1" runat="server" name="D1" style="position: absolute; top: 498px; left: 271px;">
               <option> </option>
              <option value="Т">Т</option>
              <option value="Зд">Зд</option>
              <option value="Б-к">Б-к</option>
           </select>

          <select id="Select2" runat="server" name="D2" style="position: absolute; top: 538px; left: 271px;">
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
       
       
    </div>
    </form>
</body>
</html>
