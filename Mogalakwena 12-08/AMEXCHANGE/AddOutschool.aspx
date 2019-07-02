<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOutschool.aspx.cs" Inherits="AMEXCHANGE.AddOutschool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Community Survey | Edit Household</title>

  
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
                    <img src="Images/ssc.png" width="80" style="float: left" />
                    <a class="navbar-brand" href="#">Community Survey</a>
                </div>
                <!-- /.navbar-header -->

                <ul class="nav navbar-top-links navbar-right" style="float: right">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <%--<li><a href="#"><i class="fa fa-user fa-fw"></i>My Profile</a>
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
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li id="divUser" runat="server">
                                <a href="#"><i class="fa fa-user fa-fw"></i>Add User<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Users.aspx">New User</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li id="divReport" runat="server">
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Reports<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                        <%--    <li>
                                        <a href="Demographics.aspx">Demographics</a>
                                    </li>
                                     <li>
                                        <a href="EconomicProfile.aspx">Economic Profile</a>
                                    </li>
                                     <li>
                                        <a href="Education.aspx">Education</a>
                                    </li>
                                     <li>
                                        <a href="HouseholdInformation.aspx">Household Information</a>
                                    </li>--%>
                                    <li>
                                        <a href="rptCountTotalHouses.aspx">Total Number of Houses Captured</a>
                                    </li>

                                    <li>
                                        <a href="CountHousePerDay.aspx">Number Of Houses Captured Per Day</a>
                                    </li>
                                                                        <li>
                                        <a href="rptCountTotalVillages.aspx">Number Of Households Per Village</a>
                                    </li>
                                                                        <li>
                                        <a href="rptCountVillageHousePeople.aspx">Number Of Houses & People Per Village</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-user fa-fw"></i>View Household Details<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="ListHouseholds.aspx">Households information</a>
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
                        <h1 class="page-header">Out of school</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Village                      
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>District</label>
                                            <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="form-control" disabled>
                                                <asp:ListItem Selected="True" Text="Waterberg District " Value=""></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <label><span style="color: #C36464;">* </span>Village</label>
                                            <asp:DropDownList ID="ddlVillage" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                                <asp:ListItem Text="Armoede" Value="Armoede"></asp:ListItem>
                                                <asp:ListItem Text="Ga-Molekana" Value="Ga-Molekana"></asp:ListItem>
                                                <asp:ListItem Text="Ga-Chaba" Value="Ga-Chaba"></asp:ListItem>
                                                <asp:ListItem Text="Leruleng" Value="Leruleng"></asp:ListItem>
                                                <asp:ListItem Text="Schemming" Value="Schemming"></asp:ListItem>
                                                <asp:ListItem Text="Machikiri" Value="Machikiri"></asp:ListItem>
                                            </asp:DropDownList>                                           
                                        </div>

                                    </div>
                                    

                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Demographic information
                       
                            </div>
                            <div class="panel-body">
                                <div class="alert alert-danger fade in" id="divError" runat="server" visible="false">
                                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                                    <strong>Error!</strong> <a id="txtError" runat="server" style="color: gray"></a>
                                </div>
                                <div class="row">                                    
                                            <div class="col-lg-6">
                                                <div>
                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Employment Status</label>
                                                        <asp:DropDownList ID="ddlEmpStatus" runat="server" CssClass="form-control" OnTextChanged="ddlEmpStatus_TextChanged" AutoPostBack="true">
                                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                                            <asp:ListItem Text="Working" Value="Working"></asp:ListItem>
                                                            <asp:ListItem Text="Not working" Value="Not working"></asp:ListItem>                                                           
                                                        </asp:DropDownList>
                                                  </div>
                                                    <div class="form-group" id="divWorkwhere" runat="server" visible="false">
                                                        <label><span style="color: #C36464;">* </span>Work Where</label>
                                                        <asp:DropDownList ID="ddlWorkwhere" runat="server" CssClass="form-control">
                                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                                            <asp:ListItem Text="Working at the mine" Value="Working at the mine"></asp:ListItem>
                                                            <asp:ListItem Text="Not at the mine" Value="Not at the mine"></asp:ListItem>                                                     
                                                        </asp:DropDownList>
                                                   </div>

                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Qualification</label>
                                                        <input class="form-control" id="txtQualification" runat="server" type="text" />
                                                    </div>
                                                                                                  
                                                </div>
                                            </div> 
                                            <!-- /.col-lg-6 (nested) -->
                                    <div class="col-lg-6">
                                        
                                        <hr />
                                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" class="btn btn-success" Text="Save" Width="35%" ></asp:Button>
                                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" class="btn" Text="Cancel" Width="35%"></asp:Button>
                                        <hr />
                                        <span style="color: #C36464;">* Required fields</span>
                                        <hr />
                                    </div>
                                            </div>
                                            <!-- /.col-lg-6 (nested) -->

                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
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
        <!-- /#wrapper -->
        <asp:SqlDataSource ID="dtsSaveApplication" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString%>"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dtsSaveAudit" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString%>"></asp:SqlDataSource>
        <!--SQL DATA SOURCE-->


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

                <script>
                    $(document).ready(function () {
                        $('#dataTables-outschool').DataTable({
                            responsive: true
                        });
                    });
        </script>
    </form>
</body>
</html>
