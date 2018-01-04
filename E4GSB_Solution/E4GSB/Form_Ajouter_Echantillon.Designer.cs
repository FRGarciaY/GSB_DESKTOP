namespace E4GSB
{
    partial class Form_Ajouter_Echantillon
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Ajouter_Echantillon));
            this.cb_famille = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cb_medicament = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.Bt_Valider_Ajout = new System.Windows.Forms.Button();
            this.Bt_Annuler = new System.Windows.Forms.Button();
            this.tb_qte = new System.Windows.Forms.TextBox();
            this.tb_erreur = new System.Windows.Forms.Label();
            this.lb_deja_enregistre = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cb_famille
            // 
            this.cb_famille.FormattingEnabled = true;
            this.cb_famille.Location = new System.Drawing.Point(84, 22);
            this.cb_famille.Name = "cb_famille";
            this.cb_famille.Size = new System.Drawing.Size(268, 21);
            this.cb_famille.TabIndex = 0;
            this.cb_famille.SelectedIndexChanged += new System.EventHandler(this.cb_famille_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Famille";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Médicament";
            // 
            // cb_medicament
            // 
            this.cb_medicament.Enabled = false;
            this.cb_medicament.FormattingEnabled = true;
            this.cb_medicament.Location = new System.Drawing.Point(84, 49);
            this.cb_medicament.Name = "cb_medicament";
            this.cb_medicament.Size = new System.Drawing.Size(268, 21);
            this.cb_medicament.TabIndex = 2;
            this.cb_medicament.SelectedIndexChanged += new System.EventHandler(this.cb_medicament_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Quantité offerte";
            // 
            // Bt_Valider_Ajout
            // 
            this.Bt_Valider_Ajout.Location = new System.Drawing.Point(84, 117);
            this.Bt_Valider_Ajout.Name = "Bt_Valider_Ajout";
            this.Bt_Valider_Ajout.Size = new System.Drawing.Size(75, 23);
            this.Bt_Valider_Ajout.TabIndex = 6;
            this.Bt_Valider_Ajout.Text = "Valider";
            this.Bt_Valider_Ajout.UseVisualStyleBackColor = true;
            this.Bt_Valider_Ajout.Click += new System.EventHandler(this.Bt_Valider_Ajout_Click);
            // 
            // Bt_Annuler
            // 
            this.Bt_Annuler.Location = new System.Drawing.Point(212, 117);
            this.Bt_Annuler.Name = "Bt_Annuler";
            this.Bt_Annuler.Size = new System.Drawing.Size(75, 23);
            this.Bt_Annuler.TabIndex = 7;
            this.Bt_Annuler.Text = "Annuler";
            this.Bt_Annuler.UseVisualStyleBackColor = true;
            this.Bt_Annuler.Click += new System.EventHandler(this.Bt_Annuler_Click);
            // 
            // tb_qte
            // 
            this.tb_qte.Enabled = false;
            this.tb_qte.Location = new System.Drawing.Point(153, 78);
            this.tb_qte.Name = "tb_qte";
            this.tb_qte.Size = new System.Drawing.Size(134, 20);
            this.tb_qte.TabIndex = 9;
            // 
            // tb_erreur
            // 
            this.tb_erreur.AutoSize = true;
            this.tb_erreur.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_erreur.ForeColor = System.Drawing.Color.Red;
            this.tb_erreur.Location = new System.Drawing.Point(169, 101);
            this.tb_erreur.Name = "tb_erreur";
            this.tb_erreur.Size = new System.Drawing.Size(99, 13);
            this.tb_erreur.TabIndex = 10;
            this.tb_erreur.Text = "Quantité non valide";
            this.tb_erreur.Visible = false;
            // 
            // lb_deja_enregistre
            // 
            this.lb_deja_enregistre.AutoSize = true;
            this.lb_deja_enregistre.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_deja_enregistre.ForeColor = System.Drawing.Color.Red;
            this.lb_deja_enregistre.Location = new System.Drawing.Point(89, -1);
            this.lb_deja_enregistre.Name = "lb_deja_enregistre";
            this.lb_deja_enregistre.Size = new System.Drawing.Size(205, 20);
            this.lb_deja_enregistre.TabIndex = 11;
            this.lb_deja_enregistre.Text = "Médicament déjà enregistré";
            this.lb_deja_enregistre.Visible = false;
            // 
            // Form_Ajouter_Echantillon
            // 
            this.AcceptButton = this.Bt_Valider_Ajout;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(364, 152);
            this.Controls.Add(this.lb_deja_enregistre);
            this.Controls.Add(this.tb_erreur);
            this.Controls.Add(this.tb_qte);
            this.Controls.Add(this.Bt_Annuler);
            this.Controls.Add(this.Bt_Valider_Ajout);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cb_medicament);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cb_famille);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form_Ajouter_Echantillon";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Ajouter un échantillon";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cb_famille;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cb_medicament;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button Bt_Valider_Ajout;
        private System.Windows.Forms.Button Bt_Annuler;
        private System.Windows.Forms.TextBox tb_qte;
        private System.Windows.Forms.Label tb_erreur;
        private System.Windows.Forms.Label lb_deja_enregistre;
    }
}