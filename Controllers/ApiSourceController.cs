using Microsoft.AspNetCore.Mvc;
using HorrorApi.Models;

namespace HorrorApi.Controllers;

public class ApiSourceController : Controller
{
    public ApiSourceController()
    {
        //empty constructor
    }
    
    public IActionResult ApiSource()
    {
        //create hardcoded api data
        List<ApiSource> _apis = new()
        {
            new ApiSource { Id = 1, Name = "Ageify.io", Url="https://api.agify.io?name=Parker", Description="Predicts a persons age based on their name" },
            new ApiSource { Id = 2, Name = "Data Usa", Url="https://datausa.io/api/data?drilldowns=Nation&measures=Population", Description="Gets USA Population"},
            new ApiSource { Id = 3, Name = "Data Usa", Url="https://datausa.io/api/data?drilldowns=Nation&measures=Population", Description="Gets USA Population"}
        };

        return View(_apis);
    }
}