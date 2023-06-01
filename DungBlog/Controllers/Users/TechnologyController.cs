using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Users
{
    public class TechnologyController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
