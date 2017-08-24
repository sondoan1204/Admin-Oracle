using ADMINContext;
using Oracle_Project.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminSanPhamController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        MyOracle ora = new MyOracle();
        // GET: AdminSanPham
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult SPXoa()
        {
            return View();
        }
        public ActionResult DsLoai()
        {
            var ds = _db.LOAISPs.ToList();
            return PartialView(ds);
        }
        public ActionResult menudanhsach()
        {
            return PartialView();
        }
        public ActionResult DsSPTheoLoai(int id)
        {
            var ds = _db.PROCDSSPLOAI(id).ToList().Where(l => l.TRANGTHAIBAN=="Y");
            return PartialView(ds);
        }
        public ActionResult DsSPTheoLoaiKB(int id)
        {
            var ds = _db.PROCDSSPKHONGBAN(id).ToList();
            return PartialView("~/Views/AdminSanPham/DsSPTheoLoai.cshtml",ds);
        }
        public ActionResult TimSanPham(string id)
        {
            return View(_db.PROCTIMSP(id).ToList());
        }
        public ActionResult ThemLoai()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ThemLoai(FormCollection collection)
        {
            var tenloai = collection["tenloai"];
            if (String.IsNullOrEmpty(tenloai))
            {
                ViewData["Loi1"] = "Không được để trống";
            }
            else
            {
                var rs = _db.NHAPLOAISP(tenloai);
                if (rs == 1)
                {
                    ViewData["Loi2"] = "Trùng tên";
                }
                else
                {
                    return RedirectToAction("Index");
                }

            }
            return View();          
        }
        public ActionResult Edit(int id)
        {
            ADMINContext.LOAISP _loaiSP = _db.LOAISPs.SingleOrDefault(n => n.MALOAISP == id);          
            return View(_loaiSP);
        }
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            ADMINContext.LOAISP _loaiSP = _db.LOAISPs.SingleOrDefault(n => n.MALOAISP == id);
            var tenloai = collection["TENLOAI"];
            if (String.IsNullOrEmpty(tenloai))
            {
                ViewData["Loi1"] = "Không được để trống";
            }
            else
            {
                var rs = _db.SUALOAISP(id,tenloai);
                if (rs == 1)
                {
                    ViewData["Loi2"] = "Trùng tên";
                }
                else
                {
                    return RedirectToAction("Index");
                }

            }
            return View(_loaiSP);
        }
        public ActionResult ThemSanPham()
        {
            ViewData["Loai"]= new SelectList(_db.LOAISPs.ToList(), "MALOAISP", "TENLOAI");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemSanPham(FormCollection collection)
        {
            ViewData["Loai"] = new SelectList(_db.LOAISPs.ToList(), "MALOAISP", "TENLOAI");
            var loai= collection["Loai"];
            var ten = collection["TENSANPHAM"];
            var giaban = collection["GIABAN"];
            var giakm = collection["GIAKM"];
            var mota = collection["MOTASP"];
            var anh = collection["ANHSANPHAM"];
            var tkm = collection["TRANGTHAIKM"];
            var thot = collection["TRANGTHAIHOT"];
            var ttuan = collection["TRANGTHAITOPWEEK"];
            var ttban = collection["TRANGTHAIBAN"];
            string _tkm, _thot, _ttuan, _ttban;
            if (tkm == "false")
            {
                _tkm = "N";
            }
            else
            {
                _tkm = "Y";
            }
            if (thot == "false")
            {
                _thot = "N";
            }
            else
            {
                _thot = "Y";
            }
            if (ttuan == "false")
            {
                _ttuan = "N";
            }
            else
            {
                _ttuan = "Y";
            }
            if (ttban == "false")
            {
                _ttban = "N";
            }
            else
            {
                _ttban = "Y";
            }
            if (String.IsNullOrEmpty(anh))
            {
                ViewData["Loi1"] = "Không được để trống ảnh đại diện";
            }
            if (decimal.Parse(giaban)<decimal.Parse(giakm))
            {
                ViewData["Loi3"] = "Giá khuyến mãi phải nhỏ hơn giá bán";
            }
            else
            {
                var rs = _db.NHAPSANPHAM(decimal.Parse(loai),ten, decimal.Parse(giaban),decimal.Parse(giakm),mota,anh,_tkm,_thot,_ttuan,_ttban);
                if (rs == 1)
                {
                    ViewData["Loi2"] = "Sản phẩm trùng tên";
                }
                else
                {
                    return RedirectToAction("Index");
                }

            }
            return View();
        }
        public ActionResult SaveUploadedFile()
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            foreach (string fileName in Request.Files)
            {
                HttpPostedFileBase file = Request.Files[fileName];
                //Save file content goes here
                fName = file.FileName;
                if (file != null && file.ContentLength > 0)
                {

                    var originalDirectory = new DirectoryInfo(string.Format("{0}Images", Server.MapPath(@"\")));

                    string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "imagepath");

                    var fileName1 = Path.GetFileName(file.FileName);

                    bool isExists = System.IO.Directory.Exists(pathString);

                    if (!isExists)
                        System.IO.Directory.CreateDirectory(pathString);

                    var path = string.Format("{0}\\{1}", pathString, file.FileName);
                    file.SaveAs(path);

                }

            }

            if (isSavedSuccessfully)
            {
                return Json(new { Message = fName });
            }
            else
            {
                return Json(new { Message = "Error in saving file" });
            }
        }
        public ActionResult EditSP(int id)
        {
            ADMINContext.SANPHAM _SP = _db.SANPHAMs.SingleOrDefault(n => n.MASANPHAM == id);
            ViewData["Loai"] = new SelectList(_db.LOAISPs.ToList(), "MALOAISP", "TENLOAI",_SP.MALOAISP);
            return View(_SP);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult EditSP(int id, FormCollection collection)
        {
            ADMINContext.SANPHAM _SP = _db.SANPHAMs.SingleOrDefault(n => n.MASANPHAM == id);
            ViewData["Loai"] = new SelectList(_db.LOAISPs.ToList(), "MALOAISP", "TENLOAI");
            var loai = collection["Loai"];
            var ten = collection["TENSANPHAM"];
            var giaban = collection["GIABAN"];
            var giakm = collection["GIAKM"];
            var mota = collection["MOTASP"];
            var anh = collection["ANHSANPHAM"];
            var tkm = collection["_TRANGTHAIKM"];
            var thot = collection["_TRANGTHAIHOT"];
            var ttuan = collection["_TRANGTHAITOPWEEK"];
            var ttban = collection["_TRANGTHAIBAN"];
            string _tkm, _thot, _ttuan, _ttban;
            if (tkm == "false")
            {
                _tkm = "N";
            }
            else
            {
                _tkm = "Y";
            }
            if (thot == "false")
            {
                _thot = "N";
            }
            else
            {
                _thot = "Y";
            }
            if (ttuan == "false")
            {
                _ttuan = "N";
            }
            else
            {
                _ttuan = "Y";
            }
            if (ttban == "false")
            {
                _ttban = "N";
            }
            else
            {
                _ttban = "Y";
            }
            if (String.IsNullOrEmpty(anh))
            {
                ViewData["Loi1"] = "Không được để trống ảnh đại diện";
            }
            if (decimal.Parse(giaban) < decimal.Parse(giakm))
            {
                ViewData["Loi3"] = "Giá khuyến mãi phải nhỏ hơn giá bán";
            }
            else
            {
                var rs = _db.SUASANPHAM(id,decimal.Parse(loai), ten, decimal.Parse(giaban), decimal.Parse(giakm), mota, anh, _tkm, _thot, _ttuan, _ttban);
                if (rs == 1)
                {
                    ViewData["Loi2"] = "Sản phẩm trùng tên";
                }
                else
                {
                    return RedirectToAction("Index");
                }

            }
            return View(_SP);
        }
        public void Xoasp(int id)
        {
            _db.PROCXOASP(id);
            //return RedirectToAction("Index");
        }
        public void Khoiphucsp(int id)
        {
            _db.PROCKHOIPHUCSP(id);
            //return RedirectToAction("SPXoa");
        }
    }
}