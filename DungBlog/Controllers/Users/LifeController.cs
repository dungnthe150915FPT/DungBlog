using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Users
{
    public class LifeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
