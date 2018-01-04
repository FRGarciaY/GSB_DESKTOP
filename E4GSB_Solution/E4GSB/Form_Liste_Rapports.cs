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
    public partial class Form_Liste_Rapports : Form
    {
        private List<rapport_visite> _listeRapports;
        public Form_Liste_Rapports(List<rapport_visite> listeRapports)
        {
            InitializeComponent();
            _listeRapports = listeRapports;
            // Remplissage du ListBox avec l'objet ListeRapports

            lb_liste_rapport.DisplayMember = "Texte";
            lb_liste_rapport.ValueMember = "Value";
            foreach (rapport_visite r in _listeRapports)
            {
                //lb_liste_rapport.DisplayMember = "Texte";
                //lb_liste_rapport.ValueMember = "Value";
                using (DataGSB bdd = new DataGSB())
                {
                    praticien cePraticien = bdd.praticiens.FirstOrDefault(x => x.id_praticien == r.id_praticien);
                    lb_liste_rapport.Items.Add(new ListBoxRapportItem { Texte = "Le " + (r.date_rapport.HasValue ? r.date_rapport.Value.ToString("dd-MM-yyyy") : "") + " " + cePraticien.prenom_praticien + " " + cePraticien.nom_praticien, Value = r });
                }
            }
        }
        private void bt_valider_choix_rapport(object sender, EventArgs e)
        {
            ListBoxRapportItem RapportSelected = (ListBoxRapportItem)lb_liste_rapport.SelectedItem;
            RapportSelected.Value = RapportSelected.Value;
            Form LeRapport = new Form_Rapport(RapportSelected.Value);
            LeRapport.ShowDialog();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        public class ListBoxRapportItem
        {
            public string Texte { get; set; }
            public rapport_visite Value { get; set; }
        }

        private void lb_liste_rapport_DoubleClick(object sender, EventArgs e)
        {
            bt_valider_choix_rapport(this, e);
        }
    }
}
