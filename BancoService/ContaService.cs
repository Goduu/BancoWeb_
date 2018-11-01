using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using bancoModel;

namespace BancoService
{
    public class ContaService
    {
        bancodbEntities db = new bancodbEntities();
        public void SalvarConta(tconta conta)
        {
            db.tconta.Add(conta);
            db.SaveChanges();
        }
        public tconta GetClienteByID(int IdConta)
        {
            return db.tconta.Where(x => x.IDCONTA == IdConta).FirstOrDefault();
        }

        public List<tconta> GetContaByNumber(string NumerAccount)
        {
            return db.tconta.Where(x => x.DES_NUMERO == NumerAccount).ToList();
        }

        public List<tconta> GetListaContas()
        {
            return db.tconta.ToList();
        }
    }
}
