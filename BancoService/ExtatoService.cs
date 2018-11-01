using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using bancoModel;

namespace BancoService
{
    public class ExtratoService
    {
        bancodbEntities db = new bancodbEntities();

        public void SalvarOperacao(textrato operacao)
        {
            db.textrato.Add(operacao);
            db.SaveChanges();
        }

        public List<textrato> GetListaExtatoCliente(int IdContaCliente, DateTime dtIni, DateTime dtFim)
        {
            List<textrato> listaExtrato = db.textrato.Where(x => x.IDCONTA_CLIENTE == IdContaCliente && x.DAT_ACAO >= dtIni && x.DAT_ACAO <= dtFim).ToList();
            return listaExtrato;
        }
    }
}
