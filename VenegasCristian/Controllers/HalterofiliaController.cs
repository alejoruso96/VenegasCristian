using Microsoft.AspNetCore.Mvc;
using VenegasCristian.Dtos;
using VenegasCristian.Service;

namespace VenegasCristian.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HalterofiliaController : Controller
    {
        private readonly IHalterofiliaService _halterofiliaService;
        private readonly ILogger<HalterofiliaController> _logger;

        public HalterofiliaController(IHalterofiliaService halterofiliaService, ILogger<HalterofiliaController> logger)
        {
            _halterofiliaService = halterofiliaService;
            _logger = logger;
        }

        [HttpGet("resultados")]
        public async Task<ActionResult<IEnumerable<ResultadoHalterofiliaDto>>> ObtenerResultados(
        [FromQuery] int pagina = 1,
        [FromQuery] int elementosPorPagina = 10)
        {
            try
            {
                var resultados = await _halterofiliaService.ObtenerResultados(pagina, elementosPorPagina);
                return Ok(resultados);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al obtener resultados");
                return StatusCode(500, "Error interno del servidor");
            }
        }

        [HttpGet("intentos")]
        public async Task<ActionResult<IEnumerable<IntentosPorDeportistaDto>>> ObtenerIntentosPorDeportista()
        {
            try
            {
                var intentos = await _halterofiliaService.ObtenerIntentosPorDeportista();
                return Ok(intentos);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al obtener intentos por deportista");
                return StatusCode(500, "Error interno del servidor");
            }
        }

        [HttpPost("intento")]
        public async Task<ActionResult<int>> RegistrarIntento([FromBody] RegistrarIntentoDto dto)
        {
            try
            {
                var intentoId = await _halterofiliaService.RegistrarIntento(
                    dto.DeportistaId,
                    dto.ModalidadId,
                    dto.Peso,
                    dto.Exitoso);

                return Ok(intentoId);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al registrar intento");
                return StatusCode(500, "Error interno del servidor");
            }
        }
    }
}
