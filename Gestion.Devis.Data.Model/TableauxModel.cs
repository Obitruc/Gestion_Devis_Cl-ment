using System;
using System.Collections.Generic;
using System.Text;

namespace Gestion.Devis.Data.Model
{
    class TableauxModel
    {
        public Guid TableauxId { get; set; }
        public string ZoneTableaux { get; set; }
        public int QuantiteTableaux { get; set; }
        public int UniteTableaux { get; set; }
        public string DescriptionTableaux { get; set; }
        public int PrixUnitaireTableaux { get; set; }
        public int PrixTotalTableaux { get; set; }

    }
}
