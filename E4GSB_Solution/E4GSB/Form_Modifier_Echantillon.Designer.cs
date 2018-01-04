namespace E4GSB
{
    partial class Form_Modifier_Echantillon
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Modifier_Echantillon));
            this.Bt_Annuler = new System.Windows.Forms.Button();
            this.Bt_Valider_Modification = new System.Windows.Forms.Button();
            this.tb_qte = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tb_Medicament = new System.Windows.Forms.TextBox();
            this.tb_Famille = new System.Windows.Forms.TextBox();
            this.lb_erreur = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // Bt_Annuler
            // 
            this.Bt_Annuler.Location = new System.Drawing.Point(159, 107);
            this.Bt_Annuler.Name = "Bt_Annuler";
            this.Bt_Annuler.Size = new System.Drawing.Size(75, 23);
            this.Bt_Annuler.TabIndex = 15;
            this.Bt_Annuler.Text = "Annuler";
            this.Bt_Annuler.UseVisualStyleBackColor = true;
            this.Bt_Annuler.Click += new System.EventHandler(this.Bt_Annuler_Click);
            // 
            // Bt_Valider_Modification
            // 
            this.Bt_Valider_Modification.Location = new System.Drawing.Point(57, 107);
            this.Bt_Valider_Modification.Name = "Bt_Valider_Modification";
            this.Bt_Valider_Modification.Size = new System.Drawing.Size(75, 23);
            this.Bt_Valider_Modification.TabIndex = 14;
            this.Bt_Valider_Modification.Text = "Valider";
            this.Bt_Valider_Modification.UseVisualStyleBackColor = true;
            this.Bt_Valider_Modification.Click += new System.EventHandler(this.Bt_Valider_Modification_Click);
            // 
            // tb_qte
            // 
            this.tb_qte.Location = new System.Drawing.Point(131, 68);
            this.tb_qte.Name = "tb_qte";
            this.tb_qte.Size = new System.Drawing.Size(103, 20);
            this.tb_qte.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Quantité offerte";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(13, 42);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Médicament";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "Famille";
            // 
            // tb_Medicament
            // 
            this.tb_Medicament.Enabled = false;
            this.tb_Medicament.Location = new System.Drawing.Point(84, 39);
            this.tb_Medicament.Name = "tb_Medicament";
            this.tb_Medicament.Size = new System.Drawing.Size(188, 20);
            this.tb_Medicament.TabIndex = 16;
            // 
            // tb_Famille
            // 
            this.tb_Famille.Enabled = false;
            this.tb_Famille.Location = new System.Drawing.Point(84, 12);
            this.tb_Famille.Name = "tb_Famille";
            this.tb_Famille.Size = new System.Drawing.Size(188, 20);
            this.tb_Famille.TabIndex = 17;
            // 
            // lb_erreur
            // 
            this.lb_erreur.AutoSize = true;
            this.lb_erreur.ForeColor = System.Drawing.Color.Red;
            this.lb_erreur.Location = new System.Drawing.Point(135, 91);
            this.lb_erreur.Name = "lb_erreur";
            this.lb_erreur.Size = new System.Drawing.Size(99, 13);
            this.lb_erreur.TabIndex = 18;
            this.lb_erreur.Text = "Quantité non valide";
            this.lb_erreur.Visible = false;
            // 
            // Form_Modifier_Echantillon
            // 
            this.AcceptButton = this.Bt_Valider_Modification;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 142);
            this.Controls.Add(this.lb_erreur);
            this.Controls.Add(this.tb_Famille);
            this.Controls.Add(this.tb_Medicament);
            this.Controls.Add(this.Bt_Annuler);
            this.Controls.Add(this.Bt_Valider_Modification);
            this.Controls.Add(this.tb_qte);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form_Modifier_Echantillon";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Modifier";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Bt_Annuler;
        private System.Windows.Forms.Button Bt_Valider_Modification;
        private System.Windows.Forms.TextBox tb_qte;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tb_Medicament;
        private System.Windows.Forms.TextBox tb_Famille;
        private System.Windows.Forms.Label lb_erreur;
    }
}