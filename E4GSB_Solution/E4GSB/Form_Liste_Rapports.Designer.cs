namespace E4GSB
{
    partial class Form_Liste_Rapports
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Liste_Rapports));
            this.label1 = new System.Windows.Forms.Label();
            this.lb_liste_rapport = new System.Windows.Forms.ListBox();
            this.Bt_Valider_Selection = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(13, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(117, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Séléctionner un rapport";
            // 
            // lb_liste_rapport
            // 
            this.lb_liste_rapport.FormattingEnabled = true;
            this.lb_liste_rapport.Location = new System.Drawing.Point(16, 30);
            this.lb_liste_rapport.Name = "lb_liste_rapport";
            this.lb_liste_rapport.Size = new System.Drawing.Size(356, 173);
            this.lb_liste_rapport.TabIndex = 1;
            this.lb_liste_rapport.DoubleClick += new System.EventHandler(this.lb_liste_rapport_DoubleClick);
            // 
            // Bt_Valider_Selection
            // 
            this.Bt_Valider_Selection.Location = new System.Drawing.Point(101, 209);
            this.Bt_Valider_Selection.Name = "Bt_Valider_Selection";
            this.Bt_Valider_Selection.Size = new System.Drawing.Size(75, 23);
            this.Bt_Valider_Selection.TabIndex = 2;
            this.Bt_Valider_Selection.Text = "Valider";
            this.Bt_Valider_Selection.UseVisualStyleBackColor = true;
            this.Bt_Valider_Selection.Click += new System.EventHandler(this.bt_valider_choix_rapport);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(213, 209);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Annuler";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form_Liste_Rapports
            // 
            this.AcceptButton = this.Bt_Valider_Selection;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(394, 245);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.Bt_Valider_Selection);
            this.Controls.Add(this.lb_liste_rapport);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form_Liste_Rapports";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Liste des rapports de visite";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox lb_liste_rapport;
        private System.Windows.Forms.Button Bt_Valider_Selection;
        private System.Windows.Forms.Button button1;
    }
}