using Microsoft.EntityFrameworkCore;
using VenegasCristian.Models;

namespace VenegasCristian.Data
{
    public class HalterofiliaDbContext : DbContext
    {
        public HalterofiliaDbContext(DbContextOptions<HalterofiliaDbContext> options)
       : base(options)
        {
        }

        public DbSet<Pais> Paises { get; set; }
        public DbSet<Deportista> Deportistas { get; set; }
        public DbSet<Modalidad> Modalidades { get; set; }
        public DbSet<Intento> Intentos { get; set; }
        public DbSet<Log> Logs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Pais>()
                .HasIndex(p => p.Codigo)
                .IsUnique();

            modelBuilder.Entity<Modalidad>()
                .HasIndex(m => m.NombreIntento)
                .IsUnique();
        }
    }
}
