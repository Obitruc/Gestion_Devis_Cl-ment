using System;

namespace Gestion.Devis.Data.Model
{
    public class ClientsModel
    {
        public Guid ClientsId { get; set; }
        public DateTime DateClients { get; set; }
        public string NomClients { get; set; }
        public string AdresseClients { get; set; }
        public string CodePostalClients { get; set; }
        public string VilleClients { get; set; }
        public string TelephoneClients { get; set; }
        public string ObjetClients { get; set; }
        public int RemiseClients { get; set; }
    }
}
