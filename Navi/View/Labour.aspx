<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Labour.aspx.cs" Inherits="Navi.LabourReport" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Labour Report</title>

 
    <link href="../style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../style/css/modern-business.css" rel="stylesheet" />
    <link href="../Style/css/Custom.css" rel="stylesheet" />
    <link href="../style/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../View/Login.aspx">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../View/Project.aspx">Projects</a>
                    </li>
                    <li>
                        <a href="../View/Bid.aspx">Bid</a>
                    </li>
                    <li>
                        <a href="../View/DesignBudget.aspx">Budget</a>
                    </li>
                    <li>
                        <a href="ProductionPlan.aspx">Production Plan</a>
                    </li>
                    <li>
                        <a href="../View/ClientSearch.aspx">Client</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../View/ProjectAdminReport.aspx">Project Admin</a>
                            </li>
                            <li>
                                <a href="../View/Labour.aspx">Labour</a>
                            </li>
                            <li>
                                <a href="../View/ProductionDailyReport.aspx">Daily Work</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../View/Logout.aspx">Logout</a>
                            </li>
                            <li>
                                <a href="../View/Settings">Settings</a>
                            </li>
                            <li>
                                <a href="../View/Help.aspx">Help</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
    <form id="form1" runat="server">
    <div>
    
        <h1>&nbsp;</h1>
        <h1>Labour Report</h1>
        <div class="row">
            <div class="col-xs-6 col-sm-3">
                <div class="form-group">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control" DataSourceID="ObjectDataSource2" DataTextField="projName" DataValueField="ID">
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="wrkTypeDesc" HeaderText="Labor Type" SortExpression="wrkTypeDesc" />
                <asp:BoundField DataField="wrkTypePrice" HeaderText="Labor Price/Hour" SortExpression="wrkTypePrice" />
                <asp:BoundField DataField="wrkTypeCost" HeaderText="Labor Cost/Hour" SortExpression="wrkTypeCost" />
            </Columns>
        </asp:GridView>
        <br />
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LabourReportLibrary.LabourReportDataSetTableAdapters.LabourReportTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LabourReportLibrary.LabourReportDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="projName" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>
