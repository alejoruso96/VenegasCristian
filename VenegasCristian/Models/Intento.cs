namespace VenegasCristian.Models
{
    public class Intento
    {
        public int IntentoId { get; set; }
        public int DeportistaId { get; set; }
        public int ModalidadId { get; set; }
        public decimal Peso { get; set; }
        public DateTime FechaIntento { get; set; }
        public bool Exitoso { get; set; }
        public virtual Deportista? Deportista { get; set; }
        public virtual Modalidad? Modalidad { get; set; }
    }
}
