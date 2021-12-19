<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookslot.aspx.cs" Inherits="VL.bookslot" %>

<!DOCTYPE html>

<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Virtual Labs</title>
        <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="custom.css">
    <link rel="stylesheet" href="util.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i|Source+Sans+Pro:400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <style type="text/css">
        .auto-style1 {
            width: 83%;
            float: left;
            height: 501px;
            margin-bottom: 51px;
        }
        .auto-style2 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            width: 467px;
            height: 478px;
            }
        .auto-style3 {
            margin-top: 0px;
            margin-left: -1px;
            margin-right: 0;
        }
        .auto-style4 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            height: 399px;
            width: 739px;

        }
        .auto-style5 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            height: 43px;
            font-size:20px;
            width: 739px;
        }
        .auto-style6 {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            margin-left: 100px;
            border-radius:5%;
        }
        .auto-style7 {
            margin-left: 99px;
            position: absolute;
        }
        </style>
   
</head>
<body>
    <section class="header"> 
              <header class="container hdr-logo">
                <div class="row">
                    <div class="col-md-8 col-lg-8  col-sm-12 col-xs-12">
                        <h1 class="logo">
                            <ul class="logo-ul">
                                <li class="logo-img"><a href="course1.aspx">
                                    <img src="\Images\jpg.jpg"></a></li>
                                <li class="logo-text">
                                    <div class="logo-text-big">An Initiative of</div>
                                    <div style="font-weight: 600">Savitribai Phule University<br>
                                        <span style="font-weight: normal !important;">Pune</span></div>
                                </li>
                            </ul>
                        </h1>
                    </div> 
                </div>
            </header>
                   <div class="fix-hdr affix-top">
            <div class="container-fluid navWrap" style="background-color:#00446d;color: #fff;">
                <div class="container">
                   <nav class="navbar desk_nav"> 
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="course1.aspx">Home</a></li>
                            <li><a href="about-us">About us</a></li>
                            <li><a href="contact-us">Contact us</a></li>
                            <li><a href="profile.aspx">Profile</a></li>
                            <li class=""><a href="logout.aspx">Logout</a></li>
                        </ul>
                    </nav> 
                </div>  
            </div>
        </div> 
    </section>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
            <table id="table1" align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="2">
                        <center>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="black" BorderWidth="0.5px" CssClass="auto-style3" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="396px" NextPrevFormat="FullMonth" Width="391px" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayHeaderStyle CssClass="text-center" Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle  Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" CssClass="m-r-10" />
                            <OtherMonthDayStyle  ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="1px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar></center>
                    </td>
                    <td class="auto-style5"><center>
                        <label class="label-info">Available Slots For Selected Exp on the date</label></center></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="m-l-99 label-danger" Font-Size="20px" style="margin-left: 195px; margin-top: 160px"></asp:Label>
                        
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="FormatRadioButtonList" Height="366px" Width="246px" style="margin-left: 82px" Visible="False">
                                <asp:ListItem Value="08:00:00">8:00 AM - 11:00 AM (Morning)</asp:ListItem>
                                <asp:ListItem Value="11:00:00">11:00 AM - 2:00 PM(Afternoon)</asp:ListItem>
                                <asp:ListItem Value="14:00:00">2:00 PM - 5:00 PM (Afternoon)</asp:ListItem>
                                <asp:ListItem Value="17:00:00">5:00 PM - 8:00 PM (Evening)</asp:ListItem>
                                <asp:ListItem Value="20:00:00">8:00 PM - 11:00 PM (Night)</asp:ListItem>
                                <asp:ListItem Value="23:00:00">11:00 PM - 2:00 AM (Night)</asp:ListItem>
                                <asp:ListItem Value="02:00:00">2:00 AM - 5:00 AM (Night)</asp:ListItem>
                            </asp:RadioButtonList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="auto-style7" ErrorMessage="Please select Time Slot"
    ControlToValidate="RadioButtonList1" runat="server" ForeColor="Red" Display="Dynamic" /><br />
                        <asp:Button ID="Button1" CssClass="auto-style6" runat="server" Text="Book Slot" Width="109px" OnClick="Button1_Click" />
                        
                        <br />
                    </td>
                   
                </tr>
            </table>
            <div>

            </div>
        </div>
    </form>
</body>
</html>
