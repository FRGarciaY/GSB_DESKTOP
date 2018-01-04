using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace E4GSB
{
    public partial class Form_Modifier_Echantillon : Form
    {
        private medicament _medicament;
        private famille _famille;
        private int _idRapport;
        public Form_Modifier_Echantillon(int idMedicament, int idRapport, int qte)
        {
            InitializeComponent();
            using (DataGSB bdd = new DataGSB())
            {
                // Récupération du medicament
                var requeteMedicament =
                    from med in bdd.medicaments
                    where (med.id_medicament == idMedicament)
                    select med;

                foreach (medicament med in requeteMedicament)
                {
                    _medicament = med;
                }
                // Récupération de la famille du medicament
                var requeteFamille =
                    from fam in bdd.familles
                    where (fam.id_famille == _medicament.id_famille)
                    select fam;

                foreach (famille fam in requeteFamille)
                {
                    _famille = fam;
                }
            }
            _idRapport = idRapport;
            // Remplissage des textBoxes
            tb_Famille.Text = _famille.lib_famille;
            tb_Medicament.Text = _medicament.nom_commercial;
            tb_qte.Text = qte.ToString();
        }
        private void Bt_Valider_Modification_Click(object sender, EventArgs e)
        {
            // Vérification qte est un nombre
            int qte;
            bool estNombre = Int32.TryParse(tb_qte.Text, out qte);
            if (estNombre)
            {
                using (DataGSB bdd = new DataGSB())
                {
                    // Récupération du medicament offert
                    var requeteOffert =
                        from off in bdd.offrirs
                        where (off.id_medicament == _medicament.id_medicament) && (off.id_rapport == _idRapport)
                        select off;

                    foreach (offrir off in requeteOffert)
                    {
                        off.qte_offerte = Convert.ToInt32(tb_qte.Text);
                    }
                    bdd.SaveChanges();
                    this.Close();
                }
            }
            else
            {
                // Message d'erreur
                lb_erreur.Visible = true;
            }
        }
        public class ListBoxOffrirItem
        {
            public string Texte { get; set; }
            public offrir Valeur { get; set; }
        }

        private void Bt_Annuler_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        //update
        //off.id_rapport = 12;

        //bdd.offrirs.Attach(off);
        //bdd.Entry(off).State = System.Data.Entity.EntityState.Modified;
        //bdd.SaveChanges();
    }
}
