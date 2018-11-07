using System;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using Gestion.Devis.Data.Model;

namespace Gestion.Devis.Orm
{
    public class GestionDevisContext : DbContext
    {
        public GestionDevisContext(DbContextOptions<GestionDevisContext> options) : base(options) { }

        public DbSet<ClientsDevisModel> DbClientsDevisModel { get; set; }
        public DbSet<ClientsModel> DbClientsModel { get; set; }
        public DbSet<DescriptionsModel> DbDescriptionsModel { get; set; }
        public DbSet<DevisItemsModel> DbDevisItemsModel { get; set; }
        public DbSet<DevisModel> DbDevisModel { get; set; }
        public DbSet<InformationsClementModel> DbInformationsClementModel { get; set; }
        public DbSet<ItemsDescriptionModel> DbItemsDescriptionModel { get; set; }
        public DbSet<ItemsModel> DbItemsModel { get; set; }
        public DbSet<ItemsPrixModel> DbItemsPrixModel { get; set; }
        public DbSet<ItemsUnitesModel> DbItemsUnitesModel { get; set; }
        public DbSet<PrixModel> DbPrixModel { get; set; }
        public DbSet<UnitesModel> DbUnitesModel { get; set; }
    }
}
