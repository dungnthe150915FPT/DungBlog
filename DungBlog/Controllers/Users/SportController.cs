using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.General
{
    public class SportController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
