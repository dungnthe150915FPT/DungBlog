using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Users
{
    public class GameController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
