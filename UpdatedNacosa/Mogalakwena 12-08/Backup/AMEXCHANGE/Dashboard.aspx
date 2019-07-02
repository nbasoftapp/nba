<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AMEXCHANGE.Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>AMEXCHANGE</title>
    <meta name="description" content="description">
    <meta name="author" content="DevOOPS">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
        rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <link href="plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="plugins/xcharts/xcharts.min.css" rel="stylesheet">
    <link href="plugins/select2/select2.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
    <!--End Container-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--<script src="http://code.jquery.com/jquery.js"></script>-->
    <script src="plugins/jquery/jquery-2.1.0.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="plugins/bootstrap/bootstrap.min.js"></script>
    <script src="plugins/justified-gallery/jquery.justifiedgallery.min.js"></script>
    <script src="plugins/tinymce/tinymce.min.js"></script>
    <script src="plugins/tinymce/jquery.tinymce.min.js"></script>
    <!-- All functions for this theme + document.ready processing -->
    <script src="js/devoops.js"></script>
    <script type="text/javascript">
        // Array for random data for Sparkline
        var sparkline_arr_1 = SparklineTestData();
        var sparkline_arr_2 = SparklineTestData();
        var sparkline_arr_3 = SparklineTestData();
        $(document).ready(function () {
            // Make all JS-activity for dashboard
            DashboardTabChecker();
            // Load Knob plugin and run callback for draw Knob charts for dashboard(tab-servers)
            LoadKnobScripts(DrawKnobDashboard);
            // Load Sparkline plugin and run callback for draw Sparkline charts for dashboard(top of dashboard + plot in tables)
            LoadSparkLineScript(DrawSparklineDashboard);
            // Load Morris plugin and run callback for draw Morris charts for dashboard
            LoadMorrisScripts(MorrisDashboard);
            // Make beauty hover in table
            $("#ticker-table").beautyHover();
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <!--Start Header-->
    <div id="screensaver">
        <canvas id="canvas">
        </canvas>
        <i class="fa fa-lock" id="screen_unlock"></i>
    </div>
    <div id="modalbox">
        <div class="devoops-modal">
            <div class="devoops-modal-header">
                <div class="modal-header-name">
                    <span>Basic table</span>
                </div>
                <div class="box-icons">
                    <a class="close-link"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <div class="devoops-modal-inner">
            </div>
            <div class="devoops-modal-bottom">
            </div>
        </div>
    </div>
    <header class="navbar">
        <div class="container-fluid expanded-panel">
            <div class="row">
                <div id="logo" class="col-xs-12 col-sm-2">
                    <a href="Dashboard.aspx">
                        <img src="img/final logo small.jpg" /></a>
                </div>
                <div id="top-panel" class="col-xs-12 col-sm-10">
                    <div class="row">
                        <div class="col-xs-8 col-sm-4">
                            <a href="#" class="show-sidebar"><i class="fa fa-bars"></i></a>
                            <div id="search">
                                <input type="text" placeholder="search" />
                                <i class="fa fa-search"></i>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-8 top-panel-right">
                            <ul class="nav navbar-nav pull-right panel-menu">
                                <li><a href="Reg_Sellers.aspx">Create seller account</a></li>
                                <li><a href="Reg_Buyers.aspx">Create buyer account</a></li>
                                <li><a href="Login.aspx">Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--End Header-->
    <!--Start Container-->
    <div id="main" class="container-fluid">
        <div class="row">
            <div id="sidebar-left" class="col-xs-2 col-sm-2">
                <ul class="nav main-menu">
                    <li><a href="Dashboard.aspx">
                        <%--<a href="Dashboard.aspx" class="active ajax-link">--%>
                        <i class="fa fa-dashboard"></i><span class="hidden-xs">AMexchange</span> </a>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle"><i class="fa fa-pencil-square-o">
                    </i><span class="hidden-xs">Registration</span> </a>
                        <ul class="dropdown-menu">
                            <li><a href="Reg_Buyers.aspx">Buyers</a></li>
                            <li><a href="Reg_Sellers.aspx">Sellers</a></li>
                        </ul>
                    </li>
                    <li><a href="Contactus.aspx">Contact us</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
            <!--Start Content-->
            <div id="content" class="col-xs-12 col-sm-10">
                <!--Start Breadcrumb-->
                <div class="row">
                    <div id="breadcrumb" class="col-xs-12">
                        <ol class="breadcrumb">
                            <%--<li><a href="index.html">Home</a></li>--%>
                            <li><a href="#">AMexchange</a></li>
                        </ol>
                    </div>
                </div>
                <!--End Breadcrumb-->
                <!--Start Dashboard 1-->
                <div id="dashboard-header" class="row">
                    <div class="col-xs-10 col-sm-2">
                        <h3>
                            AMEXCHANGE</h3>
                    </div>
                    <div class="col-xs-2 col-sm-1 col-sm-offset-1">
                        <div id="social" class="row">
                            <a href="#"><i class="fa fa-google-plus"></i></a><a href="#"><i class="fa fa-facebook">
                            </i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin">
                            </i></a><a href="#"><i class="fa fa-youtube"></i></a>
                        </div>
                    </div>
                    <div class="clearfix visible-xs">
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-7 pull-right">
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="sparkline-dashboard" id="sparkline-1">
                                </div>
                                <div class="sparkline-dashboard-info">
                                    <i class="fa"></i>R 756.45M <span class="txt-primary">Gold</span>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="sparkline-dashboard" id="sparkline-2">
                                </div>
                                <div class="sparkline-dashboard-info">
                                    <i class="fa"></i>R 245.12M <span class="txt-info">Copper</span>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="sparkline-dashboard" id="sparkline-3">
                                </div>
                                <div class="sparkline-dashboard-info">
                                    <i class="fa"></i>R 107.83M <span>Platinum</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Dashboard 1-->
                <!--Start Dashboard 2-->
                <div class="row-fluid">
                    <div id="dashboard_tabs" class="col-xs-12 col-sm-10">
                        <!--Start Dashboard Tab 1-->
                        <div id="dashboard-overview" class="row" style="visibility: visible; position: relative;">
                            <div id="ow-marketplace" class="col-sm-12 col-md-6">
                                <div id="ow-setting">
                                    <a href="#"><i class="fa fa-folder-open"></i></a><a href="#"><i class="fa fa-credit-card">
                                    </i></a><a href="#"><i class="fa fa-ticket"></i></a><a href="#"><i class="fa fa-bookmark-o">
                                    </i></a><a href="#"><i class="fa fa-globe"></i></a>
                                </div>
                                <h4 class="page-header">
                                    MARKETPLACE</h4>
                                <table id="ticker-table" class="table m-table table-bordered table-hover table-heading">
                                    <thead>
                                        <tr>
                                            <th>
                                                Ticker
                                            </th>
                                            <th>
                                                Price
                                            </th>
                                            <th>
                                                Change
                                            </th>
                                            <th>
                                                Weekly Chart
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Gold</b><span>Rand Gold</span>
                                            </td>
                                            <td class="m-price">
                                                33.27
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>1.45 (27&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Copper</b><span>Exxaro</span>
                                            </td>
                                            <td class="m-price">
                                                45.13
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>6.32 (12&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Silver</b><span>Rio Tinto</span>
                                            </td>
                                            <td class="m-price">
                                                71.13
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-down"></i>7.2 (12&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Platinum</b><span>African Rainbow Mineral</span>
                                            </td>
                                            <td class="m-price">
                                                30.24
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>5.3 (18&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Manganese</b><span>Samancor</span>
                                            </td>
                                            <td class="m-price">
                                                51.1
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>7.5 (3.5&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Nickel</b><span>Umcebo Mining</span>
                                            </td>
                                            <td class="m-price">
                                                123.12
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-down"></i>54.3 (15.3&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Sulfur</b><span>Xstrata</span>
                                            </td>
                                            <td class="m-price">
                                                64.14
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>12.33 (0.3&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Diamond</b><span>De Beers Group</span>
                                            </td>
                                            <td class="m-price">
                                                64.14
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>12.33 (0.3&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="m-ticker">
                                                <b>Nickel</b><span>Bhp Billiton</span>
                                            </td>
                                            <td class="m-price">
                                                64.14
                                            </td>
                                            <td class="m-change">
                                                <i class="fa fa-angle-up"></i>12.33 (0.3&#37;)
                                            </td>
                                            <td class="td-graph">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <%--.........................................................................................................................--%>
                                <div class="row">
                                    <div class="col-xs-12 page-feed">
                                        <div class="box">
                                            <div class="avatar">
                                                <img src="img/index22.jpg" alt="Jane" />
                                            </div>
                                            <div class="page-feed-content" style="overflow-y: auto; height: 250px;">
                                                <marquee direction="up" scrolldelay="10" scrollamount="1" height="240">
            <asp:Repeater ID = "rssRepeater" runat = "server">

<ItemTemplate>

 <p> <table style=" width:500px;font-family:Arial">

        <tr>

            <td style=" font-weight:bold;">

                <asp:HyperLink ID="HyperLink1" runat="server"

                NavigateUrl = '<%#Eval("link")%>'

                Text = '<%#Eval("title")%>'></asp:HyperLink>

            </td>

        </tr>

        <tr>

            <%--<td><hr /></td>--%>

        </tr>

        <tr>

            <td class="page-feed-content">

                <asp:Label ID="Label1" runat="server"

                 Text='<%#Eval("description")%>'></asp:Label>
                  <asp:Label ID="Label2" runat="server"

                 Text='<%#Eval("pubDate")%>'></asp:Label>

            </td>
            

        </tr>

  </table></p>

  <br />

</ItemTemplate>


</asp:Repeater>
</marquee>
                                                <%--<td><hr /></td>--%>
                                            </div>
                                        </div>
                                        <div class="box">
                                            <div class="avatar">
                                                <img src="img/index1.jpg" alt="Jane" />
                                            </div>
                                            <div class="page-feed-content" style="overflow-y: auto; height: 250px;">
                                                <marquee direction="up" scrolldelay="10" scrollamount="1" height="240">
				 <asp:Repeater ID = "news24Repeater" runat = "server">

<ItemTemplate>

 <p> <table style=" width:500px;font-family:Arial">

        <tr>

            <td style=" font-weight:bold;">

                <asp:HyperLink ID="HyperLink1" runat="server"

                NavigateUrl = '<%#Eval("link")%>'

                Text = '<%#Eval("title")%>'>

                                
                </asp:HyperLink>

            </td>

        </tr>

        <tr>

            <%--<td><hr /></td>--%>

        </tr>

        <tr>

            <td class="page-feed-content">

                <asp:Label ID="Label1" runat="server"

                 Text='<%#Eval("description")%>'></asp:Label>
                  <asp:Label ID="Label2" runat="server"

                 Text='<%#Eval("pubDate")%>'></asp:Label>
            </td>

        </tr>

  </table></p>

  <br />

</ItemTemplate>

</asp:Repeater>

</marquee>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--<td><hr /></td>--%>
                            <!--End Dashboard Tab 1-->
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                    <!--End Dashboard 2 -->
                    <div style="height: 40px;">
                    </div>
                </div>
                <!--End Content-->
            </div>
        </div>
    </form>
</body>
</html>
