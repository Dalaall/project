<%@ Page Title="" Language="C#" MasterPageFile="~/masterpageauction.Master" AutoEventWireup="true" CodeBehind="CreatAccount.aspx.cs" Inherits="project.CreatAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <!DOCTYPE html>

<html>

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
            width: 414px;
            text-align: center;
        }
        .auto-style4 {
            width: 441px;
        }
        .auto-style5 {
            width: 414px;
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
        .auto-style20 {
        width: 10px;
        height: 46px;
    }
        .auto-style22 {
            width: 779px;
            height: 46px;
        }
        .auto-style23 {
            width: 10px;
            height: 52px;
        }
        .auto-style25 {
            width: 779px;
            height: 52px;
        }

        .auto-style45 {
            width: 10px;
            height: 44px;
        }
        .auto-style47 {
            width: 779px;
            height: 44px;
        }
        .auto-style48 {
            width: 10px;
            height: 77px;
        }
        .auto-style50 {
            width: 779px;
            height: 77px;
        }

        .auto-style51 {
            width: 10px;
            height: 53px;
        }
        .auto-style53 {
            width: 779px;
            height: 53px;
        }
        .auto-style54 {
            width: 10px;
            height: 57px;
        }
        .auto-style56 {
            width: 779px;
            height: 57px;
        }
        .auto-style60 {
            width: 10px;
            height: 80px;
        }
        .auto-style62 {
            width: 779px;
            height: 80px;
        }
        .auto-style63 {
            font-size: x-small;
        }
        .auto-style64 {
            width: 422px;
            height: 46px;
        }
        .auto-style65 {
            width: 422px;
        }
        .auto-style66 {
            width: 422px;
            height: 57px;
        }
        .auto-style67 {
            width: 422px;
            height: 52px;
        }
        .auto-style68 {
            width: 422px;
            height: 53px;
        }
        .auto-style69 {
            width: 422px;
            height: 80px;
        }
        .auto-style70 {
            width: 422px;
            height: 44px;
        }
        .auto-style71 {
            width: 422px;
            height: 77px;
        }
        
        .auto-style72 {
            width: 422px;
            height: 170px;
            text-align: center;
        }
        .auto-style73 {
            width: 422px;
            height: 119px;
            text-align: center;
        }
        .auto-style74 {
            width: 779px;
            height: 170px;
            margin-top: 14px;
            margin-bottom: 0px;
        }
        .auto-style75 {
            height: 119px;
            width: 779px;
        }
        
    .auto-style76 {
        text-align: left;
        width: 10px;
        height: 170px;
    }
    .auto-style77 {
        width: 10px;
        height: 119px;
    }
        
    </style>

<body style="width: 1345px; height: 376px">

        <div>
             <table class="auto-style1">
            <tr>
                <td class="auto-style76">
                    &nbsp;</td>
                <td class="auto-style72">
                    <h2>Create Account</h2>
                    <p class="auto-style6">
                        Already registered? sign in</p>
                </td>
                <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style64">UserName:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style64">
                    <asp:TextBox ID="TextBox1" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" CssClass="auto-style63" Display="Dynamic" ErrorMessage="your name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style64">First Name:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style77"></td>
                <td class="auto-style65">
                    <asp:TextBox ID="TextBox2" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style63" Display="Dynamic" ErrorMessage="please enter your first name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style75">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style64">last name:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox4" runat="server" Width="372px" CssClass="textbox-style"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style63" Display="Dynamic" ErrorMessage="please enter your last name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style56">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style67">Password:</td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style68">
                    <strong>
                    <asp:TextBox ID="TextBox3" runat="server" Width="372px" CssClass="textbox-style" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" CssClass="auto-style63" Display="Dynamic" ErrorMessage=" The Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style53">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style64">
                    Email:</td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style60"></td>
                <td class="auto-style69">
                    <asp:TextBox ID="TextBox5" runat="server" Width="372px" CssClass="textbox-style" TextMode="Email"></asp:TextBox>
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" CssClass="auto-style63" Display="Dynamic" ErrorMessage="E-mail is required!" ForeColor="Red"></asp:RequiredFieldValidator><br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" CssClass="auto-style63" ErrorMessage="write the correct E-mail pattren eg:*****@gmail.com" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                    </strong>
                </td>
                <td class="auto-style62">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style70">
                    Date Of Birth:</td>
                <td class="auto-style47"></td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                    <strong>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox6" CssClass="auto-style63" Display="Dynamic" ErrorMessage="please enter Date of birth!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style50">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style77">&nbsp;</td>
                <td class="auto-style73">
                    <asp:Button ID="Button1" runat="server" CssClass="submit-button" Text="Sign up" />
                </td>
                <td class="auto-style75">&nbsp;</td>
            </tr>
        </table>
        </div>
       
    
    </body>
</html>



</asp:Content>
