<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U1S3E2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
        <div class="card bg-light">
            <div class="card-body">
                <h1 class="card-title text-dark">Login Utente</h1>
                
                <div class="form-group">
                    <asp:Label ID="label_user" runat="server" Text="Inserisci il tuo username" CssClass="control-label"></asp:Label>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <asp:Label ID="label_pswd" runat="server" Text="Inserisci la tua password" CssClass="control-label"></asp:Label>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                
                <asp:Button ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click" CssClass="btn btn-primary my-3 fw-bold" />
            </div>
        </div>
       
    </main>

</asp:Content>
