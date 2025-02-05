namespace VenegasCristian.Models
{
    public class Log
    {
        public int LogId { get; set; }
        public string? Mensaje { get; set; }
        public string? Nivel { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}
