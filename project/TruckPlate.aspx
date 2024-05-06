<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="TruckPlate.aspx.cs" Inherits="project.TruckPlate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <div class="auto-style3">
        <span class="auto-style2">TRUCKS PLATES</span>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
            height: 70px;
        }
        .auto-style4 {
            width: 487px;
        }
        .auto-style5 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style6 {
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            margin-left: 61px;
        }
    </style>
</head>
<body>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="TId" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="1423px" CssClass="auto-style6" Height="269px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl='<%# Eval("image") %>' Width="209px" />
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
                                <asp:Label ID="Label2" runat="server" Text="Unique plate, the bidding start from2000SAR"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        <table class="auto-style5">
            <tr>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Price" DataValueField="Price" Height="40px" Width="255px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Price" DataValueField="Price" Height="40px" Width="255px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="auto-style7" DataSourceID="SqlDataSource2" DataTextField="Price" DataValueField="Price" Height="40px" Width="255px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Trucks plate] WHERE [TId] = @original_TId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" InsertCommand="INSERT INTO [Trucks plate] ([TId], [Price], [image]) VALUES (@TId, @Price, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Trucks plate]" UpdateCommand="UPDATE [Trucks plate] SET [Price] = @Price, [image] = @image WHERE [TId] = @original_TId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TId" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TId" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="original_TId" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Trucks plate] WHERE [TId] = @original_TId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))" InsertCommand="INSERT INTO [Trucks plate] ([TId], [Price], [image]) VALUES (@TId, @Price, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Trucks plate]" UpdateCommand="UPDATE [Trucks plate] SET [Price] = @Price, [image] = @image WHERE [TId] = @original_TId AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_TId" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TId" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="original_TId" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

</asp:Content>
