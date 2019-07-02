<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="S_Emails.aspx.cs" Inherits="AMEXCHANGE.S_Emails" %>

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
		<title>EMAILS</title>
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
        // Add listener for redraw menu when windows resized
        window.onresize = MessagesMenuWidth;
        $(document).ready(function () {
            // Add class for correctly view of messages page
            $('#content').addClass('full-content');
            // Run script for change menu width
            MessagesMenuWidth();
            $('#content').on('click', '[id^=msg-]', function (e) {
                e.preventDefault();
                $('[id^=msg-]').removeClass('active');
                $(this).addClass('active');
                $('.one-list-message').slideUp('fast');
                $('.' + $(this).attr('id') + '-item').slideDown('fast');
            });
            $('html').animate({ scrollTop: 0 }, 'slow');
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
			<div id="messages" class="container-fluid">
	<div class="row">
		<div id="breadcrumb" class="col-md-12">
			<ol class="breadcrumb">
				<li><a href="S_Dashboard.aspx">AMexchange</a></li>
				<%--<li><a href="#">Pages</a></li>--%>
				<li><a href="S_Emails.aspx">Emails</a></li>
			</ol>
		</div>
	</div>
	<div class="row" id="test">
		<div class="col-xs-12">
			<div class="row">
					<ul id="messages-menu" class="nav msg-menu">
						<li>
							<a href="index.html" class="" id="msg-inbox">
								<i class="fa fa-inbox"></i>
								<span class="hidden-xs">Inbox (3)</span>
							</a>
						</li>
						<li>
							<a href="index.html" class="" id="msg-starred">
								<i class="fa fa-star"></i>
								<span class="hidden-xs">Starred</span>
							</a>
						</li>
						<li>
							<a href="index.html" class="" id="msg-important">
								<i class="fa fa-bookmark"></i>
								<span class="hidden-xs">Important</span>
							</a>
						</li>
						<li>
							<a href="index.html" class="" id="msg-sent">
								<i class="fa fa-reply"></i>
								<span class="hidden-xs">Sent Mail</span>
							</a>
						</li>
						<li>
							<a href="index.html" class="" id="msg-draft">
								<i class="fa fa-pencil"></i>
								<span class="hidden-xs">Drafts (2)</span>
							</a>
						</li>
						<li>
							<a href="index.html" class="" id="msg-trash">
								<i class="fa fa-trash-o"></i>
								<span class="hidden-xs">Trash</span>
							</a>
						</li>
					</ul>
				<div id="messages-list" class="col-xs-10 col-xs-offset-2">
					<div class="row one-list-message msg-inbox-item" id="msg-one">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Ndhlovu P.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>Happy New Year</b> Dear friend! It's title of this message I send Dear friend! It's title of this message I send Dear friend! It's title of this message I send</div>
						<div class="col-xs-2 message-date">12/31/15</div>
					</div>
					<div class="row one-list-message msg-starred-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Linus T.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>Announce new release</b> Hi. 3.11.xx is released!</div>
						<div class="col-xs-2 message-date">12/02/15</div>
					</div>
					<div class="row one-list-message msg-inbox-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Barry O.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>All commodities sold</b> Very nice. I receive you invoice and pay.</div>
						<div class="col-xs-2 message-date">12/21/15</div>
					</div>
					<div class="row one-list-message">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Daniel D.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>Discuss the commodity price</b> Implemented a workaround for some interrupt buggy printers</div>
						<div class="col-xs-2 message-date">02/02/15</div>
					</div>
					<div class="row one-list-message msg-inbox-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> John A.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>New movie downloaded</b> Some new sysctl entries for the parport driver.</div>
						<div class="col-xs-2 message-date">12/02/15</div>
					</div>
					<div class="row one-list-message msg-starred-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Stephen R.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>Specialisation:</b>  tweaking, ensuring portability, tweaking, cleaning, tweaking and occasionally debugging :-)</div>
						<div class="col-xs-2 message-date">12/02/15</div>
					</div>
					<div class="row one-list-message msg-trash-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Ntuli B.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>Congratulation!</b>the company provide discount for next transaction</div>
						<div class="col-xs-2 message-date">14/01/15</div>
					</div>
					<div class="row one-list-message msg-draft-item">
						<div class="col-xs-1 checkbox">
							<label>
								<input type="checkbox"> Gumede K.
								<i class="fa fa-square-o small"></i>
							</label>
						</div>
						<div class="col-xs-9 message-title"><b>I lost you phone number</b> Please send it to my email!</div>
						<div class="col-xs-2 message-date">24/02/15</div>
					</div>
									
					
					<div class="row one-list-message msg-one-item" style="display: none;">
						<div class="box">
							<div class="avatar">
								<img src="img/index22.jpg" alt="Jane" />
							</div>
							<div class="page-feed-content">
								<small class="time">Business news, 12 min ago</small>
								<p>The fire was "believed to have started during maintenance work on a bulk air cooler", the company said in a statement released early on Monday morning.

"We are extremely grateful that all our colleagues have been brought to surface, without injury. This is to the credit of our systems, employees, the unions and mine management, who have worked tirelessly over the past 12 hours," CEO Graham Briggs said.</p>
								<div class="likebox">
									<ul class="nav navbar-nav">
										<li><i class="fa fa-thumbs-up"></i> 138</li>
										<li><i class="fa fa-thumbs-down"></i> 47</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
		</div>
		<!--End Content-->
	</div>

    </form>
</body>
</html>
