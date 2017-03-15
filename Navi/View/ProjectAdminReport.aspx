<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectAdminReport.aspx.cs" Inherits="Navi.View.ProjectAdminReport" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Project Report</title>

    
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
<%--....

--content inside here...

...--%>
    <form id="form1" runat="server">
    <div>
        <h1>&nbsp;</h1>
        <h1>Project Admin Report</h1>
        <div class="form-group form-group-sm">
                <div class="row">
                    <div class="col-xs-6 col-sm-3">

                        <asp:Label ID="Label1" runat="server" Text="Project Name: "></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control" DataSourceID="ObjectDataSource5" DataTextField="projName" DataValueField="ID" AutoPostBack="True">
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        Client<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID" AutoPostBack="True" >
                        </asp:DropDownList>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        Bid Date From:<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="yyyy-mm-dd" ></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                         To:    
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="yyyy-mm-dd" ></asp:TextBox>
                    </div>
                </div>
            </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" DataKeyNames="ID,Expr1" DataSourceID="ObjectDataSource3">
            <Columns>
                <asp:BoundField DataField="projName" HeaderText="Project Name" SortExpression="projName" />
                <asp:BoundField DataField="cliName" HeaderText="Client Name" SortExpression="cliName" />
                <asp:BoundField DataField="projBidDate" HeaderText="Bid Date" SortExpression="projBidDate" />
                <asp:BoundField DataField="projActCost" HeaderText="Actual Cost" SortExpression="projActCost" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="wrkTypeDesc" HeaderText="Worker" SortExpression="wrkTypeDesc" />
                <asp:BoundField DataField="lreqEstHours" HeaderText="Estimated Labour Hours" SortExpression="lreqEstHours" />
                <asp:BoundField DataField="lsHours" HeaderText="Actual Labour Hours" SortExpression="lsHours" />
                <asp:BoundField DataField="wrkTypeCost" HeaderText="Worker Cost" SortExpression="wrkTypeCost" />
                <asp:BoundField DataField="wrkTypePrice" HeaderText="Worker Price" SortExpression="wrkTypePrice" />
                <asp:BoundField DataField="Total" HeaderText="Total Hours/Cost" ReadOnly="True" SortExpression="Total" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Total Hours/Cost: "></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">2,200</asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdminReportLibrary.NBD_SBDataSetTableAdapters.AdminReport1TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="Param2" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" DefaultValue="" Name="param3" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" Name="param4" PropertyName="Text" Type="String" DefaultValue="2001-01-01" />
                <asp:ControlParameter ControlID="TextBox3" Name="param5" PropertyName="Text" Type="String" DefaultValue="2020-01-01" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdminReportLibrary.NBD_SBDataSetTableAdapters.PROJECTfirstTableAdapter"></asp:ObjectDataSource>
    
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdminReportLibrary.NBD_SBDataSetTableAdapters.ProjectClientBidTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Param2" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" Name="param3" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox2" DefaultValue="2001-01-01" Name="param4" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" DefaultValue="2020-01-01" Name="param5" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="AdminReportLibrary.NBD_SBDataSetTableAdapters.CLIENTTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_cliName" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="cliName" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_cliName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet5AllProjectsTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
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




