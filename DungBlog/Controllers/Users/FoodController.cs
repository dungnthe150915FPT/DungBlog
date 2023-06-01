using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.General
{
    public class FoodController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
