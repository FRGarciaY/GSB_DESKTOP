using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace E4GSB
{
    public partial class Form_Rapport : Form
    {
        private rapport_visite _rapport;
        public Form_Rapport(rapport_visite rapport)
        {
            InitializeComponent();
            _rapport = rapport;
            praticien cePraticien;
            visiteur ceVisiteur;
            // Récupération des objet praticien et visiteur
            using (DataGSB bdd = new DataGSB())
            {
                cePraticien = bdd.praticiens.FirstOrDefault(x => x.id_praticien == _rapport.id_praticien);
                ceVisiteur = bdd.visiteurs.FirstOrDefault(y => y.id_visiteur == _rapport.id_visiteur);
            }
            // Remplissage des champs
            tb_prenom_praticien.Text = cePraticien.prenom_praticien;
            tb_nom_praticien.Text = cePraticien.nom_praticien;
            tb_prenom_visiteur.Text = ceVisiteur.prenom_visiteur;
            tb_nom_visiteur.Text = ceVisiteur.nom_visiteur;
            tb_date_rapport.Text = _rapport.date_rapport.HasValue ? _rapport.date_rapport.Value.ToString("dd-MM-yyyy") : "";
            tb_motif_rapport.Text = _rapport.motif;
            tb_bilan_rapport.Text = _rapport.bilan;

            chargement_echantillons_offert();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void Bt_Ajouter_Echantillon_Click(object sender, EventArgs e)
        {
            Form_Ajouter_Echantillon Ajout = new Form_Ajouter_Echantillon(_rapport);
            Ajout.ShowDialog();
            
        }
        private void Bt_Modifier_Echantillon_Click(object sender, EventArgs e)
        {
            ListBoxOffrirItem item = (ListBoxOffrirItem)lb_echantillons.SelectedItem;
            if(item != null)
            { 
                int idDuMedicament = item.Valeur.id_medicament;
                int idDuRapport = item.Valeur.id_rapport;
                int qteOffert = (int)item.Valeur.qte_offerte;
                Form_Modifier_Echantillon Modif = new Form_Modifier_Echantillon(idDuMedicament, idDuRapport, qteOffert);
                Modif.ShowDialog();
            }
        }
        private void Bt_Supprimer_Echantillon_Click(object sender, EventArgs e)
        {
            ListBoxOffrirItem item = (ListBoxOffrirItem)lb_echantillons.SelectedItem;
            if (item != null)
            {
                DialogResult confirmation = MessageBox.Show("Etes vous sûr de vouloir supprimer cet échantillon ?","Confirmation", MessageBoxButtons.YesNo);
                if (confirmation == DialogResult.Yes)
                {
                    int idDuMedicament = item.Valeur.id_medicament;
                    int idDuRapport = item.Valeur.id_rapport;
                    using (DataGSB bdd = new DataGSB())
                    {
                        var requeteDelete =
                            from off in bdd.offrirs
                            where (off.id_rapport == idDuRapport) && (off.id_medicament == idDuMedicament)
                            select off;

                        foreach (offrir off in requeteDelete)
                        {
                            bdd.offrirs.Remove(off);
                        }
                        bdd.SaveChanges();
                    }
                    chargement_echantillons_offert();
                }
            }
        }
        private void chargement_echantillons_offert()
        {
            using (DataGSB bdd = new DataGSB())
            {
                // Requete de récupération des echantillons offert
                var requete =
                from off in bdd.offrirs
                where (off.id_rapport == _rapport.id_rapport)
                select off;
                // Effacer la listBox
                lb_echantillons.Items.Clear();

                // récupération des échantillons offerts
                lb_echantillons.DisplayMember = "Texte";
                lb_echantillons.ValueMember = "Valeur";
                foreach (offrir o in requete)
                {
                    lb_echantillons.Items.Add(new ListBoxOffrirItem() { Texte = o.qte_offerte + " X " + o.medicament.nom_commercial, Valeur = o });
                    
                }
            }
        }
        private void Form_Rapport_Activated(object sender, EventArgs e)
        {
            chargement_echantillons_offert();
        }
    }
    public class ListBoxOffrirItem
    {
        public string Texte { get; set; }
        public offrir Valeur { get; set; }
    }
}
