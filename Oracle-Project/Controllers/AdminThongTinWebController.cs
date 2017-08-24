using ADMINContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Oracle_Project.Controllers
{
    public class AdminThongTinWebController : Controller
    {
        ADMINDataContext _db = new ADMINDataContext();
        
        // GET: AdminThongTinWeb/Edit/5
        public ActionResult Edit()
        {
            return View(_db.THONGTINWEBSITEs.SingleOrDefault(i=>i.MATHONGTIN==1));
        }

        // POST: AdminThongTinWeb/Edit/5
        [HttpPost]
        public ActionResult Edit(FormCollection collection)
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
        
    }
}
