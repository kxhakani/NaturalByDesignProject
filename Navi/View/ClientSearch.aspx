<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientSearch.aspx.cs" Inherits="Navi.ClientSearch" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
    <title>Client Search</title>

   
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
            <div class="row">
                <div class="col-md-8">
                    <h1>Client Information</h1>
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


            <div class="row fa-border">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblClientName" runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Province"></asp:Label>
                        <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Project Name"></asp:Label>
                        <asp:TextBox ID="TextBox8" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Project Site"></asp:Label>
                        <asp:TextBox ID="TextBox9" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-1 col-md-offset-11">
                    <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Search" OnClick="Button1_Click" />
                </div>
            </div>


            <div class="row">
                <div class="col-md-6 fa-border">
                    <h3>Clients</h3>
                    <asp:ListBox ID="ListBox1" runat="server" class="form-control" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="cliName" DataValueField="ID"></asp:ListBox>
                    <%--clients formview--%>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="ObjectDataSource3">
                        <EditItemTemplate>
                            ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            cliName:
                <asp:TextBox ID="cliNameTextBox" runat="server" Text='<%# Bind("cliName") %>' />
                            <br />
                            cliAddress:
                <asp:TextBox ID="cliAddressTextBox" runat="server" Text='<%# Bind("cliAddress") %>' />
                            <br />
                            cityID:
                <asp:TextBox ID="cityIDTextBox" runat="server" Text='<%# Bind("cityID") %>' />
                            <br />
                            cliProvince:
                <asp:TextBox ID="cliProvinceTextBox" runat="server" Text='<%# Bind("cliProvince") %>' />
                            <br />
                            cliPCode:
                <asp:TextBox ID="cliPCodeTextBox" runat="server" Text='<%# Bind("cliPCode") %>' />
                            <br />
                            cliPhone:
                <asp:TextBox ID="cliPhoneTextBox" runat="server" Text='<%# Bind("cliPhone") %>' />
                            <br />
                            Client Contact:
                <asp:TextBox ID="Client_ContactTextBox" runat="server" Text='<%# Bind("[Client Contact]") %>' />
                            <br />
                            cliConPosition:
                <asp:TextBox ID="cliConPositionTextBox" runat="server" Text='<%# Bind("cliConPosition") %>' />
                            <br />
                            city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                         <%--   Client Details --%>
                        </HeaderTemplate>
                        <InsertItemTemplate>
                            cliName:
                <asp:TextBox ID="cliNameTextBox" runat="server" Text='<%# Bind("cliName") %>' />
                            <br />
                            cliAddress:
                <asp:TextBox ID="cliAddressTextBox" runat="server" Text='<%# Bind("cliAddress") %>' />
                            <br />
                            cityID:
                <asp:TextBox ID="cityIDTextBox" runat="server" Text='<%# Bind("cityID") %>' />
                            <br />
                            cliProvince:
                <asp:TextBox ID="cliProvinceTextBox" runat="server" Text='<%# Bind("cliProvince") %>' />
                            <br />
                            cliPCode:
                <asp:TextBox ID="cliPCodeTextBox" runat="server" Text='<%# Bind("cliPCode") %>' />
                            <br />
                            cliPhone:
                <asp:TextBox ID="cliPhoneTextBox" runat="server" Text='<%# Bind("cliPhone") %>' />
                            <br />
                            Client Contact:
                <asp:TextBox ID="Client_ContactTextBox" runat="server" Text='<%# Bind("[Client Contact]") %>' />
                            <br />
                            cliConPosition:
                <asp:TextBox ID="cliConPositionTextBox" runat="server" Text='<%# Bind("cliConPosition") %>' />
                            <br />
                            city:
                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <%--Relevant--%>
                        <ItemTemplate>
                    <%--        Name:
                <asp:Label ID="cliNameLabel" runat="server" Text='<%# Bind("cliName") %>' />
                            <br />--%>
                            Address:
                <asp:Label ID="cliAddressLabel" runat="server" Text='<%# Bind("cliAddress") %>' />
                            <br />
                            City:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            Province:
                <asp:Label ID="cliProvinceLabel" runat="server" Text='<%# Bind("cliProvince") %>' />
                            <br />
                            Postal Code:
                <asp:Label ID="cliPCodeLabel" runat="server" Text='<%# Bind("cliPCode") %>' />
                            <br />
                            Phone:
                <asp:Label ID="cliPhoneLabel" runat="server" Text='<%# Bind("cliPhone") %>' />
                            <br />
                            Client Contact:
                <asp:Label ID="Client_ContactLabel" runat="server" Text='<%# Bind("[Client Contact]") %>' />
                        </ItemTemplate>
                        <%--Relevant--%>
                    </asp:FormView>
                </div>
                <div class="col-md-6 fa-border">
                    <h3>Projects</h3>
                    <asp:ListBox ID="ListBox2" runat="server" class="form-control" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="projName" DataValueField="ID" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged"></asp:ListBox>
                    <%--Projects formview--%>
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="ID" DataSourceID="ObjectDataSource5">
                        <EditItemTemplate>
                            ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            projName:
                <asp:TextBox ID="projNameTextBox" runat="server" Text='<%# Bind("projName") %>' />
                            <br />
                            projSite:
                <asp:TextBox ID="projSiteTextBox" runat="server" Text='<%# Bind("projSite") %>' />
                            <br />
                            projBidDate:
                <asp:TextBox ID="projBidDateTextBox" runat="server" Text='<%# Bind("projBidDate") %>' />
                            <br />
                            projEstStart:
                <asp:TextBox ID="projEstStartTextBox" runat="server" Text='<%# Bind("projEstStart") %>' />
                            <br />
                            projEstEnd:
                <asp:TextBox ID="projEstEndTextBox" runat="server" Text='<%# Bind("projEstEnd") %>' />
                            <br />
                            projEstCost:
                <asp:TextBox ID="projEstCostTextBox" runat="server" Text='<%# Bind("projEstCost") %>' />
                            <br />
                            projID:
                <asp:TextBox ID="projIDTextBox" runat="server" Text='<%# Bind("projID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                         <%--   Project Details--%>
                        </HeaderTemplate>
                        <InsertItemTemplate>
                            ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                            <br />
                            projName:
                <asp:TextBox ID="projNameTextBox" runat="server" Text='<%# Bind("projName") %>' />
                            <br />
                            projSite:
                <asp:TextBox ID="projSiteTextBox" runat="server" Text='<%# Bind("projSite") %>' />
                            <br />
                            projBidDate:
                <asp:TextBox ID="projBidDateTextBox" runat="server" Text='<%# Bind("projBidDate") %>' />
                            <br />
                            projEstStart:
                <asp:TextBox ID="projEstStartTextBox" runat="server" Text='<%# Bind("projEstStart") %>' />
                            <br />
                            projEstEnd:
                <asp:TextBox ID="projEstEndTextBox" runat="server" Text='<%# Bind("projEstEnd") %>' />
                            <br />
                            projEstCost:
                <asp:TextBox ID="projEstCostTextBox" runat="server" Text='<%# Bind("projEstCost") %>' />
                            <br />
                            projID:
                <asp:TextBox ID="projIDTextBox" runat="server" Text='<%# Bind("projID") %>' />
                            <br />

                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                        <%--    ID:
                <asp:Label ID="projIDLabel" runat="server" Text='<%# Bind("projID") %>' />
                            <br />
                            Name:
                <asp:Label ID="projNameLabel" runat="server" Text='<%# Bind("projName") %>' />
                            <br />--%>
                            Site:
                <asp:Label ID="projSiteLabel" runat="server" Text='<%# Bind("projSite") %>' />
                            <br />
                            Bid Date:
                <asp:Label ID="projBidDateLabel" runat="server" Text='<%# Bind("projBidDate") %>' />
                            <br />
                            Estimated Begin Date:
                <asp:Label ID="projEstStartLabel" runat="server" Text='<%# Bind("projEstStart") %>' />
                            <br />
                            Estimated Completion Date:
                <asp:Label ID="projEstEndLabel" runat="server" Text='<%# Bind("projEstEnd") %>' />
                            <br />
                            Bid Amount:
                <asp:Label ID="projEstCostLabel" runat="server" Text='<%# Bind("projEstCost") %>' />
                            <br />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                     <h3><asp:Label ID="Label7" runat="server" Text="Labour Requirements" ></asp:Label></h3>
                    <asp:FormView ID="FormView5" runat="server" DataSourceID="ObjectDataSource8">
                        <EditItemTemplate>
                            projectID:
                <asp:TextBox ID="projectIDTextBox" runat="server" Text='<%# Bind("projectID") %>' />
                            <br />
                            lreqEstHours:
                <asp:TextBox ID="lreqEstHoursTextBox" runat="server" Text='<%# Bind("lreqEstHours") %>' />
                            <br />
                            taskDesc:
                <asp:TextBox ID="taskDescTextBox" runat="server" Text='<%# Bind("taskDesc") %>' />
                            <br />
                            wrkTypeCost:
                <asp:TextBox ID="wrkTypeCostTextBox" runat="server" Text='<%# Bind("wrkTypeCost") %>' />
                            <br />
                            wrkTypePrice:
                <asp:TextBox ID="wrkTypePriceTextBox" runat="server" Text='<%# Bind("wrkTypePrice") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                          <%--  Labour Requirements--%>
                        </HeaderTemplate>
                        <InsertItemTemplate>
                            projectID:
                <asp:TextBox ID="projectIDTextBox" runat="server" Text='<%# Bind("projectID") %>' />
                            <br />
                            lreqEstHours:
                <asp:TextBox ID="lreqEstHoursTextBox" runat="server" Text='<%# Bind("lreqEstHours") %>' />
                            <br />
                            taskDesc:
                <asp:TextBox ID="taskDescTextBox" runat="server" Text='<%# Bind("taskDesc") %>' />
                            <br />
                            wrkTypeCost:
                <asp:TextBox ID="wrkTypeCostTextBox" runat="server" Text='<%# Bind("wrkTypeCost") %>' />
                            <br />
                            wrkTypePrice:
                <asp:TextBox ID="wrkTypePriceTextBox" runat="server" Text='<%# Bind("wrkTypePrice") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Hours:
                <asp:Label ID="lreqEstHoursLabel" runat="server" Text='<%# Bind("lreqEstHours") %>' />
                            <br />
                            Description:
                <asp:Label ID="taskDescLabel" runat="server" Text='<%# Bind("taskDesc") %>' />
                            <br />
                            Unit Price:
                <asp:Label ID="wrkTypeCostLabel" runat="server" Text='<%# Bind("wrkTypeCost") %>' />
                            <br />
                            Extended Price:
                <asp:Label ID="wrkTypePriceLabel" runat="server" Text='<%# Bind("wrkTypePrice") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </div>
                <div class="col-md-4">
                     <h3><asp:Label ID="Label8" runat="server" Text="Material Requirements" ></asp:Label></h3>
                    <asp:FormView ID="FormView4" runat="server" DataSourceID="ObjectDataSource7">
                        <EditItemTemplate>
                            projectID:
                <asp:TextBox ID="projectIDTextBox" runat="server" Text='<%# Bind("projectID") %>' />
                            <br />
                            mreqEstQty:
                <asp:TextBox ID="mreqEstQtyTextBox" runat="server" Text='<%# Bind("mreqEstQty") %>' />
                            <br />
                            matDesc:
                <asp:TextBox ID="matDescTextBox" runat="server" Text='<%# Bind("matDesc") %>' />
                            <br />
                            invSizeUnit:
                <asp:TextBox ID="invSizeUnitTextBox" runat="server" Text='<%# Bind("invSizeUnit") %>' />
                            <br />
                            invSizeAmnt:
                <asp:TextBox ID="invSizeAmntTextBox" runat="server" Text='<%# Bind("invSizeAmnt") %>' />
                            <br />
                            UNIT PRICE:
                <asp:TextBox ID="UNIT_PRICETextBox" runat="server" Text='<%# Bind("[UNIT PRICE]") %>' />
                            <br />
                            Extended Price:
                <asp:TextBox ID="Extended_PriceTextBox" runat="server" Text='<%# Bind("[Extended Price]") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                        <%--    Material Requirements--%>
                        </HeaderTemplate>
                        <InsertItemTemplate>
                            projectID:
                <asp:TextBox ID="projectIDTextBox" runat="server" Text='<%# Bind("projectID") %>' />
                            <br />
                            mreqEstQty:
                <asp:TextBox ID="mreqEstQtyTextBox" runat="server" Text='<%# Bind("mreqEstQty") %>' />
                            <br />
                            matDesc:
                <asp:TextBox ID="matDescTextBox" runat="server" Text='<%# Bind("matDesc") %>' />
                            <br />
                            invSizeUnit:
                <asp:TextBox ID="invSizeUnitTextBox" runat="server" Text='<%# Bind("invSizeUnit") %>' />
                            <br />
                            invSizeAmnt:
                <asp:TextBox ID="invSizeAmntTextBox" runat="server" Text='<%# Bind("invSizeAmnt") %>' />
                            <br />
                            UNIT PRICE:
                <asp:TextBox ID="UNIT_PRICETextBox" runat="server" Text='<%# Bind("[UNIT PRICE]") %>' />
                            <br />
                            Extended Price:
                <asp:TextBox ID="Extended_PriceTextBox" runat="server" Text='<%# Bind("[Extended Price]") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Quantity:
                <asp:Label ID="mreqEstQtyLabel" runat="server" Text='<%# Bind("mreqEstQty") %>' />
                            <br />
                            Decription:
                <asp:Label ID="matDescLabel" runat="server" Text='<%# Bind("matDesc") %>' />
                            <br />
                            Size Amount:
                <asp:Label ID="invSizeAmntLabel" runat="server" Text='<%# Bind("invSizeAmnt") %>' />
                            <br />
                            Size Type:
                <asp:Label ID="invSizeUnitLabel" runat="server" Text='<%# Bind("invSizeUnit") %>' />
                            <br />
                            Unit Price:
                <asp:Label ID="UNIT_PRICELabel" runat="server" Text='<%# Bind("[UNIT PRICE]") %>' />
                            <br />
                            Extended Price:
                <asp:Label ID="Extended_PriceLabel" runat="server" Text='<%# Bind("[Extended Price]") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </div>
                <div class="col-md-4">
                    <h3><asp:Label ID="Label1" runat="server" Text="NBD Staff" ></asp:Label></h3>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False" DataSourceID="ObjectDataSource6">
                        <Columns>
                            <asp:BoundField DataField="Person" HeaderText="Employee" ReadOnly="True" SortExpression="Person" />
                            <asp:BoundField DataField="wrkTypeDesc" HeaderText="Position" SortExpression="wrkTypeDesc" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div class="col-md-1 col-md-offset-11">
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-default" OnClick="Button3_Click" Text="Clear" />
                </div>
            </div>

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.CLIENTSEARCHTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" ConvertEmptyStringToNull="False" Name="Param1" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.LABOURREQTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox2" DefaultValue="" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.CLIENTDETAILSTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.PROJECTSPECIFICSTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox2" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.NBDSTAFFTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox2" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.MATERIALREQTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox2" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.PROJECTListTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                    <asp:Parameter Name="Original_clientID" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ListBox1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="projName" Type="String" />
                    <asp:Parameter Name="clientID" Type="Int32" />
                    <asp:Parameter Name="Original_ID" Type="Int32" />
                    <asp:Parameter Name="Original_projName" Type="String" />
                    <asp:Parameter Name="Original_clientID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </form>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>
