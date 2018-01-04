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
    public partial class Form_Ajouter_Echantillon : Form
    {
        //
        // TODO 
        // disable les medicaments deja offert
        //
        private rapport_visite _rapport;
        private medicament _selectedMedicament;
        public Form_Ajouter_Echantillon(rapport_visite rapport)
        {
            InitializeComponent();
            _rapport = rapport;
            // Remplir le combobox famille
            remplirFamille();
        }
        private void cb_famille_SelectedIndexChanged(object sender, EventArgs e)
        {
            lb_deja_enregistre.Visible = false;
            if (cb_famille.SelectedIndex != 0)
            {
                cb_medicament.Enabled = true;
                ListBoxFamilletItem selectedFamille = (ListBoxFamilletItem)cb_famille.SelectedItem;
                famille laFamille = (famille)selectedFamille.Value;
                remplirMedicament(laFamille);
                tb_qte.Clear();
                tb_qte.Enabled = false;
            }
            else
            {
                cb_medicament.Enabled = false;
            }
        }
        private void cb_medicament_SelectedIndexChanged(object sender, EventArgs e)
        {
            lb_deja_enregistre.Visible = false;
            if (cb_medicament.SelectedIndex != 0)
            {
                ListBoxMedicamentItem selectedMedicament = (ListBoxMedicamentItem)cb_medicament.SelectedItem;
                _selectedMedicament = (medicament)selectedMedicament.Value;
                tb_qte.Clear();
                tb_qte.Enabled = true;
            }
            else
            {
                tb_qte.Clear();
                tb_qte.Enabled = false;
            }
        }
        private void Bt_Valider_Ajout_Click(object sender, EventArgs e)
        {
            // Vérification qte est un nombre
            int qte;
            bool estNombre = Int32.TryParse(tb_qte.Text, out qte);
            if (estNombre)
            {
                bool offert = dejaOffert(_selectedMedicament);
                if (!offert)
                {
                    offrir echantillon = new offrir();
                    echantillon.id_medicament = _selectedMedicament.id_medicament;
                    echantillon.id_rapport = _rapport.id_rapport;
                    echantillon.id_visiteur = _rapport.id_visiteur;
                    echantillon.qte_offerte = qte;
                    using (DataGSB bdd = new DataGSB())
                    {
                        bdd.offrirs.Add(echantillon);
                        bdd.SaveChanges();
                    }
                    this.Close();
                }
                else
                {
                    lb_deja_enregistre.Visible = true;
                }
            }
            else
            {
                // Message d'erreur
                tb_erreur.Visible = true;
            }
        }
        private void remplirFamille()
        {
            cb_famille.Items.Clear();
            using (DataGSB bdd = new DataGSB())
            {
                var requete =
                    from fam in bdd.familles
                    select fam;

                cb_famille.DisplayMember = "Texte";
                cb_famille.ValueMember = "Value";
                cb_famille.Items.Add(new ListBoxFamilletItem { Texte = "Séléctionnez une famille de médicament", Value = null });
                foreach (famille fam in requete)
                {
                    cb_famille.Items.Add(new ListBoxFamilletItem { Texte = fam.lib_famille, Value = fam });
                }
                cb_famille.SelectedIndex = 0;
            }
        }
        private void remplirMedicament(famille selectedFamille)
        {
            cb_medicament.Items.Clear();
            using (DataGSB bdd = new DataGSB())
            {
                var requete =
                    from med in bdd.medicaments
                    where (med.id_famille == selectedFamille.id_famille)
                    select med;

                cb_medicament.DisplayMember = "Texte";
                cb_medicament.ValueMember = "Value";
                //int i = 0;
                cb_medicament.Items.Add(new ListBoxMedicamentItem { Texte = "Séléctionnez un médicament", Value = null });
                foreach (medicament med in requete)
                {
                    cb_medicament.Items.Add(new ListBoxMedicamentItem { Texte = med.nom_commercial, Value = med });
                }
                cb_medicament.SelectedIndex = 0;
            }
        }
        private bool dejaOffert(medicament ceMedicament)
        {
            bool reponse = false;
            using (DataGSB bdd = new DataGSB())
            {
                var requete =
                    from off in bdd.offrirs
                    where (off.id_rapport == _rapport.id_rapport && off.id_medicament == ceMedicament.id_medicament)
                    select off;

                foreach (offrir off in requete)
                {
                    reponse = true;
                }
            }
            return reponse;
        }
        public class ListBoxFamilletItem
        {
            public string Texte { get; set; }
            public famille Value { get; set; }
        }
        public class ListBoxMedicamentItem
        {
            public string Texte { get; set; }
            public medicament Value { get; set; }
        }

        private void Bt_Annuler_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
