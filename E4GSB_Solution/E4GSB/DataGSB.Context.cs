﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E4GSB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DataGSB : DbContext
    {
        public DataGSB()
            : base("name=DataGSB")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<famille> familles { get; set; }
        public virtual DbSet<medicament> medicaments { get; set; }
        public virtual DbSet<offrir> offrirs { get; set; }
        public virtual DbSet<praticien> praticiens { get; set; }
        public virtual DbSet<rapport_visite> rapport_visite { get; set; }
        public virtual DbSet<visiteur> visiteurs { get; set; }
    }
}