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

    <title>Admin</title>

    <link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
    <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>

    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBcBew0WHTl3bIcr6fXrxOyoADmqcZm8xs"
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

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
        integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ==" crossorigin="" />

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
                                <a href="#" style="color: #FFFFFF"><i class="fa fa-user fa-fw"></i><strong>REGISTERED GIRLS</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level" style="background-color: #FF8000">
                                    <li style="background-color: #FF8000">
                                        <a href="QualityAssurence.aspx" style="color: #FFFFFF">Quality Assurance</a>
                                    </li>
                                    <li style="background-color: #FF8000">
                                        <a href="dep.aspx" style="color: #FFFFFF">Quality Assured</a>
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

                                <div class="alert alert-success fade in" style="background-color: #475A64">
                                   <%-- <strong>Hi: </strong><a id="txtUserName" runat="server" style="color: gray"></a>--%>
                                  <%--  <asp:LinkButton ID="lnlEasternCape" runat="server" Style="color: #2B5391;" OnClick="lnlEasternCape_Click"><strong >Eastern Cape</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkFreeState" runat="server" Style="color: #FF8000;" OnClick="LinkFreeState_Click"><strong>Free State</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkKzn" runat="server" Style="color: #FFFFFF;" ><strong>KwaZulu-Natal</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkGauteng" runat="server" Style="color: #800000;" OnClick="LinkGauteng_Click"><strong>Gauteng</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkLimpopo" runat="server" Style="color: #2B5391;" OnClick="LinkLimpopo_Click"><strong >Limpopo</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkMpumalanga" runat="server" Style="color: #FF8000;"><strong >Mpumalanga</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkNw" runat="server" Style="color: #FFFFFF;"><strong>North West</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkNC" runat="server" Style="color: ##800000;"><strong>Northern Cape</strong></asp:LinkButton>
                                    <asp:LinkButton ID="LinkWC" runat="server" Style="color: #2B5391;"><strong>Western Cape</strong></asp:LinkButton>--%>
                                    <p style="color:#FFFFFF">Geographic breakdown of the AGYW programme implementation areas</p>
                                </div>
                                <table id="control">
                                    <tr>
                                        <td align="top">
                                            <div id="MapPanel" class="MapPanel" style="width: 850px; height: 500px;"></div>
                                            <%--<cc1:GMap ID="GMap1" runat="server" Height="500px" Width="850px" />--%>

                                            <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
                                                integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
                                                crossorigin="">
                                            </script>

                                            <script src="https://api.afrigis.co.za/leaflet/1.0.0/afrigis-leaflet.min.js"></script>

                                        

                                            <script>
                                               
                                                var map = AfriGIS.map("MapPanel", {
                                                    // replace zoom level with your default
                                                    zoom: 5,
                                                    // replace center coord with your default
                                                    center: L.latLng(-29, 26),
                                                    zoomControl: true,
                                                    mapType: "Vector",
                                                    key: "f3865f0158"
                                                });
                                                setTimeout(function () {
                                                    map.switchTo("Hybrid");     // Vector or Hybrid or Imagery
                                                },5000);


                                                var marker = L.marker([-25, 27]).addTo(map)

                                                var jozi = L.popup()
                                                .setLatLng([-25, 27])
                                                .setContent('<p><strong>North West<br />Rustenburg</strong><br />Total Number of Registered Girls = 5200 <br /> Total Number Of Girls who are HIV Infected = 200</p>')
                                                .openOn(map);
                                                marker.bindPopup(jozi).openPopup();

                                                var ekurhuleniMarker = L.marker([-32.0027832, 18.5072125]).addTo(map)

                                                var ekurhuleni = L.popup()
                                                .setLatLng([-32.0027832, 18.5072125])
                                                .setContent('<p><strong>Cape Town<br />Klipfontein </strong><br />Total Number of Registered Girls = 2045 <br /> Total Number Of Girls who are HIV Infected = 600</p>')
                                                .openOn(map);
                                                ekurhuleniMarker.bindPopup(ekurhuleni).openPopup();

                                                var marker3 = L.marker([-25.746019, 28.187120]).addTo(map)

                                                var pop1 = L.popup()
                                                .setLatLng([-25.886629, 28.195200])
                                                .setContent('<p><strong>Gauteng<br />City of Tshwane Metropolitan</strong> <br />Total Number of Registered Girls = 1000 <br /> Total Number Of Girls who are HIV Infected = 250</p>')
                                                .openOn(map);
                                                marker3.bindPopup(pop1).openPopup();

                                                var marker4 = L.marker([-24.8698578, 30.0138383]).addTo(map)

                                                var pop2 = L.popup()
                                                .setLatLng([-24.8698578, 30.0138383])
                                                .setContent('<p><strong>Limpopo<br/>Fetakgomo -Greater Tubatse</strong><br />Total Number of Registered Girls = 2045 <br /> Total Number Of Girls who are HIV Infected = 1002</p>')
                                                .openOn(map);

                                                marker4.bindPopup(pop2).openPopup();

                                                var maker5 = L.marker([-28.569595, 27.5283394]).addTo(map)

                                                var pop3 = L.popup()
                                                .setLatLng([-28.569595, 27.5283394])
                                                .setContent('<p><strong>Free State(Thabo Mofutsanyana)</strong><br />Setsoto <br />Total Number of Registered Girls = 352 <br /> Total Number Of Girls who are HIV Infected = 310</p>')
                                                .openOn(map);

                                                maker5.bindPopup(pop3).openPopup();

                                                var maker6 = L.marker([-28.37078, 28.2489511]).addTo(map)

                                                var pop4 = L.popup()
                                                .setLatLng([-28.37078, 28.2489511])
                                                .setContent('<p><strong>Free State(Thabo Mofutsanyana)</strong><br />Dihlabeng <br />Total Number of Registered Girls = 200 <br /> Total Number Of Girls who are HIV Infected = 400</p>')
                                                .openOn(map);

                                                maker6.bindPopup(pop4).openPopup();

                                                var maker7 = L.marker([-31.6580309, 28.7076857]).addTo(map)
                                                var pop5 = L.popup()
                                                .setLatLng([-31.6580309, 28.7076857])
                                                .setContent('<p><strong>Eastern Cape(Oliver Tambo  District)</strong><br />Nyandeni<br />Total Number of Registered Girls = 1003 <br /> Total Number Of Girls who are HIV Infected = 800</p>')
                                                .openOn(map);
                                                maker7.bindPopup(pop5).openPopup();

                                                var maker8 = L.marker([-33.0191604, 27.8998573]).addTo(map)
                                                var pop6 = L.popup()
                                                .setLatLng([-33.0191604, 27.8998573])
                                                .setContent('<p><strong>Eastern Cape(Nalson Mandela Bay Metro)</strong><br />Total Number of Registered Girls = 110 <br /> Total Number Of Girls who are HIV Infected = 1352</p>')
                                                .openOn(map);
                                                maker8.bindPopup(pop6).openPopup();

                                                var maker9 = L.marker([-26.452245, 29.1964]).addTo(map)
                                                var pop7 = L.popup()
                                                .setLatLng([-26.452245, 29.1964])
                                                .setContent('<p><strong>Mpumalanga(Gert Sibande)</strong><br />Govan Mbeki<br />Total Number of Registered Girls = 1045 <br /> Total Number Of Girls who are HIV Infected = 144</p>')
                                                .openOn(map);
                                                maker9.bindPopup(pop7).openPopup();

                                                var maker0 = L.marker([-25.3503397, 31.2592588]).addTo(map)
                                                var pop8 = L.popup()
                                                .setLatLng([-25.3503397, 31.2592588])
                                                .setContent('<p><strong>Mpumalanga(Enhlandzeni District)</strong><br />City Of Mbombela<br />Total Number of Registered Girls = 1023 <br /> Total Number Of Girls who are HIV Infected = 1652</p>')
                                                .openOn(map);
                                                maker0.bindPopup(pop8).openPopup();

                                                var maker11 = L.marker([-28.7886787, 31.965813]).addTo(map)
                                                var pop9 = L.popup()
                                                .setLatLng([-28.7886787, 31.965813])
                                                .setContent('<p><strong>Kwa-Zulu Natal(King Cetshwayo)</strong><br />City Of uMhlathuze<br />Total Number of Registered Girls = 1520 <br /> Total Number Of Girls who are HIV Infected = 3201</p>')
                                                .openOn(map);
                                                maker11.bindPopup(pop9).openPopup();

                                                var makerkzn = L.marker([-27.83162, 31.0553668]).addTo(map)
                                                var popkzn = L.popup()
                                                .setLatLng([-27.83162, 31.0553668])
                                                .setContent('<p><strong>Kwa-Zulu Natal(Zululand)</strong><br />AbaQulusi<br />Total Number of Registered Girls = 1006 <br /> Total Number Of Girls who are HIV Infected = 400</p>')
                                                .openOn(map);
                                                makerkzn.bindPopup(popkzn).openPopup();

                                            </script>
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

