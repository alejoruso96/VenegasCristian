namespace VenegasCristian.Models
{
    public class Modalidad
    {
        public int ModalidadId { get; set; }
        public string? NombreIntento { get; set; }
        public virtual ICollection<Intento> Intentos { get; set; }
    }
}
