using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Admin
{
    public class AdminHomePageController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
