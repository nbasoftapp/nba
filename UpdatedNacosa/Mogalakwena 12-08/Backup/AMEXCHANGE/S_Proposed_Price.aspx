<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S_Proposed_Price.aspx.cs" Inherits="AMEXCHANGE.S_Proposed_Price" %>

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
		<title>COMMODITY PRICING</title>
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
<script type="text/javascript">
    // Run Select2 plugin on elements
    function DemoSelect2() {
        $('#s2_with_tag').select2({ placeholder: "Select OS" });
        $('#s2_country').select2();
    }
    // Run timepicker
    function DemoTimePicker() {
        $('#input_time').timepicker({ setDate: new Date() });
    }
    $(document).ready(function () {
        // Create Wysiwig editor for textare
        TinyMCEStart('#wysiwig_simple', null);
        TinyMCEStart('#wysiwig_full', 'extreme');
        // Add slider for change test input length
        FormLayoutExampleInputLength($(".slider-style"));
        // Initialize datepicker
        $('#input_date').datepicker({ setDate: new Date() });
        // Load Timepicker plugin
        LoadTimePickerScript(DemoTimePicker);
        // Add tooltip to form-controls
        $('.form-control').tooltip();
        LoadSelect2Script(DemoSelect2);
        // Load example of form validation
        LoadBootstrapValidatorScript(DemoFormValidator);
        // Add drag-n-drop feature to boxes
        WinMove();
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
								<a  href="Buyers_Emails.aspx">
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
					<a href="S_Proposed_Price.aspx">Commodity proposed price</a> </li>    
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
					<a href="Buyers_Dashboard.aspx">AMexchange</a> </li>
			<li><a href="S_Proposed_Price.aspx">Proposed price</a></li>
			
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i>
					<span>COMMODITY PROPOSED PRICE</span>
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
				<%--<h4 class="page-header">SELLERS FORM</h4>--%>
				<form class="form-horizontal" role="form">

                <div class="form-group">
                                   
                 <label class="col-sm-2 control-label">Commodity name</label>

						<div class="col-sm-4">
							<select class="populate placeholder" name="country" id="Select3">
									<option value="">-- Select a commodity--</option>
									<option value="fr">Platinum</option>
									<option value="de">Copper</option>
									<option value="it">Manganese</option>
									<option value="jp">Uranuim</option>
									<option value="ru">Silver</option>
									<option value="gb">Nickel</option>
									<option value="us">Coltan</option>
								</select>
                           </div> 

                           <div class="clearfix"></div>
                           
					 <label class="col-sm-2 control-label">Quantity</label>
                       
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Quantity" data-toggle="tooltip" data-placement="bottom" title="Tooltip for last name">
						</div>   
                        
                       <div class="clearfix"></div>                                        

						<label class="col-sm-2 control-label">Grade</label>
						<div class="col-sm-4">
							<select class="populate placeholder" name="country" id="Select5">
									<option value="">-- Select a grade--</option>
									<option value="fr">1</option>
									<option value="de">2</option>
									<option value="it">3</option>
									<option value="jp">4</option>
									<option value="ru">5</option>
									<option value="gb">6</option>
									<option value="us">7</option>
								</select>

                         </div>

                        <div class="clearfix"></div>
                        
                       <label class="col-sm-2 control-label">Amount offered</label>
                       
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Amount offered" data-toggle="tooltip" data-placement="bottom" title="Tooltip for last name">
						</div>                                                 

                   
                    <div class="col-sm-12">
			<div class="bs-example">
				<p>
					
                   <%-- <button type="button" class="btn btn-primary btn-lg pull-right">Cancel</button>
					<button type="button" class="btn btn-primary btn-lg pull-right ">Save</button>--%>

                     <button type="button" class="btn btn-success pull-right">Cancel</button>
					<button type="button" class="btn btn-success pull-right">Save</button>

                   <%-- <td><button type="button" class="btn btn-success">Accept</button></td>--%>
				</p>
				
			</div>
		</div> 
     </div>                                           
                     													
													<div class="clearfix"></div>
					
				</form>
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