<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin2.aspx.cs" Inherits="project.admin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

    <link href="admincss.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 92%;
            height: 256px;
        }
        .auto-style3 {
            width: 91%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            background-color: #C0C0C0;
            height: 868px;
        }
        .auto-style4 {
            margin-bottom: 4px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            width: 1734px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 182px;
            height: 126px;
        }
        </style>
</head>
<body>
   
        <table class="auto-style7">
            <tr>
                <td>
                    <img alt="logo" class="auto-style8" src="img/logo.png" /></td>
                <td>
                 <nav id="account-nav"><img src="img/kisspng-computer-icons-hamburger-button-menu-new-menu-5b34724be5a1f0.5796308115301637879406.jpg" id="account-img" class="auto-style5">
                            <ul>
                                
                                <li class="account-list">Profile</a></li>
                                <li class="account-list">Category</a>
                                    <ul class="overlay">
                                        <li class="account-list">Car Plate</a></li>
                                        <li class="account-list">Truck Plate</a></li>
                                        <li class="account-list">Motorcycle Plate</a></li>

                                    </ul>
                                </li>
                                <li class="account-list">Log Out</a></li>
                            </ul>

                        </nav>
                    </script>
                 
                </td>
            </tr>
        </table>
        <p class="auto-style5">
            <strong>&nbsp;
            Add category
        </strong>
        </p>
        <table class="auto-style1" style="background-color: #C0C0C0">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Category name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" style="display: inline-block; padding: 10px 20px; border-radius: 50px;  color: white; text-decoration: none; "># add category name </asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Category description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="TextBox2" runat="server" style="display: inline-block; padding: 10px 20px; border-radius: 50px;  color: white; text-decoration: none; " TextMode="MultiLine" >  # add category description </asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add" style="display: inline-block; padding: 10px 20px; border-radius: 50px; background-color: darkgrey; color: white; text-decoration: none;" OnClick="Button1_Click" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CID] = @original_CID AND [CName] = @original_CName AND [CDescription] = @original_CDescription AND [AdminID] = @original_AdminID" InsertCommand="INSERT INTO [Category] ([CName], [CDescription], [AdminID]) VALUES (@CName, @CDescription, @AdminID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CName] = @CName, [CDescription] = @CDescription, [AdminID] = @AdminID WHERE [CID] = @original_CID AND [CName] = @original_CName AND [CDescription] = @original_CDescription AND [AdminID] = @original_AdminID">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CID" Type="Int32" />
                            <asp:Parameter Name="original_CName" Type="String" />
                            <asp:Parameter Name="original_CDescription" Type="String" />
                            <asp:Parameter Name="original_AdminID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="CName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="CDescription" PropertyName="Text" Type="String" />
                            <asp:Parameter Name="AdminID" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CName" Type="String" />
                            <asp:Parameter Name="CDescription" Type="String" />
                            <asp:Parameter Name="AdminID" Type="Int32" />
                            <asp:Parameter Name="original_CID" Type="Int32" />
                            <asp:Parameter Name="original_CName" Type="String" />
                            <asp:Parameter Name="original_CDescription" Type="String" />
                            <asp:Parameter Name="original_AdminID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
&nbsp;<p class="auto-style5">
            <strong>&nbsp;&nbsp; Upload product</strong></p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" Height="51px" Width="360px"># add product name</asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CName" DataValueField="CID">
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product image:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" Height="51px" Width="374px" TextMode="Url">#upload images </asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minimum bidding amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" Height="43px" Width="374px">#minimum bidding amount </asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product descriptoin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Height="45px" Width="372px" TextMode="MultiLine"># add product description</asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting dateof bidding:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox8" runat="server" Height="37px" Width="373px" TextMode="Date"># write staring date of bidding </asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ending date of bidding:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox9" runat="server" Height="42px" Width="369px" TextMode="Date">#write starting date of bidding </asp:TextBox>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Upload" style="display: inline-block; padding: 10px 20px; border-radius: 50px; background-color: darkgrey; color: white; text-decoration: none;" OnClick="Button2_Click" />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProID] = @original_ProID AND [ProName] = @original_ProName AND [ProImage] = @original_ProImage AND [ProDescription] = @original_ProDescription AND [MinmumBiddingAmount] = @original_MinmumBiddingAmount AND [StartingDate] = @original_StartingDate AND [EndingDate] = @original_EndingDate AND [AdminID] = @original_AdminID AND [CID] = @original_CID" InsertCommand="INSERT INTO [Product] ([ProName], [ProImage], [ProDescription], [MinmumBiddingAmount], [StartingDate], [EndingDate], [AdminID], [CID]) VALUES (@ProName, @ProImage, @ProDescription, @MinmumBiddingAmount, @StartingDate, @EndingDate, @AdminID, @CID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product] WHERE ([CID] = @CID)" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Product] SET [ProName] = @ProName, [ProImage] = @ProImage, [ProDescription] = @ProDescription, [MinmumBiddingAmount] = @MinmumBiddingAmount, [StartingDate] = @StartingDate, [EndingDate] = @EndingDate, [AdminID] = @AdminID, [CID] = @CID WHERE [ProID] = @original_ProID AND [ProName] = @original_ProName AND [ProImage] = @original_ProImage AND [ProDescription] = @original_ProDescription AND [MinmumBiddingAmount] = @original_MinmumBiddingAmount AND [StartingDate] = @original_StartingDate AND [EndingDate] = @original_EndingDate AND [AdminID] = @original_AdminID AND [CID] = @original_CID">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ProID" Type="Int32" />
                            <asp:Parameter Name="original_ProName" Type="String" />
                            <asp:Parameter Name="original_ProImage" Type="Object" />
                            <asp:Parameter Name="original_ProDescription" Type="String" />
                            <asp:Parameter Name="original_MinmumBiddingAmount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="original_StartingDate" />
                            <asp:Parameter DbType="Date" Name="original_EndingDate" />
                            <asp:Parameter Name="original_AdminID" Type="Int32" />
                            <asp:Parameter Name="original_CID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox3" Name="ProName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="ProImage" PropertyName="Text" Type="Object" />
                            <asp:ControlParameter ControlID="TextBox7" Name="ProDescription" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox6" Name="MinmumBiddingAmount" PropertyName="Text" Type="Decimal" />
                            <asp:ControlParameter ControlID="TextBox8" DbType="Date" Name="StartingDate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox9" DbType="Date" Name="EndingDate" PropertyName="Text" />
                            <asp:Parameter Name="AdminID" Type="Int32" />
                            <asp:Parameter Name="CID" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="CID" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProName" Type="String" />
                            <asp:Parameter Name="ProImage" Type="Object" />
                            <asp:Parameter Name="ProDescription" Type="String" />
                            <asp:Parameter Name="MinmumBiddingAmount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="StartingDate" />
                            <asp:Parameter DbType="Date" Name="EndingDate" />
                            <asp:Parameter Name="AdminID" Type="Int32" />
                            <asp:Parameter Name="CID" Type="Int32" />
                            <asp:Parameter Name="original_ProID" Type="Int32" />
                            <asp:Parameter Name="original_ProName" Type="String" />
                            <asp:Parameter Name="original_ProImage" Type="Object" />
                            <asp:Parameter Name="original_ProDescription" Type="String" />
                            <asp:Parameter Name="original_MinmumBiddingAmount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="original_StartingDate" />
                            <asp:Parameter DbType="Date" Name="original_EndingDate" />
                            <asp:Parameter Name="original_AdminID" Type="Int32" />
                            <asp:Parameter Name="original_CID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    
</body>
</html>


        </div>
    </form>
</body>
</html>
