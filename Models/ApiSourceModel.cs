namespace HorrorApi.Models;

public class ApiSource
{
    public int Id { get; set; }
    public required string Name { get; set; }
    public required string Description { get; set; }
    public required string Url { get; set; }
    public DateTime DateAdded { get; set; } = DateTime.UtcNow;
}