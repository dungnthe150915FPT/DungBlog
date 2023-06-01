using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers
{
    public class HomePageController : Controller
    {
        public IActionResult HomePage()
        {
            return View();
        }
    }
}
