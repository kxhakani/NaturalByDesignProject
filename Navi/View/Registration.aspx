<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Navi.Registration" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 156px;
        }

        .auto-style2 {
            font-size: xx-large;
        }
    </style>

    <!-- Bootstrap Core CSS -->
    <link href="../style/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../style/css/modern-business.css" />
    <link href="../style/css/login.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="../style/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
    <link rel="stylesheet" href="../style/css/form-elements.css" />
    <link rel="stylesheet" href="../style/css/style.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!-- Page Content -->
    <div class="container">
        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Natural By Design</strong> Registration</h1>
                            <div class="description">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Register</h3>
                                    <p>Enter a username and password to register:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-key"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form id="form1" runat="server" role="form" class="login-form">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtUser" runat="server" name="form-username" placeholder="Username..." class="form-username form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" name="form-password" placeholder="Password..." class="form-password form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" name="form-ConfPassword" placeholder="Password..." class="form-password form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Must confirm password" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>

                                    </div>
                                    <asp:Button ID="btnRegister" runat="server" class="btn" Text="Register" OnClick="btnRegister_Click" />
                                    <asp:Button ID="btnLogin" runat="server" class="btn" CausesValidation="False"  OnClick="btnLogin_Click" Text="Login Page"/>
                                    <asp:Label ID="lblMessage" runat="server"></asp:Label>







                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Javascript -->
            <script src="../js/jquery-1.11.1.min.js"></script>
            <script src="../js/bootstrap.min.js"></script>
            <script src="../js/jquery.backstretch.min.js"></script>
            <script src="../js/scripts.js"></script>

            <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
        </div>
    </div>

</body>
</html>




