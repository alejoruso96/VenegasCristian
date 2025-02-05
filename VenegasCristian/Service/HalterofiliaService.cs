using Microsoft.EntityFrameworkCore;
using VenegasCristian.Data;
using VenegasCristian.Dtos;
using VenegasCristian.Models;

namespace VenegasCristian.Service
{
    public class HalterofiliaService : IHalterofiliaService
    {
        private readonly HalterofiliaDbContext _context;
        private readonly ILogger<HalterofiliaService> _logger;

        public HalterofiliaService(HalterofiliaDbContext context, ILogger<HalterofiliaService> logger)
        {
            _context = context;
            _logger = logger;
        }

        public async Task<IEnumerable<IntentosPorDeportistaDto>> ObtenerIntentosPorDeportista()
        {
            try
            {
                return await _context.Intentos
                    .Include(i => i.Deportista)
                    .ThenInclude(d => d.Pais)
                    .Include(i => i.Modalidad)
                    .GroupBy(i => new { i.Deportista.Nombre, i.Deportista.Pais.Codigo, i.Modalidad.NombreIntento })
                    .Select(g => new IntentosPorDeportistaDto
                    {
                        Deportista = g.Key.Nombre,
                        Pais = g.Key.Codigo,
                        Modalidad = g.Key.NombreIntento,
                        NumeroIntentos = g.Count()
                    })
                    .OrderBy(r => r.Deportista)
                    .ThenBy(r => r.Modalidad)
                    .ToListAsync();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al obtener intentos por deportista");
                throw;
            }
        }

        public async Task<IEnumerable<ResultadoHalterofiliaDto>> ObtenerResultados(int pagina, int elementosPorPagina)
        {
            try
            {
                var resultados = await _context.Deportistas
                    .Include(d => d.Pais)
                    .Include(d => d.Intentos)
                    .ThenInclude(i => i.Modalidad)
                    .Select(d => new ResultadoHalterofiliaDto
                    {
                        Pais = d.Pais.Codigo,
                        Nombre = d.Nombre,
                        Arranque = d.Intentos
                            .Where(i => i.Modalidad.NombreIntento == "Arranque" && i.Exitoso)
                            .Max(i => (decimal?)i.Peso) ?? 0,
                        Envion = d.Intentos
                            .Where(i => i.Modalidad.NombreIntento == "Envion" && i.Exitoso)
                            .Max(i => (decimal?)i.Peso) ?? 0
                    })
                    .ToListAsync();

                // Calcular TotalPeso y ordenar
                foreach (var resultado in resultados)
                {
                    resultado.TotalPeso = resultado.Arranque + resultado.Envion;
                }

                return resultados
                    .OrderByDescending(r => r.TotalPeso)
                    .Skip((pagina - 1) * elementosPorPagina)
                    .Take(elementosPorPagina);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al obtener resultados de halterofilia");
                throw;
            }
        }

        public async Task<int> RegistrarIntento(int deportistaId, int modalidadId, decimal peso, bool exitoso)
        {
            try
            {
                var intento = new Intento
                {
                    DeportistaId = deportistaId,
                    ModalidadId = modalidadId,
                    Peso = peso,
                    FechaIntento = DateTime.UtcNow,
                    Exitoso = exitoso
                };

                _context.Intentos.Add(intento);
                await _context.SaveChangesAsync();

                _logger.LogInformation($"Intento registrado para deportista {deportistaId} en modalidad {modalidadId}");

                return intento.IntentoId;
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error al registrar intento");
                throw;
            }
        }
    }
}
