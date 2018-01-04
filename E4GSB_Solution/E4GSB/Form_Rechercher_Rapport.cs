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
    public partial class Form_Rechercher_Rapport : Form
    {
        public Form_Rechercher_Rapport()
        {
            InitializeComponent();
            
            using (DataGSB bdd = new DataGSB())
            {
                var requete =
                    from praticien in bdd.praticiens
                    orderby praticien.nom_praticien
                    select praticien;

                // récupération de l'utilisateur si il existe
                int i = 0;
                cb_nomPraticien.DisplayMember = "Texte";
                cb_nomPraticien.ValueMember = "IdValue";
                // Remplissage du ComboBox
                foreach (praticien  p in requete)
                {
                    if (i == 0)
                    {
                        cb_nomPraticien.Items.Add(new ListBoxPraticienItem() { Texte = "Tous les praticiens", IdValue = 0 });
                    }
                    else
                    {
                        cb_nomPraticien.Items.Add(new ListBoxPraticienItem() { Texte = p.nom_praticien + " " + p.prenom_praticien, IdValue = p.id_praticien });
                    }
                    i++;
                }
                cb_nomPraticien.SelectedIndex = 0;
            }
        }
        private void bt_Annuler_rrv_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Bt_Valider_rrv_Click(object sender, EventArgs e)
        {
            ListBoxPraticienItem praticienSelected;
            if ((ListBoxPraticienItem)cb_nomPraticien.SelectedItem != null)
            {
                praticienSelected = (ListBoxPraticienItem)cb_nomPraticien.SelectedItem;
                int idPraticien = praticienSelected.IdValue;
            
                praticienSelected.listeRapports = new List<rapport_visite>();
                DateTime debut = dateDebut.Value;
                DateTime fin = dateFin.Value;
                fin.AddDays(1);

                // Récupération des critères de recherche et execution de la requete
                if (idPraticien != 0)
                {
                    using (DataGSB bdd = new DataGSB())
                    {

                        var requete =
                            from r_v in bdd.rapport_visite
                            where (r_v.id_praticien == idPraticien) && (r_v.date_rapport >= debut) && (r_v.date_rapport <= fin)
                            orderby r_v.date_rapport
                            select r_v;

                        foreach (rapport_visite r in requete)
                        {
                            praticienSelected.listeRapports.Add(r);
                        }
                    }
                }
                else
                {
                    using (DataGSB bdd = new DataGSB())
                    {
                        var requete =
                            from r_v in bdd.rapport_visite
                            where (r_v.date_rapport >= debut) && (r_v.date_rapport <= fin)
                            orderby r_v.date_rapport
                            select r_v;

                        foreach (rapport_visite r in requete)
                        {
                            praticienSelected.listeRapports.Add(r);
                        }
                    }
                }
                if (praticienSelected.listeRapports.Count > 0)
                {
                    // Fermeture de la fenetre active
                    this.Close();
                    // Affichage du formulaire de recherche d'un rapport de visite
                    Form_Liste_Rapports Liste_Des_Rapports = new Form_Liste_Rapports(praticienSelected.listeRapports);
                    Liste_Des_Rapports.ShowDialog();
                }
                else
                {
                    // Affichage du message d'erreur
                    lb_erreur_recherche_rapport.Visible = true;
                }
            }
            else
            {
                lb_erreur_selection.Visible = true;
            }
        }
        private void cb_nomPraticien_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Cacher le message d'erreur
            lb_erreur_recherche_rapport.Visible = false;
            lb_erreur_selection.Visible = false;
        }
        private void dateDebut_ValueChanged(object sender, EventArgs e)
        {
            // Cacher le message d'erreur
            lb_erreur_recherche_rapport.Visible = false;
        }
        private void dateFin_ValueChanged(object sender, EventArgs e)
        {
            // Cacher le message d'erreur
            lb_erreur_recherche_rapport.Visible = false;
        }
        public class ListBoxPraticienItem
        {
            public string Texte { get; set; }
            public int IdValue { get; set; }
            public int idSelected { get; set; }
            public List<rapport_visite> listeRapports { get; set; }
        }
    }
}
