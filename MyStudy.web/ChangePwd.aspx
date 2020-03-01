<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container theme-showcase" role="main">
        <div class="panel panel-default">
            <div class="panel-heading">修改密码</div>
            <div class="panel-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">StuID</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="stuID" placeholder="学号" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputSite" class="col-sm-2 control-label">旧密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="oldPwd" placeholder="旧密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">新密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="newPwd" placeholder="新密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Change</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

