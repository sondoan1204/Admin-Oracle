using ADMINContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminDonHangController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        // GET: AdminDonHang
        public ActionResult Index()
        {
            var ds = _db.DONDATHANGs.ToList().OrderByDescending(i=>i.NGAYTAODDH);
            return View(ds);
        }
        public ActionResult DSdonhangtheonhanvien()
        {
            NHANVIEN nv = (NHANVIEN)Session["NHANVIEN"];
            var ds = _db.DONDATHANGs.ToList().Where(i=>i.MANHANVIEN == nv.MANHANVIEN).OrderByDescending(i => i.NGAYTAODDH);
            return View("Index",ds);
        }
        public ActionResult menudonhang()
        {
            return PartialView();
        }
        // GET: AdminDonHang/Details/5
        public ActionResult Details(int id)
        {
            var dh = _db.PROCCHITIETDDH(id).SingleOrDefault();
            return View(dh);
        }
        public ActionResult TimkiemDDH(int id)
        {
            return View("~/Views/AdminDonHang/Index.cshtml",_db.PROCTIMDDH(id).ToList());
        }
        public ActionResult DanhsachItemDH(int id)
        {
            var listitem = _db.PROCDSITEMDH(id).ToList();
            return PartialView(listitem);
        }
        public ActionResult SetTTDH(int idTH, int id)
        {
            _db.PROCSETDDH(idTH, id);
            return RedirectToAction("Details", new { id = id });
        }

        public ActionResult DSTrangthaiDDH(int madonhang)
        {
            ViewBag.MaTT = _db.DONDATHANGs.SingleOrDefault(i=>i.MADONDATHANG==madonhang).MATTDDH;
            ViewBag.MaDDH = madonhang;
            return PartialView(_db.TRANGTHAIDDHs.ToList());
        }
        [HttpGet]
        public ActionResult XuatHoaDon()
        {
            return View();
        }
        [HttpPost]
        public ActionResult XuatHoaDon(FormCollection collection)
        {
            NHANVIEN nv = (NHANVIEN)Session["NHANVIEN"];
            var id = int.Parse(collection["ma"]);
            var ngaygiao = DateTime.Parse(collection["NGAYGIAOHD"]);
            var gc = collection["GHICHUHD"];
            var mst = collection["MST"];
            var ten = collection["TENCONGTY"];
            var dc = collection["DIACHICONTY"];
            _db.XUATHOADON(id,nv.MANHANVIEN, ngaygiao,gc,mst,ten,dc);
            return RedirectToAction("Details", new { id = id});
        }
        // GET: AdminDonHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: AdminDonHang/Create
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

        // GET: AdminDonHang/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: AdminDonHang/Edit/5
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

        // GET: AdminDonHang/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: AdminDonHang/Delete/5
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
