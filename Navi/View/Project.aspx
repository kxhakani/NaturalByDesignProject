<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="Navi.Project" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Projects</title>

   
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
    <script language="C#" runat="server">

        void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            DetailsView1.Visible = true;
            GridView1.Visible = false;
        }

   </script>
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

   <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h1>Project Information</h1>
                </div>
                <div class="col-md-2 col-md-offset-2">

                    <ul class="nav">
                        <li class="dropdown">
                            <a class="AddNew" href="#" data-toggle="dropdown">
                                <h5>Add New</h5>
                            </a>
                            <div class="dropdown-menu" style="padding: 10px; padding-bottom: 0px;">
                                <div class ="form-group">
                                    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="ObjectDataSource5" Height="50px" Width="322px" DefaultMode="Insert" EnableViewState="False" >
        <Fields>
            <asp:BoundField DataField="projName" HeaderText="Name" SortExpression="projName" />
            <asp:BoundField DataField="projSite" HeaderText="Site" SortExpression="projSite" />
            <asp:BoundField DataField="projBidDate" HeaderText="Bid Date" SortExpression="projBidDate" />
            <asp:BoundField DataField="projEstStart" HeaderText="Est. Start" SortExpression="projEstStart" />
            <asp:BoundField DataField="projEstEnd" HeaderText="Est. End" SortExpression="projEstEnd" />
            <asp:BoundField DataField="projActStart" HeaderText="Act. Start" SortExpression="projActStart" />
            <asp:BoundField DataField="projActEnd" HeaderText="Act. End" SortExpression="projActEnd" />
            <asp:BoundField DataField="projEstCost" HeaderText="Est. Cost" SortExpression="projEstCost" />
            <asp:BoundField DataField="projActCost" HeaderText="Act. Cost" SortExpression="projActCost" />
            <asp:CheckBoxField DataField="projBidCustAccept" HeaderText="Bid Cust. Accept" SortExpression="projBidCustAccept" />
            <asp:CheckBoxField DataField="projBidMgmtAccept" HeaderText="Bid Mgmt. Accept" SortExpression="projBidMgmtAccept" />
            <asp:BoundField DataField="projCurrentPhase" HeaderText="Current Phase" SortExpression="projCurrentPhase" />
            <asp:CheckBoxField DataField="projIsFlagged" HeaderText="Is Flagged" SortExpression="projIsFlagged" />
            <asp:TemplateField HeaderText="Client" SortExpression="clientID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("clientID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID" Height="22px" Width="126px">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Designer" SortExpression="designerID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("designerID") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Designer" DataValueField="ID">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Designer" DataValueField="ID">
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            
        
                    <!--
                    <td class="auto-style3">
                         <asp:ImageButton id="imagebutton1" runat="server"
                       AlternateText="ImageButton 1"
                       ImageAlign="left"
                       ImageUrl="../img/plus.jpg"
                       OnClick="ImageButton_Click"/>    
                    <td>
                    -->


    
            <div class="row fa-border">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            <asp:DropDownList ID="DropDownList11" runat="server" Class="form-control" AutoPostBack="True" DataSourceID="ObjectDataSource6" DataTextField="projName" DataValueField="ID"  AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Value="0">All Projects</asp:ListItem>
            </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">

                         <asp:Label ID="Label3" runat="server" Text="Client"></asp:Label>
             <asp:DropDownList ID="DropDownList9" runat="server"  Class="form-control" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID" AppendDataBoundItems="True">
                 <asp:ListItem Selected="True" Value="0">All Clients</asp:ListItem>
            </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Designer"></asp:Label>
            <asp:DropDownList ID="DropDownList10" runat="server"  Class="form-control" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="Designer" DataValueField="ID" AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Value="0">All Designers</asp:ListItem>
            </asp:DropDownList>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Bid Date From: "></asp:Label>
             <asp:TextBox ID="TextBox4" runat="server"  Class="form-control" AutoPostBack="True"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
 <asp:Label ID="Label7" runat="server" Text="To: "></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"  Class="form-control" AutoPostBack="True"></asp:TextBox>

                    </div>
                </div>
            </div>



       
        <div class="row">
            <div id="ScrollList" style="width: 1170px; overflow-y: hidden;overflow-x:scroll ;">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ObjectDataSource5" Width="1094px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="projName" HeaderText="Name" SortExpression="projName" />
                    <asp:BoundField DataField="projSite" HeaderText="Site" SortExpression="projSite" />
                    <asp:BoundField DataField="projBidDate" DataFormatString="&quot;{0:d}&quot;" HeaderText="Bid Date" SortExpression="projBidDate" />
                    <asp:BoundField DataField="projEstStart" DataFormatString="&quot;{0:d}&quot;" HeaderText="Est. Start" SortExpression="projEstStart" />
                    <asp:BoundField DataField="projEstEnd" DataFormatString="&quot;{0:d}&quot;" HeaderText="Est. End" SortExpression="projEstEnd" />
                    <asp:BoundField DataField="projActStart" DataFormatString="&quot;{0:d}&quot;" HeaderText="Act. Start" SortExpression="projActStart" />
                    <asp:BoundField DataField="projActEnd" DataFormatString="&quot;{0:d}&quot;" HeaderText="Act. End" SortExpression="projActEnd" />
                    <asp:BoundField DataField="projEstCost" HeaderText="Est. Cost" SortExpression="projEstCost" />
                    <asp:BoundField DataField="projActCost" HeaderText="Act. Cost" SortExpression="projActCost" />
                    <asp:CheckBoxField DataField="projBidCustAccept" HeaderText="Bid Cust. Accept" SortExpression="projBidCustAccept" />
                    <asp:CheckBoxField DataField="projBidMgmtAccept" HeaderText="Bid. Mgmt Accept" SortExpression="projBidMgmtAccept" />
                    <asp:BoundField DataField="projCurrentPhase" HeaderText="Current Phase" SortExpression="projCurrentPhase" />
                    <asp:CheckBoxField DataField="projIsFlagged" HeaderText="Flagged" SortExpression="projIsFlagged" />
                    <asp:TemplateField HeaderText="Client" SortExpression="clientID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID" SelectedValue='<%# Bind("clientID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ObjectDataSource4" DataTextField="cliName" DataValueField="ID" Enabled="False" SelectedValue='<%# Bind("clientID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Designer" InsertVisible="False" SortExpression="designerID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Designer" DataValueField="ID" SelectedValue='<%# Bind("designerID") %>' Width="88px">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ObjectDataSource3" DataTextField="Designer" DataValueField="ID" Enabled="False" SelectedValue='<%# Bind("designerID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                </div>
        </div>
             </div>


    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet1TableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
                <asp:Parameter Name="Original_projSite" Type="String" />
                <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                <asp:Parameter Name="Original_projEstStart" Type="String" />
                <asp:Parameter Name="Original_projEstEnd" Type="String" />
                <asp:Parameter Name="Original_projActStart" Type="String" />
                <asp:Parameter Name="Original_projActEnd" Type="String" />
                <asp:Parameter Name="Original_projEstCost" Type="String" />
                <asp:Parameter Name="Original_projActCost" Type="String" />
                <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="Original_clientID" Type="Int32" />
                <asp:Parameter Name="Original_designerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="projName" Type="String" />
                <asp:Parameter Name="projSite" Type="String" />
                <asp:Parameter Name="projBidDate" Type="DateTime" />
                <asp:Parameter Name="projEstStart" Type="String" />
                <asp:Parameter Name="projEstEnd" Type="String" />
                <asp:Parameter Name="projActStart" Type="String" />
                <asp:Parameter Name="projActEnd" Type="String" />
                <asp:Parameter Name="projEstCost" Type="String" />
                <asp:Parameter Name="projActCost" Type="String" />
                <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="projCurrentPhase" Type="String" />
                <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="clientID" Type="Int32" />
                <asp:Parameter Name="designerID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList11" Name="Param1" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList9" Name="Param2" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList10" Name="Param3" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" DefaultValue="2001-01-01" Name="Param4" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox7" DefaultValue="2020-01-01" Name="Param5" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="projName" Type="String" />
                <asp:Parameter Name="projSite" Type="String" />
                <asp:Parameter Name="projBidDate" Type="DateTime" />
                <asp:Parameter Name="projEstStart" Type="String" />
                <asp:Parameter Name="projEstEnd" Type="String" />
                <asp:Parameter Name="projActStart" Type="String" />
                <asp:Parameter Name="projActEnd" Type="String" />
                <asp:Parameter Name="projEstCost" Type="String" />
                <asp:Parameter Name="projActCost" Type="String" />
                <asp:Parameter Name="projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="projCurrentPhase" Type="String" />
                <asp:Parameter Name="projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="clientID" Type="Int32" />
                <asp:Parameter Name="designerID" Type="Int32" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
                <asp:Parameter Name="Original_projName" Type="String" />
                <asp:Parameter Name="Original_projSite" Type="String" />
                <asp:Parameter Name="Original_projBidDate" Type="DateTime" />
                <asp:Parameter Name="Original_projEstStart" Type="String" />
                <asp:Parameter Name="Original_projEstEnd" Type="String" />
                <asp:Parameter Name="Original_projActStart" Type="String" />
                <asp:Parameter Name="Original_projActEnd" Type="String" />
                <asp:Parameter Name="Original_projEstCost" Type="String" />
                <asp:Parameter Name="Original_projActCost" Type="String" />
                <asp:Parameter Name="Original_projBidCustAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projBidMgmtAccept" Type="Boolean" />
                <asp:Parameter Name="Original_projCurrentPhase" Type="String" />
                <asp:Parameter Name="Original_projIsFlagged" Type="Boolean" />
                <asp:Parameter Name="Original_clientID" Type="Int32" />
                <asp:Parameter Name="Original_designerID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSetTableAdapters.PROJECTTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"  SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet2AllWorkersTableAdapters.WORKERTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet3AllClientsTableAdapters.CLIENTTableAdapter" UpdateMethod="Update">
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
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MultiTable2.NBD_SBDataSet5AllProjectsTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
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
            </p>

            <br />
    </form>

</body>
</html>
