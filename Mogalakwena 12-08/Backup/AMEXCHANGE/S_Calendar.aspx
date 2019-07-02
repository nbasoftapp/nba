<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S_Calendar.aspx.cs" Inherits="AMEXCHANGE.S_Calendar" %>

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
		<title>CALENDAR</title>
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

    <script>
        $(document).ready(function () {
            // Set Block Height
            SetMinBlockHeight($('#calendar'));
            // Create Calendar
            DrawFullCalendar();
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
				<a href="S_Dashboard.aspx"><img src="img/final logo small.jpg"/></a>
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
							
							<li class="hidden-xs">
								<a href="S_Dashboard.aspx"">
									<i class="fa fa-bell"></i>
									<span class="badge">7</span>
								</a>
							</li>

                            <%--<li><a href="Buyers_Calendar.aspx"></a></li>--%>	
							<li class="hidden-xs">
								<a  href="S_Calendar.aspx">
									<i class="fa fa-calendar"></i>
									<span class="badge">3</span>
								</a>
							</li>
							<li class="hidden-xs">
								<a  href="S_Emails.aspx">
									<i class="fa fa-envelope"></i>
									<span class="badge">7</span>
								</a>
							</li>
							<li><a href="Dashboard.aspx">Logout</a></li>
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
					<a href="S_Dashboard.aspx">AMexchange</a> </li>  
					<li>
					<a href="S_Proposed_Price.aspx">Commodity propsed price</a> </li>    
				 <li>
					<a href="S_Purchase.aspx">Purchase</a> </li> 	
					<li><a href="S_Calendar.aspx">Calendar</a></li>			
				
                <%--<li>
					<a class="ajax-link" href="ajax/calendar.html">
						 <i class="fa fa-calendar"></i>
						 <span class="hidden-xs">Calendar</span>
					</a>
				 </li>--%>
                 
                    <li><a href="S_Emails.aspx">Emails</a></li>
				<li><a href="S_Contacts.aspx">Contact us</a></li>
				<li><a href="Dashboard.aspx">Logout</a></li>
				 
						</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
			<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
        <li>
					<a href="S_Dashboard.aspx">AMexchange</a> </li>
			<li><a href="S_Calendar.aspx">Calendar</a></li>
			
		</ol>
	</div>
</div>
<div class="row">
<div class="row full-calendar">
	<div class="col-sm-3">
		<div id="add-new-event">
			<h4 class="page-header">Add new event</h4>
			<div class="form-group">
				<label>Event title</label>
				<input type="text" id="new-event-title" class="form-control">
			</div>
			<div class="form-group">
				<label>Event description</label>
				<textarea class="form-control" id="new-event-desc" rows="3"></textarea>
			</div>
			<a href="#" id="new-event-add" class="btn btn-primary pull-right">Add event</a>
			<div class="clearfix"></div>
		</div>
		<div id="external-events">
			<h4 class="page-header" id="events-templates-header">Draggable Events</h4>
			<div class="external-event">Work time</div>
			<div class="external-event">Conference</div>
			<div class="external-event">Meeting</div>
			<div class="external-event">Restaurant</div>
			<div class="external-event">Launch</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" id="drop-remove"> remove after drop
					<i class="fa fa-square-o small"></i>
				</label>
			</div>
		</div>
	</div>
	<div class="col-sm-9">
		<div id="calendar"></div>
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
