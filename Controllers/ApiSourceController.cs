using Microsoft.AspNetCore.Mvc;
using HorrorApi.Models;

namespace HorrorApi.Controllers;

public class ApiSourceController : Controller
{
    public ApiSourceController()
    {
        //does nothing
    }
    
    public IActionResult ApiSource()
    {
        return View();
    }
}