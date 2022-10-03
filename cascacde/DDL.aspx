<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDL.aspx.cs" Inherits="Dropdownsum.DDL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
            <table>
                
                <tr>
                    <td>Country :</td>
                    <td>
                        <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="true" DataValueField="cid" DataTextField="cname" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>State :</td>
                    <td>
                        <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="true" DataValueField="sid" DataTextField="sname" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                
                <tr>
                    <td>City :</td>
                    <td>
                        <asp:DropDownList ID="ddlcity" runat="server" DataValueField="ctid" DataTextField="ctname"></asp:DropDownList></td>
                </tr>
                
            </table>

        </div>
    </form>
</body>
</html>
