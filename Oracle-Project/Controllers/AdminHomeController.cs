using ADMINContext;
using Devart.Data.Linq;
using Devart.Data.Oracle;
using FastMember;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Oracle_Project.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminHomeController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        MyOracle ora = new MyOracle();
        // GET: AdminHome
        public ActionResult Index()
        {
            //var _db = new Models.DatabaseEntities();
            ViewBag.TTG = _db.GETTTGDDH();
            ViewBag.KH = _db.GETKHORDER();
            ViewBag.SLDH = _db.GETSLDH();
            ViewBag.SLSP = _db.GETSLSP();
            ViewBag.SLHANGBAN = _db.GETSLHANGBAN();
            ViewBag.DTKH = _db.GETTTGDDH() / _db.GETKHORDER();
            //var aa = ora.ExecuteTableValuedFunction("SP_THEO_URL", null);
            return View();
        }
        public ActionResult HomeMenu()
        {
            return PartialView();
        }

        public ActionResult Ds5DonHang()
        {
            var dsDH = ora.ExecuteTableValuedFunctionNoParameter("DS_5DONHANG_MOI");
            string result = JsonConvert.SerializeObject(dsDH, Formatting.None);
            JArray aaa = JArray.Parse(result);
            ViewBag.dsDH = aaa;
            return PartialView();
        }
        public ActionResult Ds6BanChay()
        {
            return PartialView(_db.PROCDS6SPBANCHAY().ToList());
        }

        public ContentResult ThongKeLoai()
        {
            var res = _db.PROCTHONGKELOAI().ToList();
            return Content(JsonConvert.SerializeObject(res));
        }
        public ContentResult ThongKeDH_NV()
        {
            var res = _db.PROCTKHDNV().ToList();
            return Content(JsonConvert.SerializeObject(res));
        }





        // GET: AdminHome/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: AdminHome/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AdminHome/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: AdminHome/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: AdminHome/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: AdminHome/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: AdminHome/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
