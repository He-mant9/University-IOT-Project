<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="VL.Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 474px;
            border: 1px solid #000000;
            background-color: #FFFF75;
            margin-top: 6px;
            font-family: Consolas;
            font-size: x-large;
            font-weight: bolder;
            color: #996600;
        }
        .auto-style2 {
            margin-top: 5px;
            margin-bottom: 4px;
            margin-left: 0px;
        }
         #Submit{
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: large;
            font-weight: 700;
            font-style: normal;
            font-variant: small-caps;
            color: #000000;
            text-align: center;
            background-color: #C0C0C0;
            cursor: pointer;
            border-radius: 20%;
        }
        #Label1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 22px;
            font-weight: 200;
            background-color: #A48F00;
            color: #FFFFFF;
        }
        td{
            border: solid 0.5px;
            text-align: center;
            vertical-align: middle;
            height:22%;
            width:25%;
        }

        .auto-style3 {
            height: 49px;
        }
        .radio{
            line-height: normal;
            vertical-align: middle;
            text-align: center;
            cursor: pointer;
        }
        .coursename{

        }
    </style>
</head>
<body style="margin-top: 17px">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <center>
            <asp:Label ID="Label1" runat="server" Text="Select Course" CssClass="auto-style2" Height="31px" Width="1062px"></asp:Label>
         
            <table id="table1" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Course1" class="coursename" runat="server" Text="B.Tech Energy"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton1" class="radio" GroupName="course"  runat="server" />
                    </td>
                    <td >
                        <asp:Label ID="Course2" class="coursename" runat="server"  Text="M.Sc. Physics"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton2" class="radio" GroupName="course" runat="server" />
                    </td>
                    <td >
                        <asp:Label ID="Course3" class="coursename" runat="server" Text="M.Sc. Electronics"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton3" class="radio" GroupName="course" runat="server" />
                    </td>
                    <td >
                        <asp:Label ID="Course4" class="coursename" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton4" class="radio" GroupName="course" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Course5" class="coursename" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton5" class="radio" GroupName="course" runat="server" />
                    </td>
                    <td >
                        <asp:Label ID="Course6" class="coursename" runat="server"  Text="Label"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton6" class="radio" GroupName="course" runat="server" />
                    </td>
                    <td >
                        <asp:Label ID="Course7" class="coursename" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton7" class="radio" GroupName="course" runat="server" />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Course8" class="coursename" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:RadioButton ID="RadioButton8" class="radio" GroupName="course" runat="server" />
                    </td>
                </tr>
            </table>
                  <br />
               
                <asp:Button ID="Submit" runat="server" Text="Submit" Width="206px"  OnClick="Submit_Click" />
               
            <br />

        </div>
    </form>
</body>
</html>
