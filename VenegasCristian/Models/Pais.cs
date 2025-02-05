namespace VenegasCristian.Models
{
    public class Pais
    {
        public int PaisId { get; set; }
        public string? Codigo { get; set; }
        public string? Nombre { get; set; }
        public virtual ICollection<Deportista?> Deportistas { get; set; }
    }
}
