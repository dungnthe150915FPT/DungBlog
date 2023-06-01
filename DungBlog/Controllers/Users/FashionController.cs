using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Users
{
    public class FashionController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
