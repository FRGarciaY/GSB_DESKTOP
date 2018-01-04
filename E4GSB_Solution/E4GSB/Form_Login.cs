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
    delegate void RequeteLink();
    public partial class Form_Login : Form
    {
        private Form_Main _formMain;
        public Form_Login(Form_Main formMain)
        {
            InitializeComponent();
            _formMain = formMain;
            //tb_login.Text = "auchon";
            //tb_password.Text = "secret";
        }
        private void Bt_Annuler_Log_Click(object sender, EventArgs e)
        {
            // Fermeture du formulaire
            this.Close();
        }
        private void Bt_Valider_Log_Click(object sender, EventArgs e)
        {
            // Récupération des informations saisies
            string login = tb_login.Text;
            string password = tb_password.Text;
            bool authentification = false;
            using (DataGSB bdd = new DataGSB())
            { 
                // Requete verification login mot de passe dans la base de données
                var requete =
                    from visiteur in bdd.visiteurs
                    where (visiteur.login_visiteur == login) && (visiteur.pwd_visiteur == password)
                    select visiteur;

                //visiteur visiteur = bdd.visiteurs.FirstOrDefault(x => x.login_visiteur == login && x.pwd_visiteur == password);
                //if (visiteur != null){}

                // récupération de l'utilisateur si il existe
                foreach (visiteur v in requete)
                {
                    authentification = true;
                    _formMain.VisiteurConnecte(v.prenom_visiteur);
                    this.Close();
                }
            }
            if (!authentification)
            {
                // Affichage du message d'erreur
                lb_erreur_login.Visible = true;
                tb_login.Text = "";
                tb_password.Text = "";
                tb_login.Select();
            }
        }
        private void tb_login_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (lb_erreur_login.Visible == true)
            {
                lb_erreur_login.Visible = false;
            }
        }
    }
}
