<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account2.aspx.cs" Inherits="project.account2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .hr-style {
    border: none;
    border-top: 2px solid black;
}
        .textbox-style {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
 .submit-button {
    background-color: #000000; /* Black */
    border: none;
    color: #FFFFFF; /* White */
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 4px;
}

        .auto-style1 {
            width: 100%;
            height: 427px;
        }
        .auto-style2 {
            width: 415px;
        }
        .auto-style3 {
            width: 444px;
            text-align: center;
        }
        .auto-style4 {
            width: 441px;
        }
        .auto-style5 {
            width: 444px;
            text-align: center;
            height: 170px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
            width: 415px;
            height: 170px;
        }
        .auto-style8 {
            width: 441px;
            height: 170px;
        }
        .auto-style18 {
            width: 100%;
        }

        .auto-style19 {
            height: 90px;
            text-align: left;
        }
        .auto-style20 {
            width: 415px;
            height: 46px;
        }
        .auto-style21 {
            width: 444px;
            height: 46px;
            text-align: center;
        }
        .auto-style22 {
            width: 441px;
            height: 46px;
        }
        .auto-style23 {
            width: 415px;
            height: 52px;
        }
        .auto-style24 {
            width: 444px;
            height: 52px;
            text-align: center;
        }
        .auto-style25 {
            width: 441px;
            height: 52px;
        }

        .auto-style26 {
            border-top: 2px solid black;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            margin-top: 55px;
            margin-bottom: 0px;
        }

        .auto-style42 {
            width: 415px;
            height: 66px;
        }
        .auto-style43 {
            width: 444px;
            height: 66px;
            text-align: center;
        }
        .auto-style44 {
            width: 441px;
            height: 66px;
        }
        .auto-style45 {
            width: 415px;
            height: 44px;
        }
        .auto-style46 {
            width: 444px;
            height: 44px;
            text-align: center;
        }
        .auto-style47 {
            width: 441px;
            height: 44px;
        }
        .auto-style48 {
            width: 415px;
            height: 77px;
        }
        .auto-style49 {
            width: 444px;
            height: 77px;
            text-align: center;
        }
        .auto-style50 {
            width: 441px;
            height: 77px;
        }

        .auto-style51 {
            width: 415px;
            height: 53px;
        }
        .auto-style52 {
            width: 444px;
            height: 53px;
            text-align: center;
        }
        .auto-style53 {
            width: 441px;
            height: 53px;
        }
        .auto-style54 {
            width: 415px;
            height: 57px;
        }
        .auto-style55 {
            width: 444px;
            height: 57px;
            text-align: center;
        }
        .auto-style56 {
            width: 441px;
            height: 57px;
        }
        .auto-style57 {
            width: 415px;
            height: 42px;
        }
        .auto-style58 {
            width: 444px;
            height: 42px;
            text-align: center;
        }
        .auto-style59 {
            width: 441px;
            height: 42px;
        }

        .auto-style60 {
            border-width: 0px;
            width: 69%;
            height: 162px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <a href="HomePage.aspx">
                    <img alt="logo" class="auto-style60" src="img/logo.png" /></a></td>
                <td class="auto-style5">
                    <h2>Create Account</h2>
                    <p class="auto-style6">
                        Already registered?&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/Login.aspx"> Log In</asp:HyperLink>
                    </p>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">UserName:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">First Name:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBox2" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter your first name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style59"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">last name:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style55">
                    <asp:TextBox ID="TextBox4" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="please enter your last name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style56"></td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24">Password:</td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52">
                    <asp:TextBox ID="TextBox3" runat="server" Width="372px" CssClass="textbox-style" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style53"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21">
                    Email:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43">
                    <asp:TextBox ID="TextBox5" runat="server" Width="372px" CssClass="textbox-style" TextMode="Email"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="please enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="it should be in this format user@gmail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    Date Of Birth:</td>
                <td class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style49">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox-style" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="please enter your date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" CssClass="submit-button" Text="Sign up" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    <table class="auto-style18">
        <tr>
            <td class="auto-style19"><hr class="auto-style26" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Email support:"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Care@PlateAuction.com"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Copyright© 2024 Plate Auction. All rights reserved."></asp:Label>
&nbsp;&nbsp;<br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Bidder] WHERE [BidderID] = @original_BidderID AND [BUsername] = @original_BUsername AND [BPassword] = @original_BPassword AND [BFname] = @original_BFname AND [BLname] = @original_BLname AND [BEmail] = @original_BEmail AND [DOB] = @original_DOB" InsertCommand="INSERT INTO [Bidder] ([BUsername], [BPassword], [BFname], [BLname], [BEmail], [DOB]) VALUES (@BUsername, @BPassword, @BFname, @BLname, @BEmail, @DOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bidder]" UpdateCommand="UPDATE [Bidder] SET [BUsername] = @BUsername, [BPassword] = @BPassword, [BFname] = @BFname, [BLname] = @BLname, [BEmail] = @BEmail, [DOB] = @DOB WHERE [BidderID] = @original_BidderID AND [BUsername] = @original_BUsername AND [BPassword] = @original_BPassword AND [BFname] = @original_BFname AND [BLname] = @original_BLname AND [BEmail] = @original_BEmail AND [DOB] = @original_DOB">
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
                        <asp:ControlParameter ControlID="TextBox1" Name="BUsername" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="BPassword" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox3" Name="BFname" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox4" Name="BLname" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox5" Name="BEmail" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox6" DbType="Date" Name="DOB" PropertyName="Text" />
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
                &nbsp;&nbsp;&nbsp;&nbsp; <br /></td>
        </tr>
    </table>
    </form>
    </body>
</html>