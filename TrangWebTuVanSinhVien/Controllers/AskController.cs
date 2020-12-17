using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TrangWebTuVanSinhVien.Models;

namespace TrangWebTuVanSinhVien.Controllers
{
    public class AskController : Controller
    {
        // GET: Ask
        public int ID;
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Ask()
        {
            using(var db = new DBTuVanSinhVien())
            {
                var ls = from u in db.FIELDs
                         select u.NameOfField;
                ViewBag.listfield = ls.ToList();
                
            }
            
            return View();
        }

        [HttpPost]
        public ActionResult Ask(FormCollection q)
        {
            using (var db = new DBTuVanSinhVien())
            {

                int id = (int)HttpContext.Session["IDUser"];
                string field = q["dropdownlist"];
                var f = (from u in db.FIELDs
                         where u.NameOfField == field
                         select u.IDField).FirstOrDefault();
                QUESTIONNOTCHECK qn = new QUESTIONNOTCHECK();
                qn.IDField = (int)(f);
                qn.IDUser = id;
                qn.Checked = false;


                var s = (from u in db.STUDENTs
                     where u.IDUser == id
                     select u.IDStu).FirstOrDefault();
                qn.IDStu = (int)(s);
                qn.Question = q["askcontent"];
                db.QUESTIONNOTCHECKs.Add(qn);
                db.SaveChanges();



            }
            return RedirectToAction("Ask", "Ask");
        }
    }
}