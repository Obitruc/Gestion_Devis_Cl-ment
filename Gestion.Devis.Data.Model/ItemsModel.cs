using System;
using System.Collections.Generic;
using System.Text;

namespace Gestion.Devis.Data.Model
{
    public class ItemsModel
    {
        public Guid ItemsId { get; set; }
        public string ZoneItems { get; set; }
        public int QuantiteItems { get; set; }
        public int UniteItems { get; set; }
        public string DescriptionItems { get; set; }
        public int PrixUnitaireItems { get; set; }
        public int PrixTotalItems { get; set; }

    }
}
