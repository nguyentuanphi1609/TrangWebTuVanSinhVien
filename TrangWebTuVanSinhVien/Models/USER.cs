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
    
    public partial class USER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USER()
        {
            this.ADMINs = new HashSet<ADMIN>();
            this.MANAGERs = new HashSet<MANAGER>();
            this.QUESTIONNOTCHECKs = new HashSet<QUESTIONNOTCHECK>();
            this.STUDENTs = new HashSet<STUDENT>();
            this.TEACHERs = new HashSet<TEACHER>();
            this.QUESTIONQUEUEs = new HashSet<QUESTIONQUEUE>();
        }
    
        public int IDUser { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> DateOfBirth { get; set; }
        public Nullable<bool> Sex { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public Nullable<int> Permission { get; set; }
        public string PassWord { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ADMIN> ADMINs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MANAGER> MANAGERs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QUESTIONNOTCHECK> QUESTIONNOTCHECKs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<STUDENT> STUDENTs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TEACHER> TEACHERs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QUESTIONQUEUE> QUESTIONQUEUEs { get; set; }
    }
}