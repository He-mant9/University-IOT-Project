<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab.aspx.cs" Inherits="VL.lab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>lab</title>
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
          
.Initial
{
  display: block;
  padding: 4px 18px 4px 18px;
  float: left;
  /*/background: url("../Images/InitialImage.png") no-repeat right top;*/
  color: Black;
  font-weight: bold;
      padding: 20px;
    padding-left: 50px;
    padding-right: 50px;
    background-color: burlywood;
}
.Initial:hover
{
  color: black;
  background-color: white;
  /*/background: url("../Images/SelectedButton.png") no-repeat right top;*/
}
.Clicked
{
  float: left;
  display: block;
 /* background: url("../Images/SelectedButton.png") no-repeat right top;*/
  padding: 4px 18px 4px 18px;
  color: Black;
  font-weight: bold;
  color: White;
      padding: 20px;
    padding-left: 50px;
    padding-right: 50px;
    background-color: #9d7644;
}

         .auto-style1 {
             width: 100%;
             height: auto;
             margin-left: 10px;
             margin-top:5px;
            
         }


         .auto-style2 {
             width: 70%;
             display: inline-block;
             align-self: center;
             height: 61px;
             margin-top: 10px;
         }
         .auto-style3 {
             width: 80%;
             margin-top: 5px;
             margin-left: 50px;
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
                                <li class="logo-img"> <a href="course1.aspx"><img src="\Images\jpg.jpg"></a></li> 
                                <li class="logo-text"><div class="logo-text-big">An Initiative of</div> <div style="font-weight: 600">Savitribai Phule University<br><span style="font-weight: normal !important;">Pune</span></div></li>
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
      <!--<table width="80%" align="center" class="m-l-0">
      <tr>
        <td class="tab-content">
          -->
            <div class="row">
                <div class="text-center">
                    <div class="auto-style2">
                        <asp:Button Text="Theory" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                            OnClick="Tab1_Click" />
                        <asp:Button Text="Aim Objectives" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                            OnClick="Tab2_Click" />
                        <asp:Button Text="Procedure" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                            OnClick="Tab3_Click" />
                        <asp:Button Text="Practical" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                            OnClick="Tab4_Click" />
                        <asp:Button Text="Result" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
                            OnClick="Tab5_Click" />
                    </div>
                </div>
            </div>

            <!--</td>
          </tr>
                -->
            <table class="auto-style3">
          <tr>
              <td>
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="border: 1px solid #666;" class="auto-style1">
                <tr>
                  <td>
                    <h3>
                      <span>view 1 </span>
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
               <table style="border: 1px solid #666;" class="auto-style1">
                <tr>
                  <td>
                    <h3>
                      View 2
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
               <table style="border: 1px solid #666;" class="auto-style1">
                <tr>
                  <td>
                    <h3>
                      View 3
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View4" runat="server">
               <table style="border: 1px solid #666;" class="auto-style1">
                <tr>
                  <td>
                    <h3>
                      View 4
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View5" runat="server">
               <table style="border: 1px solid #666;" class="auto-style1">
                <tr>
                  <td>
                    <h3>
                      View 5
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </--table>
        </div>
    </form>
</body>
</html>
