<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="VL.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    	<title>Login</title>
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

        <div class="container">
            <center>
                <h3>SIGN IN </h3>
            </center>

            <label for="username"><b>Username</b></label>
            <asp:TextBox runat="server" ID="username" placeholder="Enter Registered emai id"></asp:TextBox>
            <asp:RequiredFieldValidator ID="usernameval" Display="Dynamic" class="error" ErrorMessage="Enter email id" runat="server" ControlToValidate="username" ValidationGroup="LoginCheck" ></asp:RequiredFieldValidator>
            <br />
            <br />

            <label for="password"><b>Password</b></label>
            <asp:TextBox runat="server" ID="password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passval" Display="Dynamic" class="error" ErrorMessage="Enter password" runat="server" ControlToValidate="password" ValidationGroup="LoginCheck" ></asp:RequiredFieldValidator>
            <br />
                <asp:Label ID="incorrect" runat="server" Text="Label" class="error" Visible="false"></asp:Label>
            <br />

            <asp:Button runat="server" ID="loginbtn" CssClass="lgnbtn" Text="Login" OnClick="loginbtn_Click" ValidationGroup="LoginCheck" />
            <h5>If new user <a href="register.aspx">Click Here</a> for Registration</h5>
        </div>
    </form>
</body>
</html>
