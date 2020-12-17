using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TrangWebTuVanSinhVien.Models;

namespace TrangWebTuVanSinhVien.Controllers
{
    public class ManagerController : Controller
    {
        // GET: Manager
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Manager()
        {
            List<QUESTIONNOTCHECK> lst = new List<QUESTIONNOTCHECK>();
            lst = getListQuestionNotCheck();

            return View(lst);
            
                
        }

        //[HttpPost, ActionName("Duyet")]
       // [ValidateAntiForgeryToken]
        public ActionResult Duyet(int id)
        {
            QUESTIONQUEUE qQ = new QUESTIONQUEUE();

            DateTime dt = new DateTime();
            dt = DateTime.Today;
            int IDUser = (int)HttpContext.Session["IDUser"];
            
            qQ.DateOfModeration = dt;
            qQ.QuestionID = id;

            using (var db = new DBTuVanSinhVien())
            {
                var x = (from u in db.MANAGERs
                         where u.IDUser == IDUser
                         select u.IDField).FirstOrDefault();
                qQ.IDField = (int)x;

                var y = (from m in db.QUESTIONNOTCHECKs
                         where m.QuestionID == id
                         select new{ m.Question, m.IDUser}).FirstOrDefault();
                qQ.Question = y.Question.ToString();
                qQ.IDUser = y.IDUser;

                db.QUESTIONQUEUEs.Add(qQ);

                QUESTIONNOTCHECK rm = new QUESTIONNOTCHECK();
                rm = (from n in db.QUESTIONNOTCHECKs
                      where n.QuestionID == id
                      select n).FirstOrDefault<QUESTIONNOTCHECK>();
                rm.Checked = true;
                db.SaveChanges();

            }


            List<QUESTIONNOTCHECK> lst = new List<QUESTIONNOTCHECK>();

            lst = getListQuestionNotCheck();
            return View("Manager", lst);
        }

        public List<QUESTIONNOTCHECK> getListQuestionNotCheck()
        {
            int id = (int)HttpContext.Session["IDUser"];
            using (var db = new DBTuVanSinhVien())
            {
                var f = (from u in db.MANAGERs
                         where u.IDUser == id
                         select u.IDField).FirstOrDefault();

                int idField = (int)f;
                var questionQueue = (from x in db.QUESTIONNOTCHECKs
                                     where x.IDField == idField && x.Checked == false
                                     select x);
                var listQuestion = new List<QUESTIONNOTCHECK>();
                listQuestion = questionQueue.ToList<QUESTIONNOTCHECK>();
                return listQuestion;
            }
        }
    }
}