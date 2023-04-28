<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crudoperation.aspx.cs" Inherits="Crudoperationasp.Crudoperation" %>

<!DOCTYPE html>

<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
            height: 377px;
            margin-left: 531px;
            margin-bottom: 1px;
        }
        .auto-style2 {
            width: 139px;
        }
        .auto-style3 {
            width: 139px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
            width: 463px;
        }
        .auto-style5 {
            width: 463px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 align="center" style="background-color:DodgerBlue;">&nbsp;&nbsp; KiaSoft Employees</h1>
        <div>
            <table class="auto-style1" border="1" style="background-color: #CCFFFF">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp; Empid:-</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmpid" runat="server" Width="181px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage=" " runat="server" 
                            ControlToValidate="txtEmpid" SetFocusOnError="True" ForeColor="Red" >*Empid is Mandatory</asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp; Empname:-</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmpname" runat="server" Width="181px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="" runat="server" 
                            ControlToValidate="txtEmpname" SetFocusOnError="True" ForeColor="Red" >*Empname is mandatory</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp; Job:-</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtjob" runat="server" Width="181px" Height="28px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="" runat="server" 
                            ControlToValidate="txtjob" SetFocusOnError="True" ForeColor="Red" >*Job is mandatory</asp:RequiredFieldValidator> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp; Empsalary</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmpsalary" runat="server" Width="181px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="" runat="server" 
                            ControlToValidate="txtEmpsalary" SetFocusOnError="True" ForeColor="Red" >*Empsalary is mandatory</asp:RequiredFieldValidator> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; Empnumber:-</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtEmpnumber" runat="server" Width="181px" Height="25px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="" runat="server" 
                            ControlToValidate="txtEmpnumber" SetFocusOnError="True" ForeColor="Red" >*Empnumber is mandatory</asp:RequiredFieldValidator> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" Width="94px" class="btn btn-success active" Height="34px" OnClick="Button1_Click"/>
                        &nbsp&nbsp
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="94px" class="btn btn-danger active" Height="34px" OnClick="btnDelete_Click"/>
                        <asp:Label ID="lblRes" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" Text="Update" Width="94px" Height="34px" OnClick="btnUpdate_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
