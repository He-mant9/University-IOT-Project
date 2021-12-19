<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="VL.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   	<title>Register</title>
	   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Virtual Labs</title>
        <link rel="stylesheet" href="/css/login.css">
   <!-- <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="custom.css">
    <link rel="stylesheet" href="util.css">-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i|Source+Sans+Pro:400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
</head>
 <body>
    <form id="form1" runat="server" class="frmalg">

        <div class="regcontainer">
            <center>
                <h3>SIGN UP</h3>
            </center>
            <label for="name"><b>Name</b></label>
            <asp:TextBox runat="server" ID="name" placeholder="First name and last name" ValidationGroup="RegisterCheck"></asp:TextBox>
            <asp:RequiredFieldValidator ID="namerequired" Display="Dynamic" class="error" ErrorMessage="Required" runat="server" ControlToValidate="name" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>
            <br/><br/>

            <label for="collegename"><b>College Name</b></label>
            <asp:TextBox runat="server" ID="collegename" placeholder="Enter college name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="colrequired" Display="Dynamic" class="error" ErrorMessage="Required" runat="server" ControlToValidate="collegename" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>
            <br/><br/>
            <table>
                <tr>
                    <td style="width:291px;">
                        <label><b>Gender</b></label></td>
                    <td style="width:291px; ">
                        <label for="dob"><b>Date of Birth</b></label></td>
                </tr>
                <tr><td style="width:291px;">
                    <asp:RadioButtonList ID="gender" RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                   <asp:RequiredFieldValidator ID="genderrequired" Display="Dynamic" class="error" ErrorMessage="Required" runat="server" ControlToValidate="gender" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>

                       <!-- <asp:RadioButton ID="male_radio" runat="server" Text="Male" GroupName="gender" />
                        <asp:RadioButton ID="female_radio" runat="server" Text="Female" GroupName="gender" />
                           -->
                </td>
                <td style="width:291px;">
                        <asp:TextBox ID="dob" CssClass="dob" TextMode="Date" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="dobrequired" Display="Dynamic" class="error" ErrorMessage="Required" runat="server" ControlToValidate="dob" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>

                </td>
            </tr></table>
           
            <br/>
            <label for="regemail"><b>Email</b></label>
            <asp:TextBox runat="server" ID="regemail" placeholder="Enter email id" AutoPostBack="true" ValidationGroup="RegisterCheck" OnTextChanged="regemail_TextChanged" ></asp:TextBox>
             <asp:RegularExpressionValidator id="valemail" Display="Dynamic" class="error" ControlToValidate="regemail"  ValidationGroup="RegisterCheck" Text="Invalid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Runat="server" />    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="regemail" ValidationGroup="RegisterCheck" class="error" ErrorMessage="Required"></asp:RequiredFieldValidator>
            <asp:Label ID="exemail" runat="server" CssClass="error" Visible="false" Text="Email already registered with different user"></asp:Label>
            <br/>
            <br/>

            <label for="regphone"><b>Mobile Number</b></label>
            <asp:TextBox runat="server" ID="regphone" placeholder="Enter mobile number" AutoPostBack="true" OnTextChanged="regphone_TextChanged" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="phonerequired" Display="Dynamic" class="error" ErrorMessage="Required" runat="server" ControlToValidate="regphone" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator id="valphone" Display="Dynamic" class="error" ControlToValidate="regphone" Text="Invalid mobile number" ValidationExpression="[0-9]{10}"  Runat="server" />    
            <asp:Label ID="exmobile" runat="server" CssClass="error"  Visible="false" Text="Mobile Number already registered with different user"></asp:Label>
            <br/>
            <br/>

            <label for="regpassword"><b>Password</b></label>
            <asp:TextBox runat="server" ID="regpassword" TextMode="Password" placeholder="Enter Password" ValidationGroup="RegisterCheck"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordrequired" Display="Dynamic" class="error" ErrorMessage="Password cannot be empty" runat="server" ControlToValidate="regpassword" ValidationGroup="RegisterCheck" ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valpassword" Display="Dynamic" class="error" runat="server" ControlToValidate="regpassword" ErrorMessage="Minimum password length is 6" ValidationExpression="^([a-zA-Z0-9@#$%^&+=*]{6,50})$" />
            <br/>
            <br/>

            <label for="confpassword"><b>Confirm Password</b></label>
            <asp:TextBox runat="server" ID="confpassword" TextMode="Password" placeholder="Confirm Password" ValidationGroup="RegisterCheck"></asp:TextBox>
            <asp:CompareValidator ID="passmatch" class="error" Display="Dynamic" runat="server" ControlToCompare="confpassword" ControlToValidate="regpassword" Type="String" Operator="Equal" ErrorMessage="Password should match"></asp:CompareValidator>
            <br/>
            <br/>

            <asp:Button runat="server" ID="registerbtn" CssClass="lgnbtn" Text="Register" ValidationGroup="RegisterCheck" CausesValidation="true" OnClick="registerbtn_Click" />
            <h5>Already have an account <a href="login.aspx">Click Here</a> to Sign In</h5>
        </div>
    </form>
</body>
</html>
