﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Gestion.Devis.Data.Model
{
    public class DevisModel
    {
        public Guid DevisId { get; set; }
        public string NumeroDevis { get; set; }
        public DateTime DateDevis { get; set; }
        public string TypeDevis { get; set; }
        public InformationsClementModel InformationsClementDevis { get; set; }
        public string DestinataireDevis { get; set; }
        public string ObjetDevis { get; set; }
        public ItemsModel TableauDevis { get; set; }
        public int TotalDevis { get; set; }
        public int RemiseDevis { get; set; }
        public int MontantFinalDevis { get; set; }
    }
}
