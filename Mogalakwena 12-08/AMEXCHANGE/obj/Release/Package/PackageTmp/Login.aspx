﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AMEXCHANGE.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Community Survey-Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                       <%-- //style="float:T"--%>
                        <img src="Images/ssc.png" width="330px" height="130px"/>
                        <h1  align="Left" style="color:#fff"><strong></strong></h1>
                        <h6  align="center"></h6>
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-danger fade in" id="divError" runat="server" visible="false">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong>Error!</strong> <a id="txtError" runat="server" style="color: gray"></a>
                        </div>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" id="txtUsername" runat="server" required="required" placeholder="Username"  type="text" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" required="required" placeholder="Password" id="txtPassword" runat="server" type="password" />
                                </div>
                                <div class="form-group">
                                <!-- Change this to a button or input when using this as a form -->
                                 <asp:Button ID="btnLogin" class="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" runat="server" Text="Login" />
                               </div>
                                <div class="form-group">
                                <a href="ForgotPassword.aspx" class="btn btn-lg btn-default" style="width:100%">Forgot Password</a>
                                </div>
                            </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- SQL Data Source-->
    <asp:SqlDataSource ID="dtsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString%>" SelectCommand=""></asp:SqlDataSource>


     <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    </div>
    </form>
</body>
</html>
