using ADMINContext;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminLoginController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        // GET: AdminLogin
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(string tendn,string pass)
        {
            Stopwatch watch = new Stopwatch();
            watch.Start();
            Thread.Sleep(3000);
            watch.Stop();
            var nv = _db.PROCDANGNHAPNV(tendn, pass).SingleOrDefault();
            if (nv != null)
            {
                Session["NHANVIEN"] = nv;
                Session["TENNV"] = nv.TENNHANVIEN;
                Session["ANHNV"] = nv.ANHDAIDIEN;
                return RedirectToAction("Index", "AdminHome");
            }
            else
            {
                ViewBag.Thongbao = "Đăng nhập thất bại";
                return View("Index");
            }
        }
        public ActionResult Logout()
        {
            Session["NHANVIEN"] = null;
            return View("Index");
        }
        public ActionResult CheckLoginPage()
        {
            //if (Session["NHANVIEN"] == null || Session["NHANVIEN"].ToString() == "")
            //{
            //    return View("Index");
            //}
            return PartialView();
        }
    }
}