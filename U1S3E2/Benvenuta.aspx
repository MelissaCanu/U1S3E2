<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Benvenuta.aspx.cs" Inherits="U1S3E2.Benvenuta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Benvenut*</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style>
        .user-details-heading {
            font-size: 2em !important; 
        }
    </style>
</head>
<body>
   <form id="form1" runat="server" >
        <div class="container mt-5">
            <div class="card bg-light">
                <div class="card-body">
                    <asp:Label ID="user_details" runat="server" Text="" CssClass="card-text user-details-heading"></asp:Label>
                    <br />
                    <asp:Button ID="logout_btn" runat="server" Text="Logout" OnClick="logout_btn_Click" CssClass="btn btn-danger my-3" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
