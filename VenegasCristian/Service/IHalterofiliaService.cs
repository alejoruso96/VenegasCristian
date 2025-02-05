using VenegasCristian.Dtos;

namespace VenegasCristian.Service
{
    public interface IHalterofiliaService
    {
        Task<IEnumerable<ResultadoHalterofiliaDto>> ObtenerResultados(int pagina, int elementosPorPagina);
        Task<IEnumerable<IntentosPorDeportistaDto>> ObtenerIntentosPorDeportista();
        Task<int> RegistrarIntento(int deportistaId, int modalidadId, decimal peso, bool exitoso);
    }
}
