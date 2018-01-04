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
    public partial class Form_Main : Form
    {
        public Form_Main()
        {
            InitializeComponent();
        }
        private void rechercherToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Affichage du formulaire de recherche d'un rapport de visite
            Form RechercherUnRapport = new Form_Rechercher_Rapport();
            RechercherUnRapport.ShowDialog();
        }
        private void quitterToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            // Quitter l'application
            Application.Exit();
        }
        private void connexionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Affichage du formulaire de connexion
            Form Login = new Form_Login(this);
            Login.ShowDialog();
        }
        private void seDeconnecterToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            connexionToolStripMenuItem.Visible = true;
            seDeconnecterToolStripMenuItem.Visible = false;
            rapportDeVisiteToolStripMenuItem.Visible = false;
            toolStripTextBox_Bonjour.Visible = false;
        }
        public void VisiteurConnecte(string prenom)
        {
            connexionToolStripMenuItem.Visible = false;
            seDeconnecterToolStripMenuItem.Visible = true;
            rapportDeVisiteToolStripMenuItem.Visible = true;
            toolStripTextBox_Bonjour.Text = "--- Bonjour " + prenom + " ---";
            toolStripTextBox_Bonjour.Visible = true;
        }
    }
}