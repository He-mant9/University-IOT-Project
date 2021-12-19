<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course1.aspx.cs" Inherits="VL.course1" %>

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
                            <li><asp:HyperLink ID="profile" NavigateUrl="~/profile.aspx" Visible="false" runat="server">Profile</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="logout" NavigateUrl="~/logout.aspx" Visible="false" runat="server">Logout</asp:HyperLink></li>
                        </ul>
                    </nav> 
                </div>  
            </div>
        </div> 
    </section>
<section class="tab-vlab">
    <div class="container"> 
    <div class="tab-content">
        <div id="objective" class="tab-pane fade active in">
          <div class="row"> 
                <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 obj-heading text-blue"> 
                    Objectives
                </div> 
            </div> 
            <div class="row"> 
                <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 ">
                    <div class="obj-text">
                        <p>1. To provide remote-access to simulation-based Labs in various disciplines of Science and Engineering. </p>
                        <p>2. To enthuse students to conduct experiments by arousing their curiosity. This would help them in learning basic and advanced concepts through remote experimentation.</p>
                        <p>3. To provide a complete Learning Management System around the Virtual Labs where the students/ teachers can avail the various tools for learning, including additional web-resources, video-lectures, animated demonstrations and self-evaluation.</p>
                    </div> 
                </div> 
            </div> 
        </div>
      </div>
    </div> 
</section>
    <form id="form1" runat="server">
<section class="ba-section">
    <div class="container">
        <div class="row"> 
            <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 inst-heading text-blue"> 
                Select Course
            </div>
        </div>
        <div class="row">
             <div class="col-md-6 col-lg-6 col-xs-12 col-sm-6 ba-text">
              <!--  <ul>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="WebForm1.aspx">Electronics &amp; Communications</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td>
                                                <asp:Button ID="Button1" runat="server" Text="Button" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-electrical-engineering">Electrical Engineering</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-mechanical-engineering">Mechanical Engineering</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-chemical-engineering">Chemical Engineering</a></td></tr></tbody></table></li>
                    </ul></div><div class="col-md-6 col-lg-6 col-xs-12 col-sm-6 ba-text"><ul>                        <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-biotechnology-and-biomedical-engineering">Biotechnology and Biomedical Engineering</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-civil-engineering">Civil Engineering</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-physical-sciences">Physical Sciences</a></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><a href="broad-area-chemical-sciences">Chemical Sciences</a></td></tr></tbody></table></li>
                                    </ul> -->

                  <ul>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="msc_electronics" runat="server" Text="M.Sc. Electronics and communication" BorderStyle="None" OnClick="msc_electronics_Click" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><asp:Button ID="btech_energy" runat="server" Text="B.Tech Energy Science" BorderStyle="None" /> </td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><asp:Button ID="msc_physics" runat="server" Text="M.Sc. Physics" BorderStyle="None" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td><asp:Button ID="Button4" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="Button5" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                 </ul></div><div class="col-md-6 col-lg-6 col-xs-12 col-sm-6 ba-text"><ul>                        
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="Button6" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="Button7" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="Button8" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                                            <li> <table><tbody><tr style="color:#003a68; vertical-align: top;"><td><i class="fa fa-cube"></i></td><td> <asp:Button ID="Button9" runat="server" Text="Button" BorderStyle="None" /></td></tr></tbody></table></li>
                                    </ul>
            </div>
        </div>
    </div>
</section>
        </form>
 

</body></html>
