<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Create Connection Object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
        // Create SQL Insert Statement
        string strInsert = "INSERT INTO Student "
            + " VALUES('" + fnamet.Text + "', '"
            + lnamet.Text + "', '"
            + idt.Text + "', '"
            + GList.SelectedValue + "', '"
            + addresst.Text + "', '"
            + emailt.Text + "', '"
            + phonet.Text + "', '"
            + pt.Text + "', '"
            + major.SelectedValue + "', '"
            + bus.SelectedValue + "', '"
            + nationality.SelectedValue + "', '"
            + Calendar1.SelectedDate + "')";

        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        conn.Open();

        cmdInsert.ExecuteNonQuery();

        conn.Close();
    }
</script>

<!DOCTYPE html>

<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            width: 173px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 367px;
            height: 26px;
        }
        .auto-style6 {
            width: 173px;
            height: 26px;
        }
        .auto-style7 {
            width: 139px;
        }
        .auto-style8 {
            height: 26px;
            width: 139px;
        }
        .auto-style9 {
            width: 155px;
        }
        .auto-style10 {
            width: 155px;
            height: 26px;
        }
        .auto-style11 {
            width: 155px;
            height: 56px;
        }
        .auto-style12 {
            width: 367px;
            height: 56px;
        }
        .auto-style13 {
            width: 139px;
            height: 56px;
        }
        .auto-style14 {
            width: 173px;
            height: 56px;
        }
        .auto-style15 {
            height: 56px;
        }
        .auto-style16 {
            width: 155px;
            height: 23px;
        }
        .auto-style17 {
            width: 367px;
            height: 23px;
        }
        .auto-style18 {
            width: 139px;
            height: 23px;
        }
        .auto-style19 {
            width: 173px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            width: 155px;
            height: 41px;
        }
        .auto-style22 {
            width: 367px;
            height: 41px;
        }
        .auto-style23 {
            width: 139px;
            height: 41px;
        }
        .auto-style24 {
            width: 173px;
            height: 41px;
        }
        .auto-style25 {
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="New Student"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="fnamet" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fnamet" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Last name:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="lnamet" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lnamet" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">ID:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="idt" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idt" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                   
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style11">Gender:</td>
                <td class="auto-style12">

                    <asp:RadioButtonList ID="GList" runat="server">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="addresst" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="emailt" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailt" ErrorMessage="*This email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">
                    
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Phone:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="phonet" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="pt" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pt" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Text="Confirm password:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="ppt" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pt" ControlToValidate="ppt" ErrorMessage="*Doesn't match"></asp:CompareValidator>
                </td>
                <td class="auto-style7">
                    
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text="Faculty:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="major" runat="server">
                        <asp:ListItem Value="CS">Computer Science</asp:ListItem>
                        <asp:ListItem Value="E">Engineering</asp:ListItem>
                        <asp:ListItem Value="PS">Political Science</asp:ListItem>
                        <asp:ListItem Value="B">Buisiness</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label10" runat="server" Text="Bus:"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:RadioButtonList ID="bus" runat="server">
                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>        
                </td>
                <td class="auto-style23">
                   
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="Label11" runat="server" Text="Image:"></asp:Label>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label12" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="nationality" runat="server">
                        <asp:ListItem>Egyptian</asp:ListItem>
                        <asp:ListItem>Saudi</asp:ListItem>
                        <asp:ListItem>Russian</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label13" runat="server" Text="Birth date:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Calendar ID="Calendar1" runat="server" Height="106px" SelectedDate="2000-07-26" VisibleDate="2000-07-26"></asp:Calendar>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

