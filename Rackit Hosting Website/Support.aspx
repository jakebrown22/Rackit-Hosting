<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Support" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

    <td>

<table width="600" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#cccccc">
<tr>
<td width="100" align="right" bgcolor="#eeeeee" class="header1"><b>To</b></td>
<td bgcolor="#FFFFFF">
    <asp:Label ID="lblAdmin" runat="server" Text="Administrator "></asp:Label>
                                        </td>
</tr>
<tr>
<td width="100" align="right" bgcolor="#eeeeee" class="header1"> <b>Subject</b></td>
<td bgcolor="#FFFFFF"><asp:TextBox ID="txtSubject" runat="server" Columns="50"></asp:TextBox></td>
</tr>
<tr>
<td width="100" align="right" bgcolor="#eeeeee" class="header1"> <b>Body</b></td>
<td bgcolor="#FFFFFF"><asp:TextBox ID="txtBody" runat="server" Columns="40" TextMode="MultiLine"></asp:TextBox></td>
</tr>
<tr>
<td align="right" bgcolor="#eeeeee" class="header1"><b>Action</b></td>
<td bgcolor="#FFFFFF"><asp:Button ID="btnSubmit" runat="server" Text="Send Email" OnClick="btnSubmit_Click" /></td>
</tr>
<tr>
<td width="100" align="right" bgcolor="#eeeeee" class="header1">Status</td>
<td bgcolor="#FFFFFF" class="basix"><asp:Literal ID="litStatus" runat="server"></asp:Literal></td>
</tr>
</table>
    </td>
    </form>
</asp:Content>

