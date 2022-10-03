<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dynamicddl.aspx.cs" Inherits="Dropdownsum.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script>
$(document).ready(function () {    
 
    $('#txtNum').keypress(function (e) {    
    
                var charCode = (e.which) ? e.which : event.keyCode    
      if(charCode != 13)
        if (String.fromCharCode(charCode).match(/[^0-9]/g)) {
            $("#lblSum").text("Enter Only Number");
            $('#txtNum').val("");
            return false;
            }
      
    
    });    

    $("#btnSum").click(function () {
  
        var count = $('#txtNum').val();
       
        if (count == "" || count <= 0) {
            $("#lblSum").text("Enter number above 0.");
            return;
        }
        else {
            var i, sum = 0;
            for (i = 0; i < count; i++) {
                sum = sum + parseInt($('#ddl_' + i).val());
              
            }
            $("#lblSum").text("The Sum is :"+sum);
            return false;
        }
    });

    $("#btnShow").click(function () {
        var count = $('#txtNum').val();
        $('#tbllist').empty();
        if (count == "" || count <= 0) {
            alert("Enter number to generate Drop Down");
            return;
        }
    
      
    });

        });
    </script>
    <style>
        th, td {
  padding: 30px;
}
    </style>

</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1">
        <div>
            <table>
                <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"> Enter Only Numbers : </asp:Label>
                    <asp:TextBox ID="txtNum" ClientIDMode="Static" runat="server"></asp:TextBox></td>
                 <td>
                     <asp:Label ID="lblSum" runat="server" Text=""></asp:Label>
                 </td>
                        <td>
              <asp:Button ID="btnShow" runat="server" Text="Generate DDL"  ClientIDMode="Static"  OnClick="btnShow_Click" />
                    </td>

                    <td>
              <asp:Button ID="btnSum" runat="server" Text="Find Sum"  ClientIDMode="Static" />
                    </td>
                     
                </tr>
            </table>
            <div id="tbllist" runat="server">

        </div>
            </div>
    </form>
</body>
</html>
