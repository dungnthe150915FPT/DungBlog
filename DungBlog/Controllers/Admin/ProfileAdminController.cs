using Microsoft.AspNetCore.Mvc;

namespace DungBlog.Controllers.Admin
{
    public class ProfileAdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
