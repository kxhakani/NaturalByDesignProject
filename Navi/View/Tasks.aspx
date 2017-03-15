<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="Navi.View.Tasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body><!-- Navigation -->
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
                            <li>
                                <a href="../View/Summary.aspx">Summary</a>
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
<%--....

--content inside here...

...--%>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1>Tasks</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource1">
                    <Columns>
                        <asp:BoundField DataField="taskDesc" HeaderText="Task Desc." SortExpression="taskDesc" />
                        <asp:BoundField DataField="taskStdTimeAmnt" HeaderText="Task Std Time Amnt" SortExpression="taskStdTimeAmnt" />
                        <asp:BoundField DataField="taskStdTimeUnit" HeaderText="Task Std Time Unit" SortExpression="taskStdTimeUnit" />
                    </Columns>
                </asp:GridView>
            </p>
            <p>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="ObjectDataSource1" Height="54px" Width="215px">
                    <Fields>
                        <asp:BoundField DataField="taskDesc" HeaderText="Task Desc." SortExpression="taskDesc" />
                        <asp:BoundField DataField="taskStdTimeAmnt" HeaderText="Task Std Time Amnt" SortExpression="taskStdTimeAmnt" />
                        <asp:BoundField DataField="taskStdTimeUnit" HeaderText="Task Std Time Unit" SortExpression="taskStdTimeUnit" />
                    </Fields>
                </asp:DetailsView>
            </p>
            <p>&nbsp;</p>
        </div>
    </form>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet4TableAdapters.TASKTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="taskDesc" Type="String" />
            <asp:Parameter Name="taskStdTimeAmnt" Type="Byte" />
            <asp:Parameter Name="taskStdTimeUnit" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="taskDesc" Type="String" />
            <asp:Parameter Name="taskStdTimeAmnt" Type="Byte" />
            <asp:Parameter Name="taskStdTimeUnit" Type="String" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</body>
</html>
