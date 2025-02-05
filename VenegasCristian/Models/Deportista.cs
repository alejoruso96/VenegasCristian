namespace VenegasCristian.Models
{
    public class Deportista
    {
        public int DeportistaId { get; set; }
        public int PaisId { get; set; }
        public string? Nombre { get; set; }
        public DateTime FechaRegistro { get; set; }
        public virtual Pais Pais { get; set; }
        public virtual ICollection<Intento> Intentos { get; set; }
    }
}
