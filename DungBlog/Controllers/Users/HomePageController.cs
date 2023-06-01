using DungBlog.Models;
using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers
{
    public class HomePageController : Controller
    {
        DungBlogContext context = new DungBlogContext();
        public IActionResult HomePage()
        {
            return View();
        }
        public IActionResult HomePage(string status)
        {

        }
    }
}
