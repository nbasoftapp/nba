<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="AMEXCHANGE.Contactus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
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
<meta charset="utf-8">
		<title>CONTACT US</title>
		<meta name="description" content="description">
		<meta name="author" content="DevOOPS">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
		<link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
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

 <style type="text/css">
        .style1
        {
            width: 147px;
        }
    </style>


    <script type="text/javascript">
        // Load OpenLayers library and create test map
        function OpenLayersMap() {
            $.getScript('http://www.openlayers.org/api/OpenLayers.js', LoadTestMap);
        }
        $(document).ready(function () {
            // Load Google Map API and callback to OpenLayers
            $.getScript('http://maps.google.com/maps/api/js?sensor=false&callback=OpenLayersMap');
            // Add Drag-n-Drop feature
            WinMove();
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
   <!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>
<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span>Basic table</span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
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
				<a href="index.html"><img src="img/final logo small.jpg"/></a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<a href="#" class="show-sidebar">
						  <i class="fa fa-bars"></i>
						</a>
						<div id="search">
							<input type="text" placeholder="search"/>
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
				<li>
					<a href="Dashboard.aspx" >
                    <%--<a href="ajax/dashboard.html" class="active ajax-link">--%>
						<i class="fa fa-dashboard"></i>
						<span class="hidden-xs">AMexchange</span>
					</a>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-pencil-square-o"></i>
						 <span class="hidden-xs">Registration</span>
					</a>
					<ul class="dropdown-menu">
						<li><a  href="Reg_Buyers.aspx">Buyers</a></li>
						<li><a  href="Reg_Sellers.aspx">Sellers</a></li>
						
					</ul>
				</li>
                 
								
								
				
				<li><a href="Contactus.aspx">Contact us</a></li>
				<li><a href="Login.aspx">Login</a></li>
				 
						</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">AMexchange</a></li>
			<li><a href="Contactus.aspx">Contacts us</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-8">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-home"></i>
					<span>AMEXCHANGE</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div class="card">
					<h4 class="page-header">HEAD OFFICE</h4>
					<p>
						<span>+27 (12) 2637895</span> <br>
						<a href="mailto:info@amexchange.co.za">info@amexchange.co.za</a>
					</p>
				</div>
				<div class="card address">
					<div class="vcard">
						<a href="#">.vCard</a>
					</div>
					<h4 class="page-header">Our address:</h4>
					<p>
						<span>555, Rivonia Road,Sandton</span> <br>
						<span>Johannesburg</span>
					</p>
					<div class="map" id="map-1" style="height: 400px;"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-4">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i>
					<span>COMMUNICATION DIRECTION</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div class="card">
					<h4 class="page-header">Subusiso Dlamini</h4>
					<h5 class="page-header">BOARD MEMBER DIRECTOR</h5>
					<p>
						<span>+27 (12) 2637895</span> <br>
						<a href="mailto:subusiso@amexchange.co.za">subusiso@amexchange.co.za</a>
					</p>
				</div>
				<div class="card address">
					<div class="vcard">
						<a href="#"><i class="fa fa-file"></i>.vCard</a>
					</div>
					<h4>Address:</h4>
					<p>
						<span>206, Mandela Road</span> <br>
						<span>North west</span>
					</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i>
					<span>LIAISON MANAGEMENT</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div class="card">
					<h4 class="page-header">Present Ndhlovu</h4>
					<h5 class="page-header">SUPERVISOR</h5>
					<p>
						<span>+27 (31) 2637487</span> <br>
						<a href="mailto:chuck@company.com">presentndhlovu@amexchange.co.za</a>
					</p>
				</div>
				<div class="card address">
					<div class="vcard">
						<a href="#"><i class="fa fa-file"></i>.vCard</a>
					</div>
					<h4>Address:</h4>
					<p>
						<span>545 Walter Sisulu Road</span> <br>
						<span>Cape Town</span>
					</p>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i>
					<span>SITE MANAGER</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<address>
					<strong>Portia Maluleka</strong><br>
					125 Moses Kotane Street<br>
					North west<br>
					<abbr title="Phone">P:</abbr> +27 (12) 2637845
				</address>
				
			</div>
		</div>
	</div>
</div>
		</div>
		<!--End Content-->
	</div>
</div>
    </form>
</body>
</html>