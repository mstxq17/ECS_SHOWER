using MyStudy.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    CustomerService customerSrv = new CustomerService();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int userId = customerSrv.CheckLogin(txtStuno.Text.Trim(), txtPwd.Text.Trim());
            if(userId > 0)
            {
                Session.Clear();
                Session["id"] = userId;
                Session["name"] = txtStuno.Text;
                Response.Redirect("~/Info.aspx");
            }
            else
            {
                //Response.Write("error");
                Response.Write("<script>alert(/用户名或者密码错误！/)</script>");
            }
        }
    }
}