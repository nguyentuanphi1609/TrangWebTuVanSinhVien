using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TrangWebTuVanSinhVien.Models;

namespace TrangWebTuVanSinhVien.Controllers
{
    public class DangNhapController : Controller
    {
        // GET: DangNhap
        

        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(USER u)
        {
            int id = 1;
            USER x = new USER();
            using (var db = new DBTuVanSinhVien())
            {
                id = (from i in db.USERS
                      where i.Email == u.Email
                      select i.IDUser).FirstOrDefault();

                HttpContext.Session.Add("IDUser", id);

                var permiss = (from k in db.USERS
                               where k.IDUser == id
                               select k.Permission).FirstOrDefault();

                switch ((int)permiss)
                {
                    case 1: return RedirectToAction("Ask", "Ask");
                    case 2: return RedirectToAction("Manager", "Manager");
                    case 3: return RedirectToAction("Answer", "Answer");
                }

            }


            return RedirectToAction("Ask", "Ask");
            
            
        }

       
    }
}