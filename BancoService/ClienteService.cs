using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using bancoModel;


namespace BancoService
{
    public class ClienteService
    {
        bancodbEntities db = new bancodbEntities();
        public void SalvarCliente(tcliente cliente)
        {
            db.tcliente.Add(cliente);
            db.SaveChanges();
        }
        public tcliente GetClienteByID(int IdCliente)
        {
            return db.tcliente.Where(x => x.IDCLIENTE == IdCliente).FirstOrDefault();
        }

        public List<tcliente> GetClienteByName(string NameCliente)
        {
            return db.tcliente.Where(x => x.NOMCLIENTE.Contains(NameCliente)).ToList();
        }

        public List<tcliente> GetListaCliente()
        {
            return db.tcliente.ToList();
        }
    }
}
