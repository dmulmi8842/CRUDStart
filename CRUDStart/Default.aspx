<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDStart._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align:"center"> Student Info Manage Form</div>
        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">Student ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">Student Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">Address</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>The Netherlands</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">Age</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">Contact</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Insert" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 275px">&nbsp;</td>
                <td class="modal-sm" style="width: 175px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" style="margin-right: 5px" Width="675px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br/>

    </div>

</asp:Content>
