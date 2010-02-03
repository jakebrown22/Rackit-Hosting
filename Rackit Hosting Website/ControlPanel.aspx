<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ControlPanel.aspx.cs" Inherits="ControlPanel" Title="Control Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <form id="form1" runat="server">

    <td>
        <table style="width:100%; height: 567px;" visible="false">
        
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            
            <tr>
                <td style="width: 407px">
                    <asp:Label ID="lblResetServer" runat="server" Text="Click the button to the right to reset your server." Font-Size="Small"></asp:Label>

                
                </td>
                    
                <td style="width: 131px">
                
                    <center>
                        <asp:Button ID="btnReset" runat="server" Text="Reset Server" 
                            onclick="btnReset_Click" />
                    </center>
                
                </td>
                    
                <td>
                
                    <asp:Label ID="lblResetResult" runat="server" Text=""></asp:Label>
                
                </td>
                    
            </tr>
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 407px">
                
                    <asp:Label ID="lblCheckStatus" runat="server" Text="Click the button to the right to check your server status." Font-Size="Small"></asp:Label>
                
                </td>
                    
                <td style="width: 131px">
                
                    <center>
                    <asp:Button ID="btnCheckStatus" runat="server" Text="Check Status" />
                    </center>
                
                </td>
                
                <td>
                    
                   <asp:Label ID="lblStatusResult" runat="server" Text=""></asp:Label> 
               </td>
            </tr>
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 407px">
                    &nbsp;</td>
                <td style="width: 131px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 407px; height: 35px;">
                    </td>
                <td style="width: 131px; height: 35px;">
                    </td>
                <td style="height: 35px">
                    </td>
            </tr>
            
        </table>
    </td>



</form>



</asp:Content>

