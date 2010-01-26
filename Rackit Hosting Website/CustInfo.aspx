<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustInfo.aspx.cs" Inherits="CustInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat=server>
    <td>
        <table style="width:100%;">
            <tr>
                <td style="width: 100%" colspan=2>
                    <center style="height: 52px"> <font size = +1>Before you leave we need some 
                        information to make your profile. This will allow you to access the website&#39;s 
                        features. </font> </center>
                    
                </td>
                <td>
                </td>
                
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lbl" runat="server" Text="Last Name:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblUsername" runat="server" Text="User Name:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblCity" runat="server" Text="City:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 128px">
                    <asp:Label ID="lblState" runat="server" Text="State:" Font-Size=Medium></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </td>
</form>
</asp:Content>

