<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="project.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            width: 249px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
            height: 612px;
            width: 1762px;
            margin-top: 71px;
        }
        .auto-style8 {
            margin-right: 138px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">

            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style8" DataKeyField="ProID" DataSourceID="SqlDataSource1" Height="271px" RepeatColumns="3" Width="1644px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged3">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Image ID="Image1" runat="server" Height="96px" ImageUrl='<%# Eval("ProImage") %>' Width="183px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label1" runat="server" Text="BID NOW"></asp:Label> 
                                <br> </br>
                                                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="+" />
        
              </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProDescription") %>'></asp:Label>
                                
                            </td>
                            <td class="auto-style5"></td>
                            <td class="auto-style5"></td>
                            <td class="auto-style5"></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProID] = @original_ProID AND (([ProName] = @original_ProName) OR ([ProName] IS NULL AND @original_ProName IS NULL)) AND (([ProImage] = @original_ProImage) OR ([ProImage] IS NULL AND @original_ProImage IS NULL)) AND (([ProDescription] = @original_ProDescription) OR ([ProDescription] IS NULL AND @original_ProDescription IS NULL)) AND (([MinmumBiddingAmount] = @original_MinmumBiddingAmount) OR ([MinmumBiddingAmount] IS NULL AND @original_MinmumBiddingAmount IS NULL)) AND (([StartingDate] = @original_StartingDate) OR ([StartingDate] IS NULL AND @original_StartingDate IS NULL)) AND (([EndingDate] = @original_EndingDate) OR ([EndingDate] IS NULL AND @original_EndingDate IS NULL)) AND (([AdminID] = @original_AdminID) OR ([AdminID] IS NULL AND @original_AdminID IS NULL)) AND (([CID] = @original_CID) OR ([CID] IS NULL AND @original_CID IS NULL))" InsertCommand="INSERT INTO [Product] ([ProName], [ProImage], [ProDescription], [MinmumBiddingAmount], [StartingDate], [EndingDate], [AdminID], [CID]) VALUES (@ProName, @ProImage, @ProDescription, @MinmumBiddingAmount, @StartingDate, @EndingDate, @AdminID, @CID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProName] = @ProName, [ProImage] = @ProImage, [ProDescription] = @ProDescription, [MinmumBiddingAmount] = @MinmumBiddingAmount, [StartingDate] = @StartingDate, [EndingDate] = @EndingDate, [AdminID] = @AdminID, [CID] = @CID WHERE [ProID] = @original_ProID AND (([ProName] = @original_ProName) OR ([ProName] IS NULL AND @original_ProName IS NULL)) AND (([ProImage] = @original_ProImage) OR ([ProImage] IS NULL AND @original_ProImage IS NULL)) AND (([ProDescription] = @original_ProDescription) OR ([ProDescription] IS NULL AND @original_ProDescription IS NULL)) AND (([MinmumBiddingAmount] = @original_MinmumBiddingAmount) OR ([MinmumBiddingAmount] IS NULL AND @original_MinmumBiddingAmount IS NULL)) AND (([StartingDate] = @original_StartingDate) OR ([StartingDate] IS NULL AND @original_StartingDate IS NULL)) AND (([EndingDate] = @original_EndingDate) OR ([EndingDate] IS NULL AND @original_EndingDate IS NULL)) AND (([AdminID] = @original_AdminID) OR ([AdminID] IS NULL AND @original_AdminID IS NULL)) AND (([CID] = @original_CID) OR ([CID] IS NULL AND @original_CID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProID" Type="Int32" />
                <asp:Parameter Name="original_ProName" Type="String" />
                <asp:Parameter Name="original_ProImage" Type="String" />
                <asp:Parameter Name="original_ProDescription" Type="String" />
                <asp:Parameter Name="original_MinmumBiddingAmount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_StartingDate" />
                <asp:Parameter DbType="Date" Name="original_EndingDate" />
                <asp:Parameter Name="original_AdminID" Type="Int32" />
                <asp:Parameter Name="original_CID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProName" Type="String" />
                <asp:Parameter Name="ProImage" Type="String" />
                <asp:Parameter Name="ProDescription" Type="String" />
                <asp:Parameter Name="MinmumBiddingAmount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="StartingDate" />
                <asp:Parameter DbType="Date" Name="EndingDate" />
                <asp:Parameter Name="AdminID" Type="Int32" />
                <asp:Parameter Name="CID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProName" Type="String" />
                <asp:Parameter Name="ProImage" Type="String" />
                <asp:Parameter Name="ProDescription" Type="String" />
                <asp:Parameter Name="MinmumBiddingAmount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="StartingDate" />
                <asp:Parameter DbType="Date" Name="EndingDate" />
                <asp:Parameter Name="AdminID" Type="Int32" />
                <asp:Parameter Name="CID" Type="Int32" />
                <asp:Parameter Name="original_ProID" Type="Int32" />
                <asp:Parameter Name="original_ProName" Type="String" />
                <asp:Parameter Name="original_ProImage" Type="String" />
                <asp:Parameter Name="original_ProDescription" Type="String" />
                <asp:Parameter Name="original_MinmumBiddingAmount" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_StartingDate" />
                <asp:Parameter DbType="Date" Name="original_EndingDate" />
                <asp:Parameter Name="original_AdminID" Type="Int32" />
                <asp:Parameter Name="original_CID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <p class="auto-style6">
        &nbsp;</p>
        <p class="auto-style6">
            &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="+" />
        </p>
    <p class="auto-style6">
        <asp:DataList ID="DataList2" runat="server" DataKeyField="ProID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bid] WHERE [BidID] = @original_BidID AND (([ProID] = @original_ProID) OR ([ProID] IS NULL AND @original_ProID IS NULL)) AND (([BidderID] = @original_BidderID) OR ([BidderID] IS NULL AND @original_BidderID IS NULL)) AND (([BiddingAmount] = @original_BiddingAmount) OR ([BiddingAmount] IS NULL AND @original_BiddingAmount IS NULL))" InsertCommand="INSERT INTO [Bid] ([ProID], [BidderID], [BiddingAmount]) VALUES (@ProID, @BidderID, @BiddingAmount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bid] WHERE ([ProID] = @ProID)" UpdateCommand="UPDATE [Bid] SET [ProID] = @ProID, [BidderID] = @BidderID, [BiddingAmount] = @BiddingAmount WHERE [BidID] = @original_BidID AND (([ProID] = @original_ProID) OR ([ProID] IS NULL AND @original_ProID IS NULL)) AND (([BidderID] = @original_BidderID) OR ([BidderID] IS NULL AND @original_BidderID IS NULL)) AND (([BiddingAmount] = @original_BiddingAmount) OR ([BiddingAmount] IS NULL AND @original_BiddingAmount IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_BidID" Type="Int32" />
                <asp:Parameter Name="original_ProID" Type="Int32" />
                <asp:Parameter Name="original_BidderID" Type="Int32" />
                <asp:Parameter Name="original_BiddingAmount" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProID" Type="Int32" />
                <asp:Parameter Name="BidderID" Type="Int32" />
                <asp:Parameter Name="BiddingAmount" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DataList1" Name="ProID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProID" Type="Int32" />
                <asp:Parameter Name="BidderID" Type="Int32" />
                <asp:Parameter Name="BiddingAmount" Type="Decimal" />
                <asp:Parameter Name="original_BidID" Type="Int32" />
                <asp:Parameter Name="original_ProID" Type="Int32" />
                <asp:Parameter Name="original_BidderID" Type="Int32" />
                <asp:Parameter Name="original_BiddingAmount" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </p>
    </form>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
</body>
</html>
