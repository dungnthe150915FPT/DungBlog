using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.General
{
    public class TravelController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
