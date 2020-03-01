<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="container theme-showcase" role="main">

            <form class="form-signin">
                <h2 class="form-signin-heading">Login</h2>
                <label for="inputName" class="sr-only">学号</label>
                <asp:TextBox ID="txtStuno" runat="server" CssClass="form-control"></asp:TextBox>
                <label for="inputPassword" class="sr-only">密码</label>
                 <asp:TextBox ID="txtPwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="立即登录" OnClick="BtnLogin_Click" />
            </form>
        </div>
    </div>
</asp:Content>

