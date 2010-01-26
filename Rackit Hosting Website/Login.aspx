<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Login" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <td>

<center>
            
            <asp:Login ID="Login1" runat="server" Height="194px" BackColor="#F7F6F3" 
                BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="2px" 
                Font-Names="Verdana" Font-Size="2.0em" ForeColor="#333333" 
            Width="463px" onauthenticate="Login1_Authenticate">
                <TextBoxStyle Font-Size="1.5em" />
                <CheckBoxStyle Font-Size="Medium" />
                <LabelStyle Font-Size="Large"/>
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="1.5em" ForeColor="#284775" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" Font-Size="Large"/>
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                    ForeColor="White" />
            </asp:Login>
    
</center>
    






    </td>
    </form>
    






</asp:Content>

