<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dep.aspx.cs" Inherits="AMEXCHANGE.dep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quality Assured</title>


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
    <style>
        .reportStyle {
            padding-left: 4%;
            margin-top: 40px;
            margin-bottom: 40px;
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
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="background-color: #FF8000">
                                LIST OF REGISTERED GIRLS > Quality Assured                   
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <div class="dataTable_wrapper" style="width: 100%; overflow-x: auto" >
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead style="background-color: #FF8000; color: #FFFFFF">

                                                <tr>
                                                    <th>#</th>
                                                    <th>Image</th>
                                                    <th>Name</th>
                                                    <th>Surname</th>
                                                    <th>ID/Passport</th>
                                                    <th>Address</th>
                                                    <th>Region</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="rptAGWYDATA" runat="server" OnItemDataBound="rptAGWYDATA_ItemDataBound" >
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%# Eval("ID") %></td>
                                                            <td>
                                                             <asp:Image ID="Image1" ImageUrl='<%# Eval("strpath") %>' runat="server" Height="75px" Width="80px"/>
                                                            </td>
                                                            <td><%# Eval("Name") %></td>
                                                            <td><%# Eval("Surname") %></td>
                                                            <td><%# Eval("IDorPassport") %></td>
                                                            <td><%# Eval("Address") %></td>
                                                            <td><%# Eval("region") %></td>
                                                            <td>


                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-success" style="background-color: #FF8000">View</button>
                                                                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="background-color: #FF8000">
                                                                        <span class="caret"></span>
                                                                        <span class="sr-only">Toggle Dropdown</span>
                                                                    </button>
                                                                    <ul class="dropdown-menu" role="menu">

                                                                        <li>
                                                                            <asp:LinkButton ID="lnkAssesment" CommandArgument='<%# Eval("ID") %>' runat="server" Style="color: #FF8000" OnClick="lnkAssesment_Click">Assessment</asp:LinkButton></li>
                                                                        <li>
                                                                            <asp:LinkButton ID="lnkJourneyPlan" CommandArgument='<%# Eval("ID") %>' runat="server" Style="color: #FF8000" OnClick="lnkJourneyPlan_Click">Journey Plan</asp:LinkButton></li>

                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        <asp:Label ID="lblEmptyData" Text="Users not found" Style="color: Red;" runat="server" Visible="false"></asp:Label>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /.panel -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
        <footer class="main-footer">
            &copy; Copyright <%: DateTime.Now.Year %> All rights reserved. Empowered by <a href="http://www.es3.co.za/" target="_blank">
                <img class="esoftware" src="Images/es3.png" alt="Es3"></a>
        </footer>
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
