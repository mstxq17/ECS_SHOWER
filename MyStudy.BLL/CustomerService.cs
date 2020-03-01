using MyStudy.DAL;//引用MyStudy.DAL数据访问层
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyStudy.BLL
{
    public class CustomerService
    {
        MyStudyDataContext db = new MyStudyDataContext();
        /// <summary>
        /// 检查登录
        /// </summary>
        /// <param name="name">用户名</param>
        /// <param name="password">密码</param>
        /// <returns>正确返回用户id， 错误返回0</returns>
        public int CheckLogin(string stuno, string password)
        {
            Users user = (from c in db.Users
                          where c.StuNumber == stuno && c.Password == password
                          select c).FirstOrDefault();
            if (user != null)
            {
                return user.UserId;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 修改用户Id对应用户的密码
        /// </summary>
        /// <param name="customerId">用户Id</param>
        /// <param name="password">新密码</param>
        public void ChangePassword(int customerId, string password)
        {
            Users user = (from c in db.Users
                          where c.UserId == customerId
                          select c).First();
            user.Password = password;
            db.SubmitChanges();
        }
    }
}
