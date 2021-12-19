<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="VL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>energy</title>
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
        <div class="container-md">
             <div class="row"> 
                <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 obj-heading text-blue"> 
                    Experiment List
                </div> 
            </div> 
            <div class="text-center">
                <div class="contexp">
                    <div >
                        <asp:RadioButtonList ID="selected_experiment" runat="server" DataSourceID="SqlDataSourceExperiment" DataTextField="exp_name" DataValueField="exp_id">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSourceExperiment" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [exp_name], [exp_id] FROM [Experiment] WHERE ([course_id] = @course_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="course_id" SessionField="COURSE" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:RequiredFieldValidator ID="exp_required" CssClass="error" ErrorMessage="Please Select Experiment "
    ControlToValidate="selected_experiment" ValidationGroup="exp_check" runat="server" Display="Dynamic" /><br />
                    </div>
                </div>
            </div>
            <div class="text-center">
                
                <asp:Button ID="Submit" ValidationGroup="exp_check" class="btn btn-success" Text="Submit" runat="server"  OnClick="Submit_Click" />
                <asp:Button ID="clear"  CssClass="btn btn-info" Text="Clear Selection" runat="server" OnClick="clear_Click" />
            </div>
    </div>
    </form>
</body>
</html>
