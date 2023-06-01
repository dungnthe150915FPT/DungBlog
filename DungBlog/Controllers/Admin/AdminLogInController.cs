using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Admin
{
    public class AdminLogInController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
