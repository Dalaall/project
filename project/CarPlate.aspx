<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="CarPlate.aspx.cs" Inherits="project.CarPlate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <div class="auto-style3">
        <span class="auto-style4">CAR PLATES</span>
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            height: 114px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 100%;
        }
    </style>
</head>
<body>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CarId" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="1409px">
                <ItemTemplate>
                    <table class="auto-style5">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="87px" ImageUrl='<%# Eval("image") %>' Width="197px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="BID NOW"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="A unique plate, the bidding start from 2000SAR"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="price" DataValueField="price" Height="40px" Width="255px">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CAR PLATES] WHERE [CarId] = @original_CarId AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" InsertCommand="INSERT INTO [CAR PLATES] ([CarId], [price], [image]) VALUES (@CarId, @price, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CAR PLATES]" UpdateCommand="UPDATE [CAR PLATES] SET [price] = @price, [image] = @image WHERE [CarId] = @original_CarId AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_CarId" Type="Int32" />
                            <asp:Parameter Name="original_price" Type="Int32" />
                            <asp:Parameter Name="original_image" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CarId" Type="Int32" />
                            <asp:Parameter Name="price" Type="Int32" />
                            <asp:Parameter Name="image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="price" Type="Int32" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="original_CarId" Type="Int32" />
                            <asp:Parameter Name="original_price" Type="Int32" />
                            <asp:Parameter Name="original_image" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CAR PLATES] WHERE [CarId] = @original_CarId AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" InsertCommand="INSERT INTO [CAR PLATES] ([CarId], [price], [image]) VALUES (@CarId, @price, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CAR PLATES]" UpdateCommand="UPDATE [CAR PLATES] SET [price] = @price, [image] = @image WHERE [CarId] = @original_CarId AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CarId" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarId" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="original_CarId" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

</asp:Content>
