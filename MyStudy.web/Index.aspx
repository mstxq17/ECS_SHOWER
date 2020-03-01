<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron">
            <p>Welcom User, thanks to visit my page,please enjoy it, show your website.</p>
            <em>- xq17.2020.2.19</em>
        </div>
        <div class="page-header">
            <h1>Website</h1>
        </div>
        <div class="row table-responsive">
            <div class="col-md-12">
                <table class="table table-bordered table-hover" id="mytable">
                    <thread>
                        <tr>
                            <th>id</th>
                            <th>网址</th>
                            <th>学号</th>
                            <th>姓名</th>
                        </tr>
                    </thread>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="http://111.230.197.23/">http://111.230.197.23/</a></td>
                            <td>20174390113</td>
                            <td>xq17</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

