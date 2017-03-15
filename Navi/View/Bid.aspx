<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bid.aspx.cs" Inherits="Navi.Bid" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Bid</title>


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

            <div class="form-group">

                <div class="form-group form-group-sm">
                    <div class="row">
                        <div class="col-md-8">
                            <h1>Bids Overview</h1>
                        </div>
                        <div class="col-md-2 col-md-offset-2">

                            <ul class="nav">
                                <li class="dropdown">
                                    <a class="AddNew" href="#" data-toggle="dropdown">
                                        <h5>Add New</h5>
                                    </a>
                                    <div class="dropdown-menu" style="padding: 10px; padding-bottom: 0px;">
                                        <div class="form-group">
                                            <asp:Label runat="server" class="col-sm-2 control-label" Text="Name" />
                                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label runat="server" class="col-sm-2 control-label" Text="Phone" />
                                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label runat="server" class="col-sm-2 control-label" Text="Contact" />
                                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" CausesValidation="True"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Button ID="Button2" class="form-control" runat="server" Text="Add New" />
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Width="200px">Client name is required </asp:RequiredFieldValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Width="200px">Phone is required </asp:RequiredFieldValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" Width="200px">Contact name is required</asp:RequiredFieldValidator>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblProjectName" runat="server" Text="Project Name: "></asp:Label>
                        <asp:DropDownList ID="ddlProject" runat="server" class="form-control" AutoPostBack="True" DataSourceID="BIDProjectIDValue" DataTextField="projName" DataValueField="ID" AppendDataBoundItems="True">
                            <asp:ListItem Selected="True" Value="0">All Projects</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblClientName" runat="server" Text="Client Name: "></asp:Label>
                        <asp:DropDownList ID="ddlClient" runat="server" class="form-control" AutoPostBack="True" DataTextField="cliName" DataValueField="ID" AppendDataBoundItems="True" DataSourceID="ObjectDataSource1">
                            <asp:ListItem Selected="True" Value="0">All Clients</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblBidDateFrom" runat="server" Text="Bid Date From: "></asp:Label>
                        <asp:TextBox ID="txtBidDateF" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <asp:Label ID="lblBidDateTo" runat="server" Text="Bid Date To: "></asp:Label>
                        <asp:TextBox ID="txtBidDateT" runat="server" class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>

                    <br />

                </div>
            </div>



            <h2 class="text-center">Project</h2>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataSourceID="BIDClient">
                <Columns>
                    <asp:BoundField DataField="projBidDate" DataFormatString="&quot;{0:d}&quot;" HeaderText="Bid Date" SortExpression="projBidDate" />
                    <asp:BoundField DataField="projEstStart" DataFormatString="{0:d}" HeaderText="Est. Begin Date" SortExpression="projEstStart" />
                    <asp:BoundField DataField="projEstEnd" HeaderText="Est. Compl. Date" SortExpression="projEstEnd" />
                    <asp:BoundField DataField="projSite" HeaderText="Project Site" SortExpression="projSite" />
                    <asp:BoundField DataField="projEstCost" HeaderText="Bid Amount" SortExpression="projEstCost" />
                </Columns>
            </asp:GridView>

            <div class="row">
                <div class="col-xs-6">
                    <h4>Client</h4>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataSourceID="BIDClient">
                        <Columns>
                            <asp:BoundField DataField="cliName" HeaderText="Client Name" SortExpression="cliName" />
                            <asp:BoundField DataField="Client Address" HeaderText="Client Address" ReadOnly="True" SortExpression="Client Address" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" ReadOnly="True" SortExpression="Contact" />
                            <asp:BoundField DataField="cliPhone" HeaderText="Phone" SortExpression="cliPhone" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-xs-6">
                    <h4>NBD Staff</h4>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" GridLines="None" DataKeyNames="ID" DataSourceID="BIDStaff">
                        <Columns>
                            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Role" SortExpression="wrkTypeDesc" />
                            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>



            <h2 class="text-center">Materials Requirements</h2>
            <div class="row">
                <div class="col-xs-6 .col-sm-4">
                    <h4>Plants</h4>
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed" GridLines="None" DataSourceID="BIDMatReqPlant">
                        <Columns>
                            <asp:BoundField DataField="mreqEstQty" HeaderText="Qnty" SortExpression="mreqEstQty" />
                            <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" />
                            <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                            <asp:BoundField DataField="invList" HeaderText="Unit Price" SortExpression="invList" />
                            <asp:BoundField DataField="Extended Price" HeaderText="Extended Price" ReadOnly="True" SortExpression="Extended Price" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-xs-6 .col-sm-4">
                    <h4>Pottery</h4>
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed" GridLines="None" DataSourceID="BIDMatReqPottery">
                        <Columns>
                            <asp:BoundField DataField="mreqEstQty" HeaderText="Qnty" SortExpression="mreqEstQty" />
                            <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" />
                            <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                            <asp:BoundField DataField="invList" HeaderText="Unit Price" SortExpression="invList" />
                            <asp:BoundField DataField="Extended Price" HeaderText="Extended Price" ReadOnly="True" SortExpression="Extended Price" />
                        </Columns>
                    </asp:GridView>
                </div>

            </div>
            <h4>Materials</h4>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CssClass="table table-condensed" GridLines="None" DataSourceID="BIDMatReq">
                <Columns>
                    <asp:BoundField DataField="mreqEstQty" HeaderText="Qnty" SortExpression="mreqEstQty" />
                    <asp:BoundField DataField="matDesc" HeaderText="Desc" SortExpression="matDesc" />
                    <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                    <asp:BoundField DataField="invList" HeaderText="Unit Price" SortExpression="invList" />
                    <asp:BoundField DataField="Extended Price" HeaderText="Extended Price" ReadOnly="True" SortExpression="Extended Price" />
                </Columns>
            </asp:GridView>




            <asp:ObjectDataSource ID="BIDProjectIDValue" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.PROJECT_ID_ValueTableAdapter" UpdateMethod="Update">
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

            <asp:ObjectDataSource ID="BIDClient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_Client_ProjectTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" Name="Param1" PropertyName="SelectedValue" Type="String" DefaultValue="" />
                    <asp:ControlParameter ControlID="ddlClient" DefaultValue="" Name="Param2" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>


            <asp:ObjectDataSource ID="BIDStaff" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_Staff_ProjectTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" ConvertEmptyStringToNull="False" DefaultValue="" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>

            <asp:ObjectDataSource ID="BIDProj" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_ProjectTableAdapter">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                    <asp:Parameter Name="Original_projEstStart" Type="String" />
                    <asp:Parameter Name="Original_projEstEnd" Type="String" />
                    <asp:Parameter Name="Original_projSite" Type="String" />
                    <asp:Parameter Name="Original_projEstCost" Type="String" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2020-01-01" Name="param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="param4" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="projBidDate" Type="DateTime" />
                    <asp:Parameter Name="projEstStart" Type="String" />
                    <asp:Parameter Name="projEstEnd" Type="String" />
                    <asp:Parameter Name="projSite" Type="String" />
                    <asp:Parameter Name="projEstCost" Type="String" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                    <asp:Parameter Name="Original_projEstStart" Type="String" />
                    <asp:Parameter Name="Original_projEstEnd" Type="String" />
                    <asp:Parameter Name="Original_projSite" Type="String" />
                    <asp:Parameter Name="Original_projEstCost" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="BIDMatReqPlant" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_Material_PlantTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlClient" DefaultValue="" Name="Param2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="BIDMatReqPottery" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_Material_PotteryTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" DefaultValue="" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlClient" DefaultValue="" Name="Param2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="BIDMatReq" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_Material_ReqTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" Name="Param1" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateF" DefaultValue="2000-01-01" Name="Param3" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtBidDateT" DefaultValue="2020-01-01" Name="Param4" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlClient" DefaultValue="" Name="Param2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="BIDLabor" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.BID_LaborTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProject" DefaultValue="*" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="BidLibrary.ProjectDataSetTableAdapters.CLIENTTableAdapter" UpdateMethod="Update">
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


        </form>

    </div>
</body>
</html>
