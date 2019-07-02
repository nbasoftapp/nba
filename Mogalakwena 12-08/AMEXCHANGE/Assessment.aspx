<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assessment.aspx.cs" Inherits="AMEXCHANGE.Assessment1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%--<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Total Houses Report</title>


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
                            <li class="sidebar-search" style="background-color:#475A64">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search..."/>
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            
                            <li style="background-color:#2B5391">
                                <a href="#" style="color:#FFFFFF"><i class="fa fa-files-o fa-fw" ></i><strong>ALL REPORTS</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">

                                    <li>
                                        <a href="rptCountTotalHouses.aspx" style="color:#FFFFFF">List Of Reports</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li id="Li1" runat="server" style="background-color:#FF8000">
                                <a href="#" style="color:#FFFFFF"><i class="fa fa-user fa-fw" ></i><strong>VIEW AGYW DETAILS</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level"  style="background-color:#FF8000">
                                    <li style="background-color:#FF8000">
                                        <a href="dep.aspx" style="color:#FFFFFF">AGYW information</a>
                                    </li>

                                </ul>
                                <!-- /.nav-second-level -->
                            </li>

                            <li id="divUser" runat="server"  style="background-color:#800000">
                                <a href="#" style="color:#FFFFFF"><i class="fa fa-user fa-fw" ></i><strong>USER MANAGEMENT</strong><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level" style="background-color:#800000">
                                    <li style="background-color:#800000">
                                        <a href="Users.aspx" style="color:#FFFFFF">New User</a>
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
                        <h3 class="page-header" style="color:#FF8000">INFORMATION MANAGEMENT SYSTEM</h3>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12">

                        <div class="alert alert-danger fade in" id="divError" runat="server" visible="false">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong>Error!</strong> <a id="txtError" runat="server" style="color: gray"></a>
                        </div>
                        <div class="alert alert-success fade in" id="divSuccess" runat="server" visible="false">
                            <a id="hrfClose" runat="server" href="Admin.aspx" class="close">
                                <input type="button" value="Close" /></a>
                            <strong>Successful!</strong> <a id="txtSuccess" runat="server" style="color: gray"></a>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" style="background-color: #FF8000">
                                Assesment [<asp:Label ID="lblNameOfGirl" runat="server" Text=""  style="color: #FFFFFF"></asp:Label>]                      
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Select</label>
                                             <asp:DropDownList ID="drSelectionCriteria" runat="server" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="drSelectionCriteria_SelectedIndexChanged" Width="430px" Height ="35px">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>View</asp:ListItem>
                                                <asp:ListItem>Update</asp:ListItem>
                                             </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Live With Parents ?</label>
                                            <asp:DropDownList ID="ddrLiveWithParents" runat="server" class="form-control" Width="430px" Height ="35px">
                                                 <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Schooling ?</label>
                                            <asp:DropDownList ID="drSchooling" runat="server" class="form-control" Width="430px" Height ="35px">
                                                 <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Completed School ?</label>
                                            <asp:DropDownList ID="drCompletedSchool" runat="server" class="form-control" Width="430px" Height ="35px">
                                                 <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label>Highest Grade ?</label>
                                            <asp:DropDownList class="form-control" id="drHighestGrade" runat="server" Width="430px" Height ="35px">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                         <div class="form-group">
                                            <label>Children ?</label>
                                            <asp:DropDownList ID="drChildren" runat="server" class="form-control" Width="430px" Height ="35px">
                                                 <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        
                                        
                                    </div>
                                    <div class="col-md-6">
                                       
                                        <div class="form-group">
                                            <label>How Many Children ?</label>
                                            <asp:TextBox ID="txtNumberOfChildren" runat="server" class="form-control textBorder" Width="430px" Height ="35px"></asp:TextBox>
                                        </div> 
                                        <div class="form-group">
                                            <label>Marital Status</label>
                                             <asp:DropDownList ID="drMaritalStatus" runat="server" class="form-control" Width="430px" Height ="35px">
                                                <asp:ListItem>---Select---</asp:ListItem>
                                                <asp:ListItem>Married</asp:ListItem>
                                                <asp:ListItem>Single</asp:ListItem>
                                             </asp:DropDownList>
                                        </div>
                                       
                                    </div>
                                    <div class="col-lg-12" align="center">

                                        <hr />
                                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" class="btn btn-success" Text="Update" Width="15%" Height ="35px" style="background-color:#FF8000"></asp:Button>
                                        <asp:Button ID="btnClose" runat="server" class="btn" Text="Close" onclick="btnClose_Click"  Width="15%" Height ="35px"></asp:Button>
                                        <hr />

                                    </div>

                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                   <%-- <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="background-color:#800000">
                                User information
                       
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="panel panel-default">


                                            <div class="panel-body">
                                                <div class="dataTable_wrapper" style="width: 100%; overflow-x: auto">
                                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                        <thead style="background-color: #800000;color:#FFFFFF">
                                                            <tr>
                                                                <th>User #</th>
                                                                <th>Name</th>
                                                                <th>Surname</th>
                                                                <th>Email Address</th>
                                                                <th>Date Captured</th>
                                                                <th>Last Login</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <asp:Repeater ID="rptUser" runat="server" DataSourceID="dtsSaveUser" OnItemDataBound="rptUser_ItemDataBound">
                                                                <ItemTemplate>
                                                                    <tr>
                                                                        <td><%# Eval("id") %></td>
                                                                        <td><%# Eval("name") %></td>
                                                                        <td><%# Eval("surname") %></td>
                                                                        <td><%# Eval("email") %></td>
                                                                        <td><%# Eval("dateCaptured") %></td>
                                                                        <td><%# Eval("lastLogOn") %></td>
                                                                        <td>
                                                                            <div class="btn-group">
                                                                                <button type="button" class="btn btn-success" style="background-color:#800000">Action</button>
                                                                                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="background-color:#800000">
                                                                                    <span class="caret"></span>
                                                                                    <span class="sr-only">Toggle Dropdown</span>
                                                                                </button>
                                                                                <ul class="dropdown-menu" role="menu" >
                                                                                    <li><a href='<%# String.Concat("EditUser.aspx?id=", Eval("Id")) %>' style="color:#800000">Update</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:Label ID="lblEmptyData" Text="Users not found" Style="color: Red;" runat="server" Visible="false"></asp:Label>
                                                                </FooterTemplate>
                                                            </asp:Repeater>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                    <div class="col-lg-6">

                                        

                                    </div>

                                </div>
                                            <!-- /.col-lg-6 (nested) -->

                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>--%>
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

