<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nxt.aspx.cs" Inherits="AMEXCHANGE.nxt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Community Survey-Members of household</title>

  
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

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
     <!-- Date picker -->
      
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <script>
            $(function () {
                $.noConflict();
                $("#txtDOB").datepicker({
                    dateFormat: 'yy-mm-dd',
                    changeMonth: true,
                    changeYear: true
                });
               
            });
        </script>
       
        <!-- Date picker  ends here-->
    <%--<script>
        $(document).ready(function () {
            //called when key is pressed in textbox
            $("#txtNum").keypress(function (e) {
                //if the letter is not digit then display error and don't type anything
                if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                    //display error message
                    $("#lblError").html("Digits Only").show().fadeOut("slow");
                    return false;
                }
            });
        });
    </script>--%>
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
                    <img src="Images/ssc.png" width="80" style="float:left"/>
                    <a class="navbar-brand" href="#">Community Survey</a>
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
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Reports</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i>Households<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="HouseholdMember.aspx">New Household</a>
                                    </li>
                                    <li>
                                        <a href="ListHouseholds.aspx">List of Household</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-map-marker fa-fw"></i>Map<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="Map.aspx">Mogalakwena map</a>
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
                        <h1 class="page-header">Household Members</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div runat="server" id="dvNxt" class="panel-heading">
                                Household Member for Name Surname
                       
                            </div>
                            <div class="panel-body">
                                <asp:ScriptManager runat="server" ID="scrptMngr1"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="row">

                                            <div class="col-lg-12">
                                                <div class="col-lg-6 bg-info">
                                                    <i>
                                                        <p><b>You can either select number of family members or enter each family member's required details</b></p>
                                                    </i>
                                                </div>

                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label>Number of Family Members</label>
                                                        <%--<input runat="server" id="txtNum" type="number" min="0" max="40" class="form-control" />

                                                <label ID="lblError" runat="server" Text="" color="red"></label>--%>
                                                        <select class="form-control">
                                                            <option></option>
                                                            <option>0</option>
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                            <option>4</option>
                                                            <option>5</option>
                                                            <option>6</option>
                                                            <option>7</option>
                                                            <option>8</option>
                                                            <option>9</option>
                                                            <option>10</option>
                                                            <option>11</option>
                                                            <option>12</option>
                                                            <option>13</option>
                                                            <option>14</option>
                                                            <option>15</option>
                                                            <option>16</option>
                                                            <option>17</option>
                                                            <option>18</option>
                                                            <option>19</option>
                                                            <option>20</option>
                                                            <option>21</option>
                                                            <option>22</option>
                                                            <option>23</option>
                                                            <option>24</option>
                                                            <option>25</option>
                                                            <option>26</option>
                                                            <option>27</option>
                                                            <option>28</option>
                                                            <option>29</option>
                                                            <option>30</option>
                                                            <option>31</option>
                                                            <option>32</option>
                                                            <option>33</option>
                                                            <option>34</option>
                                                            <option>35</option>
                                                            <option>36</option>
                                                            <option>37</option>
                                                            <option>38</option>
                                                            <option>39</option>
                                                            <option>40</option>
                                                            <option>41</option>
                                                            <option>42</option>
                                                            <option>43</option>
                                                            <option>44</option>
                                                            <option>45</option>
                                                            <option>46</option>
                                                            <option>47</option>
                                                            <option>48</option>
                                                            <option>49</option>
                                                            <option>50</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div style="margin-top: 8%">
                                                    <hr />
                                                </div>

                                            </div>

                                            <div class="col-lg-6">
                                                <div>
                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Name</label>
                                                        <input runat="server" id="txtName" class="form-control" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Surname</label>
                                                        <input runat="server" id="txtSurName" class="form-control" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="txtDOB">
                                                            <span style="color: #C36464;">* </span>Date of Birth</label>
                                                        <input readonly="true" type="text" runat="server" class="form-control" id="txtDOB" />
                                                    </div>

                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Relationship</label>
                                                        <asp:DropDownList ID="ddlRelationship" runat="server" CssClass="form-control" OnTextChanged="ddlRelationship_TextChanged" AutoPostBack="true">
                                                            <asp:ListItem Text="" Value=""></asp:ListItem>
                                                            <asp:ListItem Text="Adopted Daughter" Value="Adopted Daughter"></asp:ListItem>
                                                            <asp:ListItem Text="Adopted Son" Value="Adopted Son"></asp:ListItem>
                                                            <asp:ListItem Text="Aunt" Value="Aunt"></asp:ListItem>
                                                            <asp:ListItem Text="Brother" Value="Brother"></asp:ListItem>
                                                            <asp:ListItem Text="Brother in law" Value="Brother in law"></asp:ListItem>
                                                            <asp:ListItem Text="Cousin" Value="Cousin"></asp:ListItem>
                                                            <asp:ListItem Text="Daughter" Value="Daughter"></asp:ListItem>
                                                            <asp:ListItem Text="Father" Value="Father"></asp:ListItem>
                                                            <asp:ListItem Text="Father in law" Value="Father in law"></asp:ListItem>
                                                            <asp:ListItem Text="GrandFather" Value="GrandFather"></asp:ListItem>
                                                            <asp:ListItem Text="GrandMother" Value="GrandMother"></asp:ListItem>
                                                            <asp:ListItem Text="Mother" Value="Mother"></asp:ListItem>
                                                            <asp:ListItem Text="Mother in law" Value="Mother in law"></asp:ListItem>
                                                            <asp:ListItem Text="Nephew" Value="Nephew"></asp:ListItem>
                                                            <asp:ListItem Text="Niece" Value="Niece"></asp:ListItem>
                                                            <asp:ListItem Text="Sister" Value="Sister"></asp:ListItem>
                                                            <asp:ListItem Text="Sister in law" Value="Sister in law"></asp:ListItem>
                                                            <asp:ListItem Text="Son" Value="Son"></asp:ListItem>
                                                            <asp:ListItem Text="Stepchild" Value="Stepchild"></asp:ListItem>
                                                            <asp:ListItem Text="Uncle" Value="Uncle"></asp:ListItem>
                                                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="form-group" id="divRelationship" runat="server" visible="false">
                                                        <label><span style="color: #C36464;">* </span>If other, please specify</label>
                                                        <input runat="server" id="Text1" class="form-control">
                                                    </div>

                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Disability</label>
                                                        <asp:RadioButtonList OnTextChanged="radDisability_TextChanged" AutoPostBack="true" ID="radDisability" RepeatDirection="Horizontal" runat="server" CellSpacing="10" CellPadding="-1" RepeatLayout="Table">
                                                            <asp:ListItem Style="margin-right: 5px;" Text="Yes" Value="Yes" Enabled="true"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value="No" Enabled="true"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>
                                                    <div class="form-group" id="divDisability" runat="server" visible="false">
                                                        <label><span style="color: #C36464;">* </span>If yes, please specify</label>
                                                        <asp:DropDownList ID="ddlDisability" OnTextChanged="ddlDisability_TextChanged" AutoPostBack="true" runat="server" CssClass="form-control">
                                                            <asp:ListItem Text="" Value=""></asp:ListItem>
                                                            <asp:ListItem Text="Blind or partially sighted" Value="Blind or partially sighted"></asp:ListItem>
                                                            <asp:ListItem Text="Communication (talking, listening)" Value="Communication (talking, listening)"></asp:ListItem>
                                                            <asp:ListItem Text="Hearing (even with a hearing aid)" Value="Hearing (even with a hearing aid)"></asp:ListItem>
                                                            <asp:ListItem Text="Cognitive (difficulties in learning)" Value="Cognitive (difficulties in learning)"></asp:ListItem>
                                                            <asp:ListItem Text="Communication (talking, listening)" Value="Communication (talking, listening)"></asp:ListItem>
                                                            <asp:ListItem Text="Physical (moving, standing, grasping)" Value="Physical (moving, standing, grasping)"></asp:ListItem>
                                                            <asp:ListItem Text="Emotional (behavioural or psychological)" Value="Emotional (behavioural or psychological)"></asp:ListItem>
                                                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="form-group" id="divTxtDisability" runat="server" visible="false">
                                                        <label><span style="color: #C36464;">* </span>If other, please specify</label>
                                                        <input runat="server" id="txtDisability" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label><span style="color: #C36464;">* </span>Gender</label>
                                                        <asp:RadioButtonList AutoPostBack="true" ID="radGender" runat="server" RepeatDirection="Vertical" CellSpacing="50">
                                                            <asp:ListItem class="fa fa-male" Style="margin-right: 5px;" title="Male" Text="Male" Value="Male" Enabled="true"></asp:ListItem>
                                                            <asp:ListItem class="fa fa-female" Text="Female" Value="Female" title="Female" Enabled="true"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </div>

                                                </div>
                                            </div>
                                            <!-- /.col-lg-6 (nested) -->
                                            <div class="col-lg-6">

                                                <div>
                                                    <fieldset>
                                                        <div class="form-group">
                                                            <label><span style="color: #C36464;">* </span>Marital Status </label>
                                                            <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                                                <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                                                <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                                                <asp:ListItem Text="Divorced" Value="Divorced"></asp:ListItem>
                                                                <asp:ListItem Text="Widow" Value="Widow"></asp:ListItem>
                                                                <asp:ListItem Text="Widower" Value="Widower"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><span style="color: #C36464;">* </span>Population Group</label>
                                                            <asp:DropDownList ID="ddlPopulationGroup" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                                                <asp:ListItem Text="African" Value="African"></asp:ListItem>
                                                                <asp:ListItem Text="White" Value="White"></asp:ListItem>
                                                                <asp:ListItem Text="Coloured" Value="Coloured"></asp:ListItem>
                                                                <asp:ListItem Text="Indian" Value="Indian"></asp:ListItem>
                                                                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>

                                                        <div class="form-group">
                                                            <label><span style="color: #C36464;">* </span>Level of Education</label>
                                                            <asp:DropDownList ID="ddlLevelEducation" runat="server" CssClass="form-control" OnTextChanged="ddlLevelEducation_TextChanged" AutoPostBack="true">
                                                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                                                <asp:ListItem Text="No Schooling" Value="No Schooling"></asp:ListItem>
                                                                <asp:ListItem Text="Some Primary Schooling" Value="Some Primary Schooling"></asp:ListItem>
                                                                <asp:ListItem Text="Completed Primary" Value="Completed Primary"></asp:ListItem>
                                                                <asp:ListItem Text="Some Secondary Schooling" Value="Some Secondary Schooling"></asp:ListItem>
                                                                <asp:ListItem Text="Completed Grade 12" Value="Completed Grade 12"></asp:ListItem>
                                                                <asp:ListItem Text="Higher Qualification" Value="Higher Qualification"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="form-group" id="divNone" runat="server" visible="false">
                                                            <label><span style="color: #C36464;">* </span>If no schooling, give reason</label>
                                                            <textarea runat="server" id="txtAddress" class="form-control" rows="3"></textarea>
                                                        </div>
                                                        <div id="divPrimary" runat="server" visible="false">
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>School name</label>
                                                                <input runat="server" id="txtPriName" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>Grade</label>
                                                                <select class="form-control">
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                    <option>5</option>
                                                                    <option>6</option>
                                                                    <option>7</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div id="divSecondary" runat="server" visible="false">
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>School name</label>
                                                                <input runat="server" id="txtSecName" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>Grade</label>
                                                                <select class="form-control">
                                                                    <option>8</option>
                                                                    <option>9</option>
                                                                    <option>10</option>
                                                                    <option>11</option>
                                                                    <option>12</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div id="divTertiary" runat="server" visible="false">
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>Institution name</label>
                                                                <input runat="server" id="txtInstName" class="form-control" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label><span style="color: #C36464;">* </span>Course name</label>
                                                                <input runat="server" id="txtCourseName" class="form-control" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><span style="color: #C36464;">* </span>Employment Status</label>
                                                            <asp:DropDownList ID="ddlEmpStatus" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="" Value=""></asp:ListItem>
                                                                <asp:ListItem Text="Employed by the mine" Value="Employed by the mine"></asp:ListItem>
                                                                <asp:ListItem Text="Unemployed" Value="Unemployed"></asp:ListItem>
                                                                <asp:ListItem Text="Formerly Employed" Value="Formerly Employed"></asp:ListItem>
                                                                <asp:ListItem Text="Informerly Employed" Value="Informerly Employed"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><span style="color: #C36464;">* </span>Income</label>
                                                            <asp:DropDownList ID="ddlTotalIncome" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                                                <asp:ListItem Text="R1 - R1 000" Value="R1 - R1 000"></asp:ListItem>
                                                                <asp:ListItem Text="R1 001 - R2 000" Value="R1 001 - R2 000"></asp:ListItem>
                                                                <asp:ListItem Text="R2 001 - R3 000" Value="R2 001 - R3 000"></asp:ListItem>
                                                                <asp:ListItem Text="R3 001 - R4 000" Value="R3 001 - R4 000"></asp:ListItem>
                                                                <asp:ListItem Text="R4 001 - R5 000" Value="R4 001 - R5 000"></asp:ListItem>
                                                                <asp:ListItem Text="R5 001 - R6 000" Value="R5 001 - R6 000"></asp:ListItem>
                                                                <asp:ListItem Text="R6 001 - R7 000" Value="R6 001 - R7 000"></asp:ListItem>
                                                                <asp:ListItem Text="R7 001 - R8 000" Value="R7 001 - R8 000"></asp:ListItem>
                                                                <asp:ListItem Text="R8 001 - R9 000" Value="R8 001 - R9 000"></asp:ListItem>
                                                                <asp:ListItem Text="R9 001 - R10 000" Value="R9 001 - R10 000"></asp:ListItem>
                                                                <asp:ListItem Text="R10 001 - R11 000" Value="R10 001 - R11 000"></asp:ListItem>
                                                                <asp:ListItem Text="R11 001 - R15 000" Value="R11 001 - R15 000"></asp:ListItem>
                                                                <asp:ListItem Text="R15 001 - R20 000" Value="R15 001 - R20 000"></asp:ListItem>
                                                                <asp:ListItem Text="R20 001 - R25 000" Value="R20 001 - R25 000"></asp:ListItem>
                                                                <asp:ListItem Text="R25 001 - R30 000" Value="R25 001 - R30 000"></asp:ListItem>
                                                                <asp:ListItem Text="R30 001 - R35 000" Value="R30 001 - R35 000"></asp:ListItem>
                                                                <asp:ListItem Text="R35 001 - R39 999" Value="R35 001 - R39 999"></asp:ListItem>
                                                                <asp:ListItem Text="Over R40 000" Value="Over R40 000"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                        <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" class="btn btn-success" Text="Add"></asp:Button>
                                                        <hr />
                                                        <span style="color: #C36464;">* Required fields</span>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <!-- /.col-lg-6 (nested) -->

                                            <div class="col-lg-12">
                                                <hr />
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        Existing household members
                       
                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div class="panel-body" style="height: 150px; overflow-y: auto; width: 100%">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>#</th>
                                                                        <th>First Name</th>
                                                                        <th>Surname</th>
                                                                        <th>Date of birth</th>
                                                                        <th>Gender</th>
                                                                        <th>Employment Status</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>1</td>
                                                                        <td>Mark</td>
                                                                        <td>Otto</td>
                                                                        <td>1989/11/11</td>
                                                                        <td>Male</td>
                                                                        <td>Unemployed</td>
                                                                        <td><a class="fa fa-edit" href="EditNextofKin.aspx" title="Edit"></a>
                                                                            <a class="fa fa-remove" href="#" title="Delete" data-toggle="modal" data-target="#myModal"></a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>2</td>
                                                                        <td>Jacob</td>
                                                                        <td>Thornton</td>
                                                                        <td>1992/03/06</td>
                                                                        <td>Male</td>
                                                                        <td>Employed</td>
                                                                        <td><a class="fa fa-edit" href="EditNextofKin.aspx" title="Edit"></a>
                                                                            <a class="fa fa-remove" href="#" title="Delete" data-toggle="modal" data-target="#myModal"></a>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>3</td>
                                                                        <td>Larry</td>
                                                                        <td>Mathokga</td>
                                                                        <td>1998/05/11</td>
                                                                        <td>Female</td>
                                                                        <td>Unemployed</td>
                                                                        <td><a class="fa fa-edit" href="EditNextofKin.aspx" title="Edit"></a>
                                                                            <a class="fa fa-remove" href="#" title="Delete" data-toggle="modal" data-target="#myModal"></a>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <!-- /.table-responsive -->
                                                    </div>
                                                    <!-- /.panel-body -->
                                                    <!-- Modal -->
                                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                    <h4 class="modal-title" id="myModalLabel">Delete</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    Are you sure you want to delete next of kin  
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Delete</button>
                                                                </div>
                                                            </div>
                                                            <!-- /.modal-content -->
                                                        </div>
                                                        <!-- /.modal-dialog -->
                                                    </div>
                                                    <!-- /.modal -->
                                                </div>


                                                <hr />
                                                <asp:Button ID="btnBack" runat="server" class="btn btn-success" Text="Back"></asp:Button>
                                                <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" class="btn btn-success" Text="Next"></asp:Button>

                                                <hr />
                                                <!-- /.panel -->

                                            </div>

                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
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
            <footer class="main-footer">
                &copy; Copyright <%: DateTime.Now.Year %> All rights reserved. Empowered by <a href="http://www.es3.co.za/" target="_blank">
                    <img class="esoftware" src="Images/es3.png" alt="Es3"></a>
            </footer>
        </div>
        <!-- /#page-wrapper -->

        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

    </form>
</body>
</html>
