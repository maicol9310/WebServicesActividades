﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAppSer.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TestEntities : DbContext
    {
        public TestEntities()
            : base("name=TestEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<modulo> modulo { get; set; }
        public virtual DbSet<operaciones> operaciones { get; set; }
        public virtual DbSet<rol> rol { get; set; }
        public virtual DbSet<rol_operacion> rol_operacion { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}