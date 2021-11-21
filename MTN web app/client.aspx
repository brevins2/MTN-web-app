<%@ Page Title="" Language="C#" MasterPageFile="~/MTN.Master" AutoEventWireup="true" CodeBehind="client.aspx.cs" Inherits="MTN_web_app.client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
        font-size: large;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        height: 27px;
    }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
            width: 13px;
        }
    .auto-style10 {
        height: 27px;
        width: 152px;
            text-align: right;
        }
    .auto-style11 {
        height: 26px;
        text-align: right;
        width: 152px;
    }
    .auto-style12 {
        width: 152px;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        height: 26px;
        text-align: center;
    }
    .auto-style15 {
        height: 27px;
        text-align: center;
    }
        .auto-style16 {
            height: 27px;
            width: 13px;
        }
        .auto-style17 {
            width: 13px;
        }
    .auto-style18 {
        text-align: center;
        font-size: large;
        width: 645px;
        height: 47px;
    }
        .auto-style19 {
            width: 152px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="height: 308px">
    <tr>
        <td class="auto-style18" colspan="5"><strong>Client Form</strong></td>
    </tr>
    <tr>
        <td class="auto-style16"></td>
        <td class="auto-style10">RegNo</td>
        <td class="auto-style15">
            <asp:TextBox ID="a" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7"></td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style11">Client Name</td>
        <td class="auto-style14">
            <asp:TextBox ID="b" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style6"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style19">Subscriber Contact</td>
        <td class="auto-style13">
            <asp:TextBox ID="c" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style19">Item Bought</td>
        <td class="auto-style13">
            <asp:DropDownList ID="d" runat="server" Height="38px" style="margin-left: 0px" Width="199px">
                <asp:ListItem>Modem</asp:ListItem>
                <asp:ListItem>Printer</asp:ListItem>
                <asp:ListItem>Computer</asp:ListItem>
                <asp:ListItem>Moniter</asp:ListItem>
                <asp:ListItem>RAM</asp:ListItem>
                <asp:ListItem>Hard disk</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style19">Amount Paid</td>
        <td class="auto-style13">
            <asp:TextBox ID="f" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style19">Date Of Registration</td>
        <td class="auto-style13">
            <asp:TextBox ID="ii" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style8">
            <br/><br/>
            <asp:Button ID="cmdsave" runat="server" Text="Submit" OnClick="cmdsave_Click" Width="60px" />
            <asp:Button ID="cmddelete" runat="server" Text="Delete" OnClick="cmddelete_Click" />
            <asp:Button ID="cmdclear" runat="server" Text="Clear" OnClick="cmdclear_Click" />
            <asp:Button ID="cmdupdate" runat="server" Text="Update" OnClick="cmdupdate_Click" />
            <asp:Button ID="cmdviewdata" runat="server" Text="View Data" OnClick="cmdviewdata_Click" Width="81px" style="margin-left: 5px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13" colspan="5">Copy Right @ 2021 mtn Group of Companies</td>
    </tr>
</table>
</asp:Content>
