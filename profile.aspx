<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="VL.profile" %>

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
        <div class="container-fluid navWrap" style="background-color: #00446d; color: #fff; justify-content: space-between; display: inline-flex;height: 500px;border-right: solid grey;
    border-top: solid lightgrey; border-bottom: solid lightgrey; width:190px;">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <asp:Button class="btn-left btn-link bo-b active " forecolor="White" ID="booking" runat="server" Text="Today Bookings" Width="174px" OnClick="booking_Click" />
                </li>
                <li class="nav-item">
                    <asp:Button class="btn-left btn-link bo-b" forecolor="White" ID="booking_history" runat="server" Text="Bookings History" Width="174px" OnClick="booking_history_Click" />
                </li>
                <li class="nav-item">
                    <asp:Button class="btn-left btn-link bo-b" forecolor="White" ID="completed" runat="server" Text="Practicals Completed"  Width="174px" />
                </li>
                <li class="nav-item">
                    <asp:Button class="btn-left btn-link bo-b" forecolor="White" ID="button1" runat="server" Text="Button1" Width="174px" />
                </li>
            </ul>

        <div>
            <asp:SqlDataSource ID="SqlDataSourceSlot" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"   SelectCommand="SELECT Course.course_name AS [Course Name], Experiment.exp_name AS [Experiment Name], Slot.slot_date AS [Slot Date], Slot.slot_time AS [Slot Time], Slot.slot_id, Slot.status AS Status FROM Slot INNER JOIN Experiment ON Slot.exp_id = Experiment.exp_id INNER JOIN Course ON Experiment.course_id = Course.course_id WHERE (Slot.user_id = @user_id)" >
                <SelectParameters>
                    <asp:SessionParameter Name="user_id" SessionField="USERID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="no_booking" CssClass="m-l-100" runat="server" ForeColor="Black" BackColor="Red" Text="No Bookings Today"></asp:Label>
            <br />
            <asp:GridView ID="book_history" runat="server" DataSourceID="SqlDataSourceSlot" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="m-t-0" DataKeyNames="slot_id"   Width="682px" EmptyDataText="NA">
                <Columns>
                    <asp:BoundField DataField="Course Name" HeaderText="Course Name" SortExpression="Course Name" />
                    <asp:BoundField DataField="Experiment Name" HeaderText="Experiment Name" SortExpression="Experiment Name" />
                    <asp:BoundField DataField="Slot Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Slot Date" SortExpression="Slot Date" />
                    <asp:BoundField DataField="Slot Time" HeaderText="Slot Time" SortExpression="Slot Time" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="max-height" Height="50px" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left"   CssClass="max-h-full" />
                <RowStyle ForeColor="#000066" CssClass="max-height" Height="40px" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>



            <asp:GridView ID="book_current" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCurrentBook"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="m-t-0" Width="682px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Course Name" HeaderText="Course Name" SortExpression="Course Name" />
                    <asp:BoundField DataField="Experiment Name" HeaderText="Experiment Name" SortExpression="Experiment Name" />
                    <asp:BoundField DataField="Slot Date" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Slot Date" SortExpression="Slot Date" />
                    <asp:BoundField DataField="Slot Time" HeaderText="Slot Time" SortExpression="Slot Time" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" CssClass="max-height" Height="50px" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left"   CssClass="max-h-full" />
                <RowStyle ForeColor="#000066" CssClass="max-height" Height="40px" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCurrentBook" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"   SelectCommand="SELECT Course.course_name AS [Course Name], Experiment.exp_name AS [Experiment Name], Slot.slot_date AS [Slot Date], Slot.slot_time AS [Slot Time] FROM Slot INNER JOIN Experiment ON Slot.exp_id = Experiment.exp_id INNER JOIN Course ON Experiment.course_id = Course.course_id WHERE (Slot.user_id = @user_id) AND (Slot.status = 'Ongoing')" >
                <SelectParameters>
                    <asp:SessionParameter Name="user_id" SessionField="USERID" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
        </div>
    </form>
</body>
</html>

