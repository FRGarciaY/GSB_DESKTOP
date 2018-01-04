namespace E4GSB
{
    partial class Form_Login
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Login));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tb_login = new System.Windows.Forms.TextBox();
            this.tb_password = new System.Windows.Forms.TextBox();
            this.Bt_Valider_Log = new System.Windows.Forms.Button();
            this.Bt_Annuler_Log = new System.Windows.Forms.Button();
            this.lb_erreur_login = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Login :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 71);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mot de passe :";
            // 
            // tb_login
            // 
            this.tb_login.Location = new System.Drawing.Point(135, 40);
            this.tb_login.Name = "tb_login";
            this.tb_login.Size = new System.Drawing.Size(150, 20);
            this.tb_login.TabIndex = 1;
            this.tb_login.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tb_login_KeyPress);
            // 
            // tb_password
            // 
            this.tb_password.Location = new System.Drawing.Point(135, 68);
            this.tb_password.Name = "tb_password";
            this.tb_password.PasswordChar = 'x';
            this.tb_password.Size = new System.Drawing.Size(150, 20);
            this.tb_password.TabIndex = 2;
            // 
            // Bt_Valider_Log
            // 
            this.Bt_Valider_Log.Location = new System.Drawing.Point(79, 100);
            this.Bt_Valider_Log.Name = "Bt_Valider_Log";
            this.Bt_Valider_Log.Size = new System.Drawing.Size(75, 23);
            this.Bt_Valider_Log.TabIndex = 4;
            this.Bt_Valider_Log.Text = "Valider";
            this.Bt_Valider_Log.UseVisualStyleBackColor = true;
            this.Bt_Valider_Log.Click += new System.EventHandler(this.Bt_Valider_Log_Click);
            // 
            // Bt_Annuler_Log
            // 
            this.Bt_Annuler_Log.Location = new System.Drawing.Point(160, 100);
            this.Bt_Annuler_Log.Name = "Bt_Annuler_Log";
            this.Bt_Annuler_Log.Size = new System.Drawing.Size(75, 23);
            this.Bt_Annuler_Log.TabIndex = 5;
            this.Bt_Annuler_Log.Text = "Annuler";
            this.Bt_Annuler_Log.UseVisualStyleBackColor = true;
            this.Bt_Annuler_Log.Click += new System.EventHandler(this.Bt_Annuler_Log_Click);
            // 
            // lb_erreur_login
            // 
            this.lb_erreur_login.AutoSize = true;
            this.lb_erreur_login.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_erreur_login.ForeColor = System.Drawing.Color.Red;
            this.lb_erreur_login.Location = new System.Drawing.Point(31, 9);
            this.lb_erreur_login.Name = "lb_erreur_login";
            this.lb_erreur_login.Size = new System.Drawing.Size(243, 20);
            this.lb_erreur_login.TabIndex = 6;
            this.lb_erreur_login.Text = "Login ou mot de passe incorrect !";
            this.lb_erreur_login.Visible = false;
            // 
            // Form_Login
            // 
            this.AcceptButton = this.Bt_Valider_Log;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(315, 130);
            this.Controls.Add(this.lb_erreur_login);
            this.Controls.Add(this.Bt_Annuler_Log);
            this.Controls.Add(this.Bt_Valider_Log);
            this.Controls.Add(this.tb_password);
            this.Controls.Add(this.tb_login);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form_Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Login";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_login;
        private System.Windows.Forms.TextBox tb_password;
        private System.Windows.Forms.Button Bt_Valider_Log;
        private System.Windows.Forms.Button Bt_Annuler_Log;
        private System.Windows.Forms.Label lb_erreur_login;
    }
}