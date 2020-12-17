using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TrangWebTuVanSinhVien.Models;

namespace TrangWebTuVanSinhVien.Controllers
{
    public class AnswerController : Controller
    {
        // GET: Answer
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Answer()
        {
            List<QUESTIONQUEUE> qQ = new List<QUESTIONQUEUE>();
            qQ = getListQuestionQueue();

            return View(qQ);
        }

        public ActionResult Reply(int id)
        {
            QUESTIONANDANSWER qa = new QUESTIONANDANSWER();
            using (var db = new DBTuVanSinhVien())
            {
                var x = (from u in db.QUESTIONQUEUEs
                         where u.QuestionID == id
                         select new { u.Question, u.IDField }).FirstOrDefault();
                qa.QuestionID = id;
                qa.Question = x.Question;
                qa.IDField = x.IDField;
                qa.Answer = ViewBag.answer;

            }

            List<QUESTIONQUEUE> qQ = new List<QUESTIONQUEUE>();
            qQ = getListQuestionQueue();
            return View("Answer",qQ);
        }

        public List<QUESTIONQUEUE> getListQuestionQueue()
        {
            int id = (int)HttpContext.Session["IDUser"];
            List<QUESTIONQUEUE> lst = new List<QUESTIONQUEUE>();
            using (var db = new DBTuVanSinhVien())
            {
                var x = (from u in db.TEACHERs
                         where u.IDUser == id
                         select u.IDField).FirstOrDefault();
                int f = (int)x; // f là idField 

                var list = (from m in db.QUESTIONQUEUEs
                            where m.IDField == f
                            select m);
                lst = list.ToList<QUESTIONQUEUE>();
                return lst;

            }
        }
    }
}