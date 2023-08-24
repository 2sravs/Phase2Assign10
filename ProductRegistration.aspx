<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="WebAppThree.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">       
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 274px;
        }
        </style>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
                <div class="col-md-4"><asp:Image runat="server" ID="Images" ImageUrl="~/Images/P2.jpg.jpg"
                    width="600" Height="400" CssClass="img-fluid" /></div>
            </div>
        <div class="col-md-4">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Product Name</td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Name" ForeColor="#CC0000" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Category</td>
                    <td>
                        <asp:DropDownList ID="Category" runat="server" Height="63px" Width="235px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select one Category" ForeColor="Red" ControlToValidate="Category"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Price</td>
                    <td>
                        <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Price is required" ControlToValidate="Price" ForeColor="Red" MaximumValue="9000" MinimumValue="900"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Description</td>
                    <td>
                        <asp:TextBox ID="TxtDesc" runat="server" Height="108px" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Description is Required " ForeColor="Red" ControlToValidate="TxtDesc"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Release Date</td>
                    <td>
                        <asp:Calendar ID="Date" runat="server" ForeColor="#990033" ShowGridLines="True"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Register" runat="server" Text="Register" />
                    </td>
                </tr>
            </table>
        </div>
       
        <div>
            <asp:Label ID="LblInfo" runat="server" Text="LblInfo"></asp:Label>
        </div>
    </form>
</body>
</html>
