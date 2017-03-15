<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignerDailyReport.aspx.cs" Inherits="Navi.DesignerDailyReport" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Daily Work</title>


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
    <h1>Daily Work Report</h1>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Date:<asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        Project<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="projName" DataValueField="ID">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.PROJECTTableAdapter" UpdateMethod="Update">
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
        Site<asp:ListBox ID="ListBox1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="projSite" DataValueField="projSite" Height="28px" Width="199px"></asp:ListBox>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_SBDataSetTableAdapters.PROJECTSITETableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <br />
        Stage<asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
        <br />
        <p>
            Hours<asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox>
        </p>
        Task<asp:TextBox ID="TextBox3" runat="server" Width="350px"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </p>
    </form>
</body>
</html>
