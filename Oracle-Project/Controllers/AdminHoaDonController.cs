using ADMINContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminHoaDonController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        // GET: AdminHoaDon
        public ActionResult Index()
        {
            return View(_db.HOADONs.ToList());
        }
        public ActionResult menuhoadon()
        {
            return PartialView();
        }
        public ActionResult DSHoaDonTheoTrangThai(int id)
        {
            return View("Index", _db.PROCDSHOADON(id).ToList());
        }
        public ActionResult DSHoaDonNhanVien()
        {
            var id = (NHANVIEN)Session["NHANVIEN"];
            return View("Index", _db.PROCDSHOADONNHANVIEN(id.MANHANVIEN).ToList());
        }
        public ActionResult menuTTHD()
        {
            return PartialView(_db.TRANGTHAIHDs.ToList());
        }
        public ActionResult Details(int id)
        {
            return View(_db.HOADONs.SingleOrDefault(i=>i.MAHOADON==id));
        }
    }
}