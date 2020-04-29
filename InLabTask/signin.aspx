<%@ Page Language="C#" %>
<%@import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strSelect;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

        if (type.SelectedValue == "Admin")
        {
            strSelect = "SELECT * FROM admin "
               + " WHERE fname = '" + un.Text + "'"
               + " AND pass = '" + pass.Text + "'";
        }
        else if (type.SelectedValue == "Staff")
        {
            strSelect = "SELECT * FROM staff "
               + " WHERE fname = '" + un.Text + "'"
               + " AND pass = '" + pass.Text + "'";
        }
        else
        {
            strSelect = "SELECT * FROM Student "
                + " WHERE fname = '" + un.Text + "'"
                + " AND pass = '" + pass.Text + "'";
        }
        // Create SQL Command
        SqlCommand cmdSELECT = new SqlCommand(strSelect, conn);
        SqlDataReader reader;

        conn.Open();
        reader = cmdSELECT.ExecuteReader();

        if (reader.Read())
        {
            HttpCookie koko = new HttpCookie("userInfo");
            koko.Values.Add("usern", un.Text);
            koko.Values.Add("passw", pass.Text);
            koko.Expires = DateTime.Now.AddDays(3);
            Response.Cookies.Add(koko);

            if (type.SelectedValue == "Admin")
                Response.Redirect("~/adminHome.aspx");
            else if (type.SelectedValue == "Staff")
                Response.Redirect("~/staffHome.aspx");
            else
                Response.Redirect("~/studentHome.aspx");
        }

        else
            lblMsg.Text = "Incoorect Username and/or Password!!";

        conn.Close(); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 509px;
        }
        .auto-style3 {
            width: 115px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Sign In"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="un" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="type" runat="server" Height="20px" Width="126px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem Selected="True">Student</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            </td>
            <td class="auto-style2">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
    </form>
</body>
</html>
