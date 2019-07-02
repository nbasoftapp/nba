<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Buyers.aspx.cs" Inherits="AMEXCHANGE.Reg_Buyers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
		<title>BUYERS REGISTRATION</title>
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
			<li><a href="Dashboard.aspx">AMexchange</a></li>
			<li><a href="Reg_Buyers">Buyers</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i>
					<span>BUYERS REGISTRATION</span>
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
				<%--<h4 class="page-header">BUYERS FORM</h4>--%>
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">Company name</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Company name" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
						</div>
						<label class="col-sm-2 control-label">Email address</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="email@co.za" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
						</div>
					</div>
                    <div class="form-group has-success has-feedback">
						<label class="col-sm-2 control-label">Profile</label>
						<div class="col-sm-4">
							<textarea type="text" class="form-control" placeholder="Company profile"></textarea>
						</div>
						<label class="col-sm-2 control-label">Address</label>
						<div class="col-sm-4">
							<textarea type="text" class="form-control" placeholder="Address"></textarea>
							<span class="fa  txt-success form-control-feedback"></span>
						</div>
					</div>
<div class="form-group">
						<label class="col-sm-2 control-label">Tax number</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Tax number" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
						</div>
						<label class="col-sm-2 control-label">Phone number</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Phone number" data-toggle="tooltip" data-placement="bottom" title="Tooltip for last name">
						</div>
					</div>

                    <div class="form-group">
						<label class="col-sm-2 control-label">Registration number</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Registration number" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
						</div>
						<label class="col-sm-2 control-label">Fax number</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Fax number" data-toggle="tooltip" data-placement="bottom" title="Tooltip for last name">
						</div>
					</div>

<div class="form-group">
						<label class="col-sm-2 control-label">Website</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="http://" data-toggle="tooltip" data-placement="bottom" title="Tooltip for name">
						</div>
						<label class="col-sm-2 control-label">Country</label>
						<div class="col-sm-4">
							<select class="populate placeholder" name="country" id="Select2">
									<option value="">-- Select a country --</option>
									<option value="fr">France</option>
									<option value="de">Germany</option>
									<option value="it">Italy</option>
									<option value="jp">Japan</option>
									<option value="ru">Russia</option>
									<option value="gb">United Kingdom</option>
									<option value="us">United State</option>
								</select>
						</div>
					</div>

                        	
													<div class="clearfix"></div>
					  <div class="col-sm-12 ">
			<div class="bs-example">
				<p>
					 <button type="button" class="btn btn-success pull-right">Cancel</button>
					<button type="button" class="btn btn-success pull-right">Register</button>
                    <%--<button type="button" class="btn btn-primary btn-lg pull-right">Cancel</button>
					<button type="button" class="btn btn-primary btn-lg pull-right ">Register</button>--%>
				</p>
				
			</div>
		</div>

     <table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-3">
					<thead>
						<tr>
                        <th>Select</th>
							<th>Commodities</th>
							<th>Symbol</th>
							<th>Unit</th>
							<th>Lot size</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
                        <td><input type="checkbox" id="table-select-all"></td>
							<td>Gold</td>
							<td>KI</td>
							<td>1 KGS</td>
							<td>13.10</td>
							
						</tr>
						
						<tr>
                        <td><input type="checkbox" id="Checkbox1"></td>
							<td>Platinum</td>
							<td>PL</td>
							<td>1 KGS</td>
							<td>2014.02</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox2"></td>
							<td>Copper</td>
							<td>HG</td>
							<td>1 KGS</td>
							<td>13.10</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox3"></td>
							<td>Diamond</td>
							<td>DMD</td>
							<td>1 KGS</td>
							<td>5.1.1</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox4"></td>
							<td>Manganese</td>
							<td>MN</td>
							<td>1 KGS</td>
							<td>2.4.0</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox5"></td>
							<td>Coltan</td>
							<td>CN</td>
							<td>1 KGS</td>
							<td>1.0.6</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox6"></td>
							<td>Uranium</td>
							<td>UM</td>
							<td>1 KGS</td>
							<td>2013</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox7"></td>
							<td>Silver</td>
							<td>SI</td>
							<td>1 KGS</td>
							<td>3</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox8"></td>
							<td>Sulfur</td>
							<td>SFR</td>
							<td>1 KGS</td>
							
							<td>1.3</td>
							
						</tr>
						<tr>
                        <td><input type="checkbox" id="Checkbox9"></td>
							<td>Nickel</td>
							<td>NK</td>
							<td>1 KGS</td>
							<td>8</td>
							
						</tr>
					</tbody>
					<tfoot>
						<tr>
                        <th>Select</th>
							<th>Commodities</th>
							<th>Symbol</th>
							<th>Unit</th>
							<th>Lot size</th>
							
						</tr>
					</tfoot>
				</table>

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
