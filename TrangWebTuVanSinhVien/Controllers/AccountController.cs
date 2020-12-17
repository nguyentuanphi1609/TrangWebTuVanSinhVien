using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TrangWebTuVanSinhVien.Models;

namespace TrangWebTuVanSinhVien.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TrangChu()
        {
            return View();
        }

        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]

        public ActionResult DangKy(USER u, string sex)
        {
            using ( var db = new DBTuVanSinhVien()){
                var x = from i in db.USERS
                        where i.Email == u.Email
                        select i.IDUser;
                if(x.Count() == 0)
                {

                    if (sex == "Nam")
                        u.Sex = true;
                    else
                        u.Sex = false;
                    u.Permission = 1;
                    db.USERS.Add(u);
                    STUDENT st = new STUDENT();
                    st.IDUser = u.IDUser;
                    db.STUDENTs.Add(st);
                    db.SaveChanges();
                    ViewBag.message = "Đăng ký thành công";
                }
                else
                {
                    ViewBag.message = "Email đã được sử dụng";
                    return View("DangKy", u);
                }
            }

            return View();
        }



        
        
    }


}