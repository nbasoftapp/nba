<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vacant.aspx.cs" Inherits="AMEXCHANGE.Vacant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Community Survey | Household</title>

  
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
                            <li><a href="#"><i class="fa fa-user fa-fw"></i>My Profile</a>
                            </li>


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
                            </li>                            <li id="divUser" runat="server">
                                <a href="#"><i class="fa fa-user fa-fw"></i>Add User<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Users.aspx">New User</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                             <li>
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
                                    <li><a href="FilterReports.aspx">Filter Report</a></li>
                                </ul>
                                <!-- /.nav-second-level -->
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
                        <h1 class="page-header">Edit Vacant</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Household Information
                        </div>
                        <!-- /.panel-heading -->


                        <div class="panel-body">
                            
                            <div class="panel-heading">
                                <div class="form-group">
                                    <label>Village</label>
                                    <asp:DropDownList ID="ddlVillage" runat="server" class="form-control" OnTextChanged="ddlVillage_TextChanged" AutoPostBack="true">
                                        <asp:ListItem Text="" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Village not specified" Value="Blank"></asp:ListItem>
                                        <asp:ListItem Text="Armoede" Value="Armoede"></asp:ListItem>
                                        <asp:ListItem Text="Ga-Chaba" Value="Ga-Chaba"></asp:ListItem>
                                        <asp:ListItem Text="Ga-Molekana" Value="Ga-Molekana"></asp:ListItem>
                                        <asp:ListItem Text="Leruleng" Value="Leruleng"></asp:ListItem>
                                        <asp:ListItem Text="Machikiri" Value="Machikiri"></asp:ListItem>
                                        <asp:ListItem Text="Schemming" Value="Schemming"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>

                            </div>
                        <div class="dataTable_wrapper" style="height:500px; width: 100%; overflow-y: auto;">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Reference Number</th>
                                        <th>Village</th>
                                        <th>Household</th>
                                        <th>Captured By</th>
                                         <th>Members</th>
                                        <th>Male</th>
                                        <th>Female</th>
                                        <th>Kids</th>
                                        <th>Learners</th>
                                        <th>Out of school</th>
                                        <th>Like about mine</th>
                                        <th>Don't like about mine</th>
                                        <th>Status</th>
                                   <%--      <th>Latitude</th>
                                        <th>Longitude</th>--%>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptHousehold" runat="server" DataSourceID="dtsHousehold" OnItemDataBound="rptHousehold_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("Generatednum") %></td>
                                                <td><%# Eval("Village") %></td>
                                                <td><%# Eval("Typehousehold") %></td>
                                                <td><%# Eval("Username") %></td>
                                                 <td><%# Eval("Nummember") %></td>
                                                <td><%# Eval("Nummale") %></td>
                                                <td><%# Eval("Numfemale") %></td>
                                                <td><%# Eval("Numkids") %></td>
                                                <td><%# Eval("Numattending") %></td>
                                                <td><%# Eval("Numoutschool") %></td>
                                                <td><%# Eval("Likemine") %></td>
                                                <td><%# Eval("Notlikemine") %></td>
                                               <%-- <td><%# Eval("Datecaptured") %></td>
                                                <td><%# Eval("Latitude") %></td>
                                                <td><%# Eval("Longitude") %></td>--%>
                                                <td style="color:green"><%# Eval("statusCheck") %></td>
                                                
                                                <td>
                                                    <a href="<%# String.Concat("EditHouseholdInfo.aspx?id=", Eval("id"), "&Generatednum=", Eval("Generatednum")) %>"><i class="fa fa-edit fa-fw" style="color: red" title="Edit household information"></i></a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:Label ID="lblEmptyData" Text="No Data Found" Style="color: Red;" runat="server" Visible="false"></asp:Label>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                   
                                </tbody>
                            </table>
                            <asp:SqlDataSource ID="dtsHousehold" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="dtsCount" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="dtsUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="dtsUpdateOut" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="dtsUpdateSchool" runat="server" ConnectionString="<%$ ConnectionStrings:surveyConnectionString %>"></asp:SqlDataSource>

                        </div>
                        <!-- /.table-responsive -->
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