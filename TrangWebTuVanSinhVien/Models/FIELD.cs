//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TrangWebTuVanSinhVien.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class FIELD
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FIELD()
        {
            this.MANAGERs = new HashSet<MANAGER>();
            this.QUESTIONANDANSWERs = new HashSet<QUESTIONANDANSWER>();
            this.QUESTIONNOTCHECKs = new HashSet<QUESTIONNOTCHECK>();
            this.TEACHERs = new HashSet<TEACHER>();
            this.QUESTIONQUEUEs = new HashSet<QUESTIONQUEUE>();
        }
    
        public int IDField { get; set; }
        public string NameOfField { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MANAGER> MANAGERs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QUESTIONANDANSWER> QUESTIONANDANSWERs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QUESTIONNOTCHECK> QUESTIONNOTCHECKs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TEACHER> TEACHERs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QUESTIONQUEUE> QUESTIONQUEUEs { get; set; }
    }
}