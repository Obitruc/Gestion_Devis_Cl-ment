using System;
using System.Collections.Generic;
using System.Text;

namespace Gestion.Devis.Data.Model
{
    class DevisModel
    {
        public Guid DevisId { get; set; }
        public string NumeroDevis { get; set; }
        public DateTime DateDevis { get; set; }
        public string TypeDevis { get; set; }
        public string DestinataireDevis { get; set; }
        public string ObjetDevis { get; set; }
        public TableauxModel TableauDevis { get; set; }
        public int TotalDevis { get; set; }
        public int RemiseDevis { get; set; }
        public int MontantFinalDevis { get; set; }
    }
}
