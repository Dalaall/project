<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="project.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    profile page:
<table class="auto-style1">
            <tr>
                <td class="auto-style2">history:<br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BidID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="BidID" HeaderText="BidID" ReadOnly="True" SortExpression="BidID" />
                            <asp:BoundField DataField="ProID" HeaderText="ProID" SortExpression="ProID" />
                            <asp:BoundField DataField="BidderID" HeaderText="BidderID" SortExpression="BidderID" />
                            <asp:BoundField DataField="BiddingAmount" HeaderText="BiddingAmount" SortExpression="BiddingAmount" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bid] WHERE [BidID] = @original_BidID AND [ProID] = @original_ProID AND [BidderID] = @original_BidderID AND [BiddingAmount] = @original_BiddingAmount" InsertCommand="INSERT INTO [Bid] ([BidID], [ProID], [BidderID], [BiddingAmount]) VALUES (@BidID, @ProID, @BidderID, @BiddingAmount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bid] WHERE ([BidderID] = @BidderID)" UpdateCommand="UPDATE [Bid] SET [ProID] = @ProID, [BidderID] = @BidderID, [BiddingAmount] = @BiddingAmount WHERE [BidID] = @original_BidID AND [ProID] = @original_ProID AND [BidderID] = @original_BidderID AND [BiddingAmount] = @original_BiddingAmount">
                        <DeleteParameters>
                            <asp:Parameter Name="original_BidID" Type="Int32" />
                            <asp:Parameter Name="original_ProID" Type="Int32" />
                            <asp:Parameter Name="original_BidderID" Type="Int32" />
                            <asp:Parameter Name="original_BiddingAmount" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BidID" Type="Int32" />
                            <asp:Parameter Name="ProID" Type="Int32" />
                            <asp:Parameter Name="BidderID" Type="Int32" />
                            <asp:Parameter Name="BiddingAmount" Type="Decimal" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="BidderID" PropertyName="SelectedValue" Type="Int32" />
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
                </td>
                <td>personal information:<br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="BidderID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="BidderID" HeaderText="BidderID" ReadOnly="True" SortExpression="BidderID" />
                            <asp:BoundField DataField="BUsername" HeaderText="BUsername" SortExpression="BUsername" />
                            <asp:BoundField DataField="BPassword" HeaderText="BPassword" SortExpression="BPassword" />
                            <asp:BoundField DataField="BFname" HeaderText="BFname" SortExpression="BFname" />
                            <asp:BoundField DataField="BLname" HeaderText="BLname" SortExpression="BLname" />
                            <asp:BoundField DataField="BEmail" HeaderText="BEmail" SortExpression="BEmail" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bidder] WHERE [BidderID] = @original_BidderID AND [BUsername] = @original_BUsername AND [BPassword] = @original_BPassword AND [BFname] = @original_BFname AND [BLname] = @original_BLname AND [BEmail] = @original_BEmail AND [DOB] = @original_DOB" InsertCommand="INSERT INTO [Bidder] ([BidderID], [BUsername], [BPassword], [BFname], [BLname], [BEmail], [DOB]) VALUES (@BidderID, @BUsername, @BPassword, @BFname, @BLname, @BEmail, @DOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bidder]" UpdateCommand="UPDATE [Bidder] SET [BUsername] = @BUsername, [BPassword] = @BPassword, [BFname] = @BFname, [BLname] = @BLname, [BEmail] = @BEmail, [DOB] = @DOB WHERE [BidderID] = @original_BidderID AND [BUsername] = @original_BUsername AND [BPassword] = @original_BPassword AND [BFname] = @original_BFname AND [BLname] = @original_BLname AND [BEmail] = @original_BEmail AND [DOB] = @original_DOB">
                        <DeleteParameters>
                            <asp:Parameter Name="original_BidderID" Type="Int32" />
                            <asp:Parameter Name="original_BUsername" Type="String" />
                            <asp:Parameter Name="original_BPassword" Type="String" />
                            <asp:Parameter Name="original_BFname" Type="String" />
                            <asp:Parameter Name="original_BLname" Type="String" />
                            <asp:Parameter Name="original_BEmail" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DOB" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BidderID" Type="Int32" />
                            <asp:Parameter Name="BUsername" Type="String" />
                            <asp:Parameter Name="BPassword" Type="String" />
                            <asp:Parameter Name="BFname" Type="String" />
                            <asp:Parameter Name="BLname" Type="String" />
                            <asp:Parameter Name="BEmail" Type="String" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BUsername" Type="String" />
                            <asp:Parameter Name="BPassword" Type="String" />
                            <asp:Parameter Name="BFname" Type="String" />
                            <asp:Parameter Name="BLname" Type="String" />
                            <asp:Parameter Name="BEmail" Type="String" />
                            <asp:Parameter DbType="Date" Name="DOB" />
                            <asp:Parameter Name="original_BidderID" Type="Int32" />
                            <asp:Parameter Name="original_BUsername" Type="String" />
                            <asp:Parameter Name="original_BPassword" Type="String" />
                            <asp:Parameter Name="original_BFname" Type="String" />
                            <asp:Parameter Name="original_BLname" Type="String" />
                            <asp:Parameter Name="original_BEmail" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DOB" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
        </table>
</asp:Content>
