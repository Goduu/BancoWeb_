//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClassLibrary1
{
    using System;
    using System.Collections.Generic;
    
    public partial class textrato
    {
        public int IDTEXTRATO { get; set; }
        public string TIPO_OPERACAO { get; set; }
        public double VALOR { get; set; }
        public System.DateTime DAT_ACAO { get; set; }
        public int IDCONTA_CLIENTE { get; set; }
    
        public virtual tconta tconta { get; set; }
    }
}
