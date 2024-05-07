<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project._222" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        
        .auto-style32 {
            width: 280%;
            height: 427px;
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

        .auto-style33 {
        width: 149%;
        }
    .auto-style36 {
        width: 37px;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style32" style="width: 100%">
    <tr>
        <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style36">
            <h2><strong><em>Login</em></strong></h2>
            <p class="auto-style33">
                        sign in to continue</p>
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style20"></td>
        <td class="auto-style21">UserName:</td>
        <td class="auto-style22"></td>
    </tr>
    <td class="auto-style12"></td>
    <td class="auto-style13">
        <asp:TextBox ID="TextBox1" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
        <strong>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style31" Display="Dynamic" ErrorMessage="please enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
        </strong>
    </td>
    <td class="auto-style14">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style24">Password:</td>
        <td class="auto-style25"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style28">
            <asp:TextBox ID="TextBox2" runat="server" Width="372px" CssClass="textbox-style" TextMode="Password"></asp:TextBox>
            <strong>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style31" Display="Dynamic" ErrorMessage="please enter your Password " ForeColor="Red"></asp:RequiredFieldValidator>
            </strong>
        </td>
        <td class="auto-style29">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Text="login" CssClass="submit-button" Height="55px" Width="156px" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
</table>
</asp:Content>
