using System;
using System.Collections.Generic;
using System.Text;

namespace Gestion.Devis.Data.Model
{
    public class InformationsClementModel
    {
        public Guid InformationsClementId { get; set; }
        public string SIRETClement { get; set; }
        public string NomClement { get; set; }
        public string AdresseClement { get; set; }
    }
}
