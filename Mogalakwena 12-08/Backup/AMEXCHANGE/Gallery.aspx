<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AMEXCHANGE.Gallery" %>

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
		<title>OUR GALLERY</title>
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
<script>
    // Create fancybox2 gallery
    function DemoGallery() {
        $('.fancybox').fancybox({
            openEffect: 'none',
            closeEffect: 'none'
        });
    }
    $(document).ready(function () {
        // Load Fancybox2 and make gallery in callback
        LoadFancyboxScript(DemoGallery);
    });
</script>
 <style type="text/css">
        .style1
        {
            width: 147px;
        }
    </style>
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
						<span class="hidden-xs">Dashboard</span>
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

                
								
								
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-picture-o"></i>
						 <span class="hidden-xs">Gallery</span>
					</a>
					<ul class="dropdown-menu">
						<li><a  href="#">our gallery</a></li>
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
			<li><a href="Dashboard.aspx">Dashboard</a></li>
			<li><a href="Gallery.aspx">our gallery</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-picture-o"></i>
					<span>AMEXCHANGE GALLERY</span>
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
			<div id="simple_gallery" class="box-content">
				<a class="fancybox" rel="gallery1" href="http://farm6.staticflickr.com/5471/9036958611_fa1bb7f827_b.jpg" title="Westfield Waterfalls - Middletown CT Lower (Graham_CS)">
					<img src="img/9036958611_fa1bb7f827_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3824/9041440555_2175b32078_b.jpg" title="Calm Before The Storm (One Shoe Photography Ltd.)">
					<img src="img/9041440555_2175b32078_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm3.staticflickr.com/2870/8985207189_01ea27882d_b.jpg" title="Lambs Valley (JMImagesonline.com)">
					<img src="img/8985207189_01ea27882d_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3677/8962691008_7f489395c9_b.jpg" title="Grasmere Lake (Phil 'the link' Whittaker (gizto29))">
					<img src="img/8962691008_7f489395c9_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm6.staticflickr.com/5471/9036958611_fa1bb7f827_b.jpg" title="Westfield Waterfalls - Middletown CT Lower (Graham_CS)">
					<img src="img/9036958611_fa1bb7f827_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3824/9041440555_2175b32078_b.jpg" title="Calm Before The Storm (One Shoe Photography Ltd.)">
					<img src="img/9041440555_2175b32078_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm3.staticflickr.com/2870/8985207189_01ea27882d_b.jpg" title="Lambs Valley (JMImagesonline.com)">
					<img src="img/8985207189_01ea27882d_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3677/8962691008_7f489395c9_b.jpg" title="Grasmere Lake (Phil 'the link' Whittaker (gizto29))">
					<img src="img/8962691008_7f489395c9_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm6.staticflickr.com/5471/9036958611_fa1bb7f827_b.jpg" title="Westfield Waterfalls - Middletown CT Lower (Graham_CS)">
					<img src="img/9036958611_fa1bb7f827_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3824/9041440555_2175b32078_b.jpg" title="Calm Before The Storm (One Shoe Photography Ltd.)">
					<img src="img/9041440555_2175b32078_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm3.staticflickr.com/2870/8985207189_01ea27882d_b.jpg" title="Lambs Valley (JMImagesonline.com)">
					<img src="img/8985207189_01ea27882d_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3677/8962691008_7f489395c9_b.jpg" title="Grasmere Lake (Phil 'the link' Whittaker (gizto29))">
					<img src="img/8962691008_7f489395c9_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm6.staticflickr.com/5471/9036958611_fa1bb7f827_b.jpg" title="Westfield Waterfalls - Middletown CT Lower (Graham_CS)">
					<img src="img/9036958611_fa1bb7f827_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3824/9041440555_2175b32078_b.jpg" title="Calm Before The Storm (One Shoe Photography Ltd.)">
					<img src="img/9041440555_2175b32078_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm3.staticflickr.com/2870/8985207189_01ea27882d_b.jpg" title="Lambs Valley (JMImagesonline.com)">
					<img src="img/8985207189_01ea27882d_m.jpg" alt="" />
				</a>
				<a class="fancybox" rel="gallery1" href="http://farm4.staticflickr.com/3677/8962691008_7f489395c9_b.jpg" title="Grasmere Lake (Phil 'the link' Whittaker (gizto29))">
					<img src="img/8962691008_7f489395c9_m.jpg" alt="" />
				</a>
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

