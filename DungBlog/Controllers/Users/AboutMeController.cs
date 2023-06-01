using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.General
{
    public class AboutMeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
