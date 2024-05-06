<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="project.ProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProID] = @original_ProID AND [ProName] = @original_ProName AND [ProImage] = @original_ProImage AND [ProDescription] = @original_ProDescription AND [MinmumBiddingAmount] = @original_MinmumBiddingAmount AND [StartingDate] = @original_StartingDate AND [EndingDate] = @original_EndingDate AND [AdminID] = @original_AdminID AND [CID] = @original_CID" InsertCommand="INSERT INTO [Product] ([ProName], [ProImage], [ProDescription], [MinmumBiddingAmount], [StartingDate], [EndingDate], [AdminID], [CID]) VALUES (@ProName, @ProImage, @ProDescription, @MinmumBiddingAmount, @StartingDate, @EndingDate, @AdminID, @CID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProName] = @ProName, [ProImage] = @ProImage, [ProDescription] = @ProDescription, [MinmumBiddingAmount] = @MinmumBiddingAmount, [StartingDate] = @StartingDate, [EndingDate] = @EndingDate, [AdminID] = @AdminID, [CID] = @CID WHERE [ProID] = @original_ProID AND [ProName] = @original_ProName AND [ProImage] = @original_ProImage AND [ProDescription] = @original_ProDescription AND [MinmumBiddingAmount] = @original_MinmumBiddingAmount AND [StartingDate] = @original_StartingDate AND [EndingDate] = @original_EndingDate AND [AdminID] = @original_AdminID AND [CID] = @original_CID">
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
            <asp:Parameter Name="ProName" Type="String" />
            <asp:Parameter Name="ProImage" Type="Object" />
            <asp:Parameter Name="ProDescription" Type="String" />
            <asp:Parameter Name="MinmumBiddingAmount" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="StartingDate" />
            <asp:Parameter DbType="Date" Name="EndingDate" />
            <asp:Parameter Name="AdminID" Type="Int32" />
            <asp:Parameter Name="CID" Type="Int32" />
        </InsertParameters>
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
</asp:Content>
