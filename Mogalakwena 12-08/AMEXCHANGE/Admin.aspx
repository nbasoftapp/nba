<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AMEXCHANGE.Admin" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<!DOCTYPE  html/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Community Survey-Household</title>

    <link rel="stylesheet" href="js/leaflet.css" />
    <script src="js/leaflet.js"></script>

    <script async defer src="https://maps.googleapis.com/maps/api/json?key=AIzaSyBcBew0WHTl3bIcr6fXrxOyoADmqcZm8xs"
        type="text/javascript"></script>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

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


    <style type="text/css">
        html {
            height: 100%;
        }

        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #mapid {
            height: 180px;
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <img src="Images/ssc.png" width="250px" height="60px" style="float: left" />
                    <a class="navbar-brand" href="Admin.aspx"></a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right" style="float: right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <%-- <li><a href="Users.aspx"><i class="fa fa-user fa-fw"></i>Add user</a>
                            </li>--%>

                            <li><a href="login.aspx"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search" style="background-color: #475A64">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>

                            <li style="background-color: #2B5391">
                                <a href="#" style="color: #FFFFFF"><i class="fa fa-files-o fa-fw"></i><strong>ALL REPORTS</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">

                                    <li>
                                        <a href="rptCountTotalHouses.aspx" style="color: #FFFFFF">List Of Reports</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li id="Li1" runat="server" style="background-color: #FF8000">
                                <a href="#" style="color: #FFFFFF"><i class="fa fa-user fa-fw"></i><strong>VIEW AGYW DETAILS</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level" style="background-color: #FF8000">
                                    <li style="background-color: #FF8000">
                                        <a href="dep.aspx" style="color: #FFFFFF">AGYW information</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            <li id="divUser" runat="server" style="background-color: #800000">
                                <a href="#" style="color: #FFFFFF"><i class="fa fa-user fa-fw"></i><strong>USER MANAGEMENT</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level" style="background-color: #800000">
                                    <li style="background-color: #800000">
                                        <a href="Users.aspx" style="color: #FFFFFF">New User</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>


                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header" style="color: #FF8000;">INFORMATION MANAGEMENT SYSTEM</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="container-fluid">

                    <div class="col-lg-12">

                        <div class="panel panel-default">
                            <div class="panel-body">

                                <div class="alert alert-success fade in" style="background-color: #FF8000">
                                    <strong>Hi: </strong><a id="txtUserName" runat="server" style="color: gray"></a>
                                </div>

                                <table id="control">
                                    <tr>
                                        <td align="top">
                                           <%-- <div id="mapid" style="height: 500px; width: 860px">

                                            </div>--%>
                                            <cc1:GMap ID="GMap1" runat="server" />
                                           <%-- <script>
                                                var mymap = L.map('mapid').setView([51.505, -0.09], 13);

                                                L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
                                                    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                                                    maxZoom: 18,
                                                    id: 'mapbox.streets',
                                                    accessToken: 'your.mapbox.access.token'
                                                }).addTo(mymap);

                                                var marker = L.marker([51.5, -0.09]).addTo(mymap);

                                                var circle = L.circle([51.508, -0.11], {
                                                    color: 'red',
                                                    fillColor: '#f03',
                                                    fillOpacity: 0.5,
                                                    radius: 500
                                                }).addTo(mymap);

                                                var polygon = L.polygon([
                                                    [51.509, -0.08],
                                                    [51.503, -0.06],
                                                    [51.51, -0.047]
                                                ]).addTo(mymap);

                                                marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();
                                                circle.bindPopup("I am a circle.");
                                                polygon.bindPopup("I am a polygon.");

                                                var popup = L.popup()

                                            </script>--%>
                                        </td>
                                    </tr>
                                </table>


                                <%--<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2971.4568059626117!2d29.009780999999993!3d-24.182978999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sza!4v1436774632176" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
                            </div>
                            <!-- /.row (nested) -->
                        </div>

                    </div>
                </div>

            </div>

            <!--/row-->
        </div>
        </div>
            <!-- /#page-wrapper -->

        <footer class="main-footer">
            &copy; Copyright <%: DateTime.Now.Year %> All rights reserved. Empowered by <a href="http://www.es3.co.za/" target="_blank">
                <img class="esoftware" src="Images/es3.png" alt="Es3"></a>
        </footer>

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
        <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>
    </form>
</body>
</html>

