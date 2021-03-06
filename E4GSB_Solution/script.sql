USE [master]
GO
/****** Object:  Database [gsb]    Script Date: 11/12/2017 16:44:18 ******/
CREATE DATABASE [gsb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'gsb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\gsb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'gsb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\gsb_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [gsb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [gsb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [gsb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [gsb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [gsb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [gsb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [gsb] SET ARITHABORT OFF 
GO
ALTER DATABASE [gsb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [gsb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [gsb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [gsb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [gsb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [gsb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [gsb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [gsb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [gsb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [gsb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [gsb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [gsb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [gsb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [gsb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [gsb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [gsb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [gsb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [gsb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [gsb] SET  MULTI_USER 
GO
ALTER DATABASE [gsb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [gsb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [gsb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [gsb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [gsb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [gsb]
GO
/****** Object:  Table [dbo].[activite_compl]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[activite_compl](
	[id_activite_compl] [int] NOT NULL,
	[date_activite] [datetime] NULL,
	[lieu_activite] [varchar](200) NULL,
	[theme_activite] [varchar](100) NULL,
	[motif_activite] [varchar](100) NULL,
 CONSTRAINT [pk_activite_compl] PRIMARY KEY CLUSTERED 
(
	[id_activite_compl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[composant]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[composant](
	[id_composant] [int] NOT NULL,
	[lib_composant] [varchar](100) NULL,
 CONSTRAINT [pk_composant] PRIMARY KEY CLUSTERED 
(
	[id_composant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[constituer]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[constituer](
	[id_composant] [int] NOT NULL,
	[id_medicament] [int] NOT NULL,
	[qte_composant] [decimal](11, 2) NULL,
 CONSTRAINT [pk_constituer] PRIMARY KEY CLUSTERED 
(
	[id_composant] ASC,
	[id_medicament] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dosage]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dosage](
	[id_dosage] [int] NOT NULL,
	[qte_dosage] [int] NULL,
	[unite_dosage] [char](10) NULL,
 CONSTRAINT [pk_dosage] PRIMARY KEY CLUSTERED 
(
	[id_dosage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[etat]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[etat](
	[id_etat] [int] NOT NULL,
	[lib_etat] [varchar](120) NULL,
 CONSTRAINT [pk_etat] PRIMARY KEY CLUSTERED 
(
	[id_etat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[famille]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[famille](
	[id_famille] [int] NOT NULL,
	[lib_famille] [varchar](100) NULL,
 CONSTRAINT [pk_famille] PRIMARY KEY CLUSTERED 
(
	[id_famille] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[formuler]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formuler](
	[id_medicament] [int] NOT NULL,
	[id_presentation] [int] NOT NULL,
	[qte_formuler] [int] NULL,
 CONSTRAINT [pk_formuler] PRIMARY KEY CLUSTERED 
(
	[id_medicament] ASC,
	[id_presentation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[frais]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[frais](
	[id_frais] [int] NOT NULL,
	[id_etat] [int] NOT NULL,
	[anneemois] [char](6) NOT NULL,
	[id_visiteur] [int] NOT NULL,
	[nbjustificatifs] [int] NULL,
	[datemodification] [datetime] NULL,
	[montantvalide] [decimal](10, 2) NULL,
 CONSTRAINT [pk_frais] PRIMARY KEY CLUSTERED 
(
	[id_frais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fraisforfait]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fraisforfait](
	[id_fraisforfait] [int] NOT NULL,
	[lib_fraisforfait] [varchar](100) NULL,
	[montant_frais_forfait] [decimal](5, 2) NULL,
 CONSTRAINT [pk_fraisforfait] PRIMARY KEY CLUSTERED 
(
	[id_fraisforfait] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fraishorsforfait]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fraishorsforfait](
	[id_fraishorsforfait] [int] NOT NULL,
	[id_frais] [int] NOT NULL,
	[date_fraishorsforfait] [datetime] NULL,
	[montant_fraishorsforfait] [decimal](10, 2) NULL,
	[lib_fraishorsforfait] [varchar](200) NULL,
 CONSTRAINT [pk_fraishorsforfait] PRIMARY KEY CLUSTERED 
(
	[id_fraishorsforfait] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[interagir]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[interagir](
	[id_medicament] [int] NOT NULL,
	[med_id_medicament] [int] NOT NULL,
 CONSTRAINT [pk_interagir] PRIMARY KEY CLUSTERED 
(
	[id_medicament] ASC,
	[med_id_medicament] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[inviter]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inviter](
	[id_activite_compl] [int] NOT NULL,
	[id_praticien] [int] NOT NULL,
	[specialiste] [char](1) NOT NULL,
 CONSTRAINT [pk_inviter] PRIMARY KEY CLUSTERED 
(
	[id_activite_compl] ASC,
	[id_praticien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[laboratoire]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[laboratoire](
	[id_laboratoire] [int] NOT NULL,
	[nom_laboratoire] [varchar](100) NULL,
	[chef_vente] [varchar](100) NULL,
 CONSTRAINT [pk_labo] PRIMARY KEY CLUSTERED 
(
	[id_laboratoire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ligne_fraisforfait]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ligne_fraisforfait](
	[id_frais] [int] NOT NULL,
	[id_fraisforfait] [int] NOT NULL,
	[quantite_ligne] [int] NULL,
 CONSTRAINT [pk_ligne_fraisforfait] PRIMARY KEY CLUSTERED 
(
	[id_frais] ASC,
	[id_fraisforfait] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[medicament]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medicament](
	[id_medicament] [int] NOT NULL,
	[id_famille] [int] NULL,
	[depot_legal] [varchar](100) NULL,
	[nom_commercial] [varchar](100) NULL,
	[effets] [varchar](512) NULL,
	[contre_indication] [char](255) NULL,
	[prix_echantillon] [decimal](11, 2) NULL,
 CONSTRAINT [pk_medicament] PRIMARY KEY CLUSTERED 
(
	[id_medicament] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[offrir]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offrir](
	[id_medicament] [int] NOT NULL,
	[id_rapport] [int] NOT NULL,
	[id_visiteur] [int] NOT NULL,
	[qte_offerte] [int] NULL,
 CONSTRAINT [pk_offrir] PRIMARY KEY CLUSTERED 
(
	[id_medicament] ASC,
	[id_rapport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[posseder]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posseder](
	[id_praticien] [int] NOT NULL,
	[id_specialite] [int] NOT NULL,
	[diplome] [varchar](100) NULL,
	[coef_prescription] [decimal](11, 2) NULL,
 CONSTRAINT [pk_posseder] PRIMARY KEY CLUSTERED 
(
	[id_praticien] ASC,
	[id_specialite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[praticien]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[praticien](
	[id_praticien] [int] NOT NULL,
	[id_type_praticien] [int] NULL,
	[nom_praticien] [varchar](100) NULL,
	[prenom_praticien] [varchar](100) NULL,
	[adresse_praticien] [varchar](200) NULL,
	[cp_praticien] [char](5) NULL,
	[ville_praticien] [varchar](100) NULL,
	[coef_notoriete] [decimal](11, 2) NULL,
 CONSTRAINT [pk_praticien] PRIMARY KEY CLUSTERED 
(
	[id_praticien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prescrire]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prescrire](
	[id_dosage] [int] NOT NULL,
	[id_medicament] [int] NOT NULL,
	[id_type_individu] [int] NOT NULL,
	[posologie] [varchar](100) NULL,
 CONSTRAINT [pk_prescrire] PRIMARY KEY CLUSTERED 
(
	[id_dosage] ASC,
	[id_medicament] ASC,
	[id_type_individu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[presentation]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presentation](
	[id_presentation] [int] NOT NULL,
	[lib_presentation] [varchar](100) NULL,
 CONSTRAINT [pk_presentation] PRIMARY KEY CLUSTERED 
(
	[id_presentation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rapport_visite]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rapport_visite](
	[id_rapport] [int] NOT NULL,
	[id_praticien] [int] NULL,
	[id_visiteur] [int] NOT NULL,
	[date_rapport] [datetime] NULL,
	[bilan] [varchar](512) NULL,
	[motif] [varchar](255) NULL,
 CONSTRAINT [pk_rapport_visite] PRIMARY KEY CLUSTERED 
(
	[id_rapport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[realiser]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[realiser](
	[id_activite_compl] [int] NOT NULL,
	[id_visiteur] [int] NOT NULL,
	[montant_ac] [decimal](11, 2) NULL,
 CONSTRAINT [pk_realiser] PRIMARY KEY CLUSTERED 
(
	[id_activite_compl] ASC,
	[id_visiteur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[region]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[region](
	[id_region] [int] NOT NULL,
	[id_secteur] [int] NULL,
	[nom_region] [varchar](100) NULL,
 CONSTRAINT [pk_region] PRIMARY KEY CLUSTERED 
(
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[secteur]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[secteur](
	[id_secteur] [int] NOT NULL,
	[lib_secteur] [varchar](100) NULL,
 CONSTRAINT [pk_secteur] PRIMARY KEY CLUSTERED 
(
	[id_secteur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[specialite]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[specialite](
	[id_specialite] [int] NOT NULL,
	[lib_specialite] [varchar](100) NULL,
 CONSTRAINT [pk_specialite] PRIMARY KEY CLUSTERED 
(
	[id_specialite] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stats_prescriptions]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stats_prescriptions](
	[id_praticien] [int] NOT NULL,
	[id_medicament] [int] NOT NULL,
	[annee_mois] [int] NOT NULL,
	[quantite] [int] NULL,
 CONSTRAINT [pk_stats_prescriptions] PRIMARY KEY CLUSTERED 
(
	[id_praticien] ASC,
	[id_medicament] ASC,
	[annee_mois] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[travailler]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[travailler](
	[id_visiteur] [int] NOT NULL,
	[jjmmaa] [date] NOT NULL,
	[id_region] [int] NOT NULL,
	[role_visiteur] [varchar](100) NULL,
 CONSTRAINT [pk_travailler] PRIMARY KEY CLUSTERED 
(
	[id_visiteur] ASC,
	[jjmmaa] ASC,
	[id_region] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type_individu]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type_individu](
	[id_type_individu] [int] NOT NULL,
	[lib_type_individu] [varchar](100) NULL,
 CONSTRAINT [pk_type_individu] PRIMARY KEY CLUSTERED 
(
	[id_type_individu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[type_praticien]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[type_praticien](
	[id_type_praticien] [int] NOT NULL,
	[lib_type_praticien] [varchar](100) NULL,
	[lieu_type_praticien] [varchar](200) NULL,
 CONSTRAINT [pk_type_praticien] PRIMARY KEY CLUSTERED 
(
	[id_type_praticien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[visiteur]    Script Date: 11/12/2017 16:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[visiteur](
	[id_visiteur] [int] NOT NULL,
	[id_laboratoire] [int] NULL,
	[id_secteur] [int] NULL,
	[nom_visiteur] [varchar](100) NULL,
	[prenom_visiteur] [varchar](100) NULL,
	[adresse_visiteur] [varchar](200) NULL,
	[cp_visiteur] [char](5) NULL,
	[ville_visiteur] [varchar](100) NULL,
	[date_embauche] [datetime] NULL,
	[login_visiteur] [varchar](50) NULL,
	[pwd_visiteur] [varchar](200) NULL,
	[type_visiteur] [char](1) NULL,
 CONSTRAINT [pk_visiteur] PRIMARY KEY CLUSTERED 
(
	[id_visiteur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (1, N'Amoxicilline')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (2, N'Triamcinolone')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (3, N'Néomycine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (4, N'Nystatine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (5, N'Tyrothricine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (6, N'Tétracaïne')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (7, N'Acide ascorbique')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (8, N'Erythromycine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (9, N'Dextropropoxyphène')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (10, N'Paracétamol')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (11, N'Acide acétylsalicylique')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (12, N'Clarithromycine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (13, N'Clomipramine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (14, N'Mirtazapine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (15, N'Doxylamine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (16, N'Méclozine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (17, N'Adrafinil')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (18, N'Diphénydramine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (19, N'Josamycine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (20, N'Oxytétracycline')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (21, N'Lidocaïne')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (22, N'Lithium')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (23, N'Sulbutiamine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (24, N'Pyrazinamide')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (25, N'Bacitracine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (26, N'Paroxétine')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (27, N'Fosfomycine trométamol')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (28, N'Acide clavulanique')
INSERT [dbo].[composant] ([id_composant], [lib_composant]) VALUES (29, N'Codéine')
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (1, 2, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (1, 3, CAST(4.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (1, 4, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (2, 1, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (2, 28, CAST(4.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (3, 1, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (4, 1, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (5, 1, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (6, 5, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (6, 6, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (6, 7, CAST(4.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (7, 8, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (8, 8, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (9, 9, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (9, 10, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (10, 7, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (10, 10, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (10, 11, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (11, 12, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (12, 13, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (13, 14, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (14, 7, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (14, 10, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (14, 11, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (15, 15, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (16, 16, CAST(4.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (17, 17, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (18, 18, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (19, 19, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (20, 20, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (20, 21, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (21, 22, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (22, 10, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (23, 23, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (24, 24, CAST(2.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (25, 25, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (26, 26, CAST(3.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (27, 5, CAST(4.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (27, 7, CAST(5.00 AS Decimal(11, 2)))
INSERT [dbo].[constituer] ([id_composant], [id_medicament], [qte_composant]) VALUES (28, 27, CAST(1.00 AS Decimal(11, 2)))
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (1, 1, N'Heure     ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (2, 2, N'Heure     ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (3, 1, N'Jour      ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (4, 2, N'Jour      ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (5, 3, N'Jour      ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (6, 4, N'Jour      ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (7, 1, N'Semaine   ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (8, 2, N'Semaine   ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (9, 3, N'Semaine   ')
INSERT [dbo].[dosage] ([id_dosage], [qte_dosage], [unite_dosage]) VALUES (10, 4, N'Semaine   ')
INSERT [dbo].[etat] ([id_etat], [lib_etat]) VALUES (1, N'Saisie clôturée')
INSERT [dbo].[etat] ([id_etat], [lib_etat]) VALUES (2, N'Fiche créée, saisie en cours')
INSERT [dbo].[etat] ([id_etat], [lib_etat]) VALUES (3, N'Remboursée')
INSERT [dbo].[etat] ([id_etat], [lib_etat]) VALUES (4, N'Validée et mise en paiement')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (1, N'Antalgiques en association')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (2, N'Antalgiques antipyrétiques en association')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (3, N'Antidépresseur d''action centrale')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (4, N'Antivertigineux antihistaminique H1')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (5, N'Antibiotique antituberculeux')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (6, N'Antibiotique antiacnéique local')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (7, N'Antibiotique de la famille des béta-lactamines (pénicilline A)')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (8, N'Antibiotique de la famille des cyclines')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (9, N'Antibiotique de la famille des macrolides')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (10, N'Antihistaminique H1 local')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (11, N'Antidépresseur imipraminique (tricyclique)')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (12, N'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (13, N'Antibiotique local (ORL)')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (14, N'Antidépresseur IMAO non sélectif')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (15, N'Antibiotique ophtalmique')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (16, N'Antipsychotique normothymique')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (17, N'Antibiotique urinaire minute')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (18, N'Corticoïde antibiotique et antifongique à  usage local')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (19, N'Hypnotique antihistaminique')
INSERT [dbo].[famille] ([id_famille], [lib_famille]) VALUES (20, N'Psychostimulant antiasthénique')
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (1, 1, 10)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (1, 7, 54)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (2, 2, 12)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (2, 8, 84)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (3, 3, 9)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (3, 9, 42)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (4, 4, 25)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (4, 10, 23)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (5, 5, 2)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (5, 11, 25)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (6, 6, 51)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (6, 12, 15)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (7, 7, 12)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (7, 13, 17)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (8, 8, 14)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (8, 14, 18)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (9, 1, 95)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (9, 9, 47)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (10, 2, 35)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (10, 10, 12)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (11, 3, 68)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (11, 11, 23)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (12, 4, 35)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (12, 12, 25)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (13, 5, 36)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (13, 13, 45)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (14, 6, 57)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (14, 14, 63)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (15, 1, 47)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (15, 7, 12)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (16, 2, 51)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (16, 8, 52)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (17, 3, 8)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (17, 9, 68)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (18, 4, 84)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (18, 10, 38)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (19, 5, 29)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (19, 11, 39)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (20, 6, 34)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (20, 12, 54)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (21, 7, 38)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (21, 13, 5)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (22, 8, 42)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (22, 14, 42)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (23, 3, 23)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (23, 9, 50)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (24, 4, 54)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (24, 10, 68)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (25, 5, 37)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (25, 11, 39)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (26, 6, 84)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (26, 12, 7)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (27, 7, 45)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (27, 13, 71)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (28, 8, 57)
INSERT [dbo].[formuler] ([id_medicament], [id_presentation], [qte_formuler]) VALUES (28, 14, 35)
INSERT [dbo].[fraisforfait] ([id_fraisforfait], [lib_fraisforfait], [montant_frais_forfait]) VALUES (1, N'Forfait Etape', CAST(110.00 AS Decimal(5, 2)))
INSERT [dbo].[fraisforfait] ([id_fraisforfait], [lib_fraisforfait], [montant_frais_forfait]) VALUES (2, N'Frais Kilométrique', CAST(0.62 AS Decimal(5, 2)))
INSERT [dbo].[fraisforfait] ([id_fraisforfait], [lib_fraisforfait], [montant_frais_forfait]) VALUES (3, N'Nuitée Hôtel', CAST(80.00 AS Decimal(5, 2)))
INSERT [dbo].[fraisforfait] ([id_fraisforfait], [lib_fraisforfait], [montant_frais_forfait]) VALUES (4, N'Repas Restaurant', CAST(25.00 AS Decimal(5, 2)))
INSERT [dbo].[laboratoire] ([id_laboratoire], [nom_laboratoire], [chef_vente]) VALUES (1, N'Bichat', N'Suzanne Terminus')
INSERT [dbo].[laboratoire] ([id_laboratoire], [nom_laboratoire], [chef_vente]) VALUES (2, N'Gyverny', N'Marcel MacDouglas')
INSERT [dbo].[laboratoire] ([id_laboratoire], [nom_laboratoire], [chef_vente]) VALUES (3, N'Swiss Kane', N'Alain Poure')
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (1, 18, N'3MYC7', N'TRIMYCINE', N'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''infections de la peau ou de parasitisme non traités, d''acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.                                                     ', CAST(8.60 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (2, 7, N'ADIMOL9', N'ADIMOL', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines ou aux céphalosporines.                                                                                                                                                                    ', CAST(9.75 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (3, 7, N'AMOPIL7', N'AMOPIL', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', CAST(5.50 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (4, 7, N'AMOX45', N'AMOXAR', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.                                                                                                                                                                               ', NULL)
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (5, 7, N'AMOXIG12', N'AMOXI Gé', N'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.                                                                                                              ', CAST(8.50 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (6, 13, N'APATOUX22', N'APATOUX Vitamine C', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, en cas de phénylcétonurie et chez l''enfant de moins de 6 ans.                                                                                                                     ', CAST(5.25 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (7, 6, N'BACTIG10', N'BACTIGEL', N'Ce médicament est utilisé en application locale pour traiter l''acné et les infections cutanées bactériennes associées.', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.                                                                                                                                         ', CAST(6.45 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (8, 9, N'BACTIV13', N'BACTIVIL', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', CAST(7.40 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (9, 2, N'BITALV', N'BIVALIC', N'Ce médicament est utilisé pour traiter les douleurs d''intensité modérée ou intense.', N'Ce médicament est contre-indiqué en cas d''allergie aux médicaments de cette famille, d''insuffisance hépatique ou d''insuffisance rénale.                                                                                                                        ', CAST(4.70 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (10, 2, N'CARTION6', N'CARTION', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', N'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d''ulcère gastroduodénal, maladies graves du foie.                                                                                                           ', CAST(7.00 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (11, 9, N'CLAZER6', N'CLAZER', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l''ulcère gastro-duodénal, en association avec d''autres médicaments.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', CAST(2.45 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (12, 11, N'DEPRIL9', N'DEPRAMIL', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l''enfant.', N'Ce médicament est contre-indiqué en cas de glaucome ou d''adénome de la prostate, d''infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d''allergie aux antidépresseurs imipraminiques.                   ', CAST(3.75 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (13, 3, N'DIMIRTAM6', N'DIMIRTAM', N'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', N'La prise de ce produit est contre-indiquée en cas de d''allergie à  l''un des constituants.                                                                                                                                                                      ', CAST(5.62 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (14, 2, N'DOLRIL7', N'DOLORIL', N'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', N'Ce médicament est contre-indiqué en cas d''allergie au paracétamol ou aux salicylates.                                                                                                                                                                          ', CAST(11.25 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (15, 19, N'DORNOM8', N'NORMADOR', N'Ce médicament est utilisé pour traiter l''insomnie chez l''adulte.', N'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l''enfant de moins de 15 ans.                                                                                                                  ', CAST(4.75 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (16, 4, N'EQUILARX6', N'EQUILAR', N'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', N'Ce médicament ne doit pas être utilisé en cas d''allergie au produit, en cas de glaucome ou de rétention urinaire.                                                                                                                                              ', CAST(7.42 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (17, 20, N'EVILR7', N'EVEILLOR', N'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', CAST(10.00 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (18, 10, N'INSXT5', N'INSECTIL', N'Ce médicament est utilisé en application locale sur les piqûres d''insecte et l''urticaire.', N'Ce médicament est contre-indiqué en cas d''allergie aux antihistaminiques.                                                                                                                                                                                      ', CAST(5.45 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (19, 9, N'JOVAI8', N'JOVENIL', N'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).                                                                                                                                                  ', CAST(7.20 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (20, 8, N'LIDOXY23', N'LIDOXYTRACINE', N'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants. Il ne doit pas être associé aux rétinoïdes.                                                                                                                                       ', CAST(6.00 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (21, 16, N'LITHOR12', N'LITHORINE', N'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', N'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d''insuffisance rénale, ou si vous avez un régime sans sel.                                      ', CAST(8.10 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (22, 1, N'PARMOL16', N'PARMOCODEINE', N'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance hépatique ou respiratoire, d''asthme, de phénylcétonurie et chez la femme qui allaite.                                      ', CAST(5.50 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (23, 20, N'PHYSOI8', N'PHYSICOR', N'Ce médicament est utilisé pour traiter les baisses d''activité physique ou psychique, souvent dans un contexte de dépression.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.                                                                                                                                                                                   ', CAST(13.00 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (24, 5, N'PIRIZ8', N'PIRIZAN', N'Ce médicament est utilisé, en association à  d''autres antibiotiques, pour traiter la tuberculose.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''insuffisance rénale ou hépatique, d''hyperuricémie ou de porphyrie.                                                                                                              ', CAST(11.25 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (25, 15, N'POMDI20', N'POMADINE', N'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l''oeil.', N'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques appliqués localement.                                                                                                                                                                     ', CAST(9.75 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (26, 12, N'TROXT21', N'TROXADET', N'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', N'Ce médicament est contre-indiqué en cas d''allergie au produit.                                                                                                                                                                                                 ', CAST(4.12 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (27, 13, N'TXISOL22', N'TOUXISOL Vitamine C', N'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', N'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants et chez l''enfant de moins de 6 ans.                                                                                                                                                ', CAST(7.50 AS Decimal(11, 2)))
INSERT [dbo].[medicament] ([id_medicament], [id_famille], [depot_legal], [nom_commercial], [effets], [contre_indication], [prix_echantillon]) VALUES (28, 17, N'URIEG6', N'URIREGUL', N'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', N'La prise de ce médicament est contre-indiquée en cas d''allergie à  l''un des constituants et d''insuffisance rénale.                                                                                                                                             ', CAST(5.35 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (1, 1, N'Notini', N'Alain', N'114 r Authie', N'85000', N'LA ROCHE SUR YON', CAST(290.03 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (2, 2, N'Gosselin', N'Albert', N'13 r Devon', N'41000', N'BLOIS', CAST(307.49 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (3, 5, N'Delahaye', N'André', N'36 av 6 Juin', N'25000', N'BESANCON', CAST(185.79 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (4, 3, N'Leroux', N'André', N'47 av Robert Schuman', N'60000', N'BEAUVAIS', CAST(172.04 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (5, 4, N'Desmoulins', N'Anne', N'31 r St Jean', N'30000', N'NIMES', CAST(94.75 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (6, 1, N'Mouel', N'Anne', N'27 r Auvergne', N'80000', N'AMIENS', CAST(45.20 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (7, 2, N'Desgranges-Lentz', N'Antoine', N'1 r Albert de Mun', N'29000', N'MORLAIX', CAST(20.07 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (8, 5, N'Marcouiller', N'Arnaud', N'31 r St Jean', N'68000', N'MULHOUSE', CAST(396.52 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (9, 3, N'Dupuy', N'Benoit', N'9 r Demolombe', N'34000', N'MONTPELLIER', CAST(395.66 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (10, 4, N'Lerat', N'Bernard', N'31 r St Jean', N'59000', N'LILLE', CAST(257.79 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (11, 1, N'Marçais-Lefebvre', N'Bertrand', N'86Bis r Basse', N'67000', N'STRASBOURG', CAST(450.96 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (12, 2, N'Boscher', N'Bruno', N'94 r Falaise', N'10000', N'TROYES', CAST(356.14 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (13, 5, N'Morel', N'Catherine', N'21 r Chateaubriand', N'75000', N'PARIS', CAST(379.57 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (14, 3, N'Guivarch', N'Chantal', N'4 av Gén Laperrine', N'45000', N'ORLEANS', CAST(114.56 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (15, 4, N'Bessin-Grosdoit', N'Christophe', N'92 r Falaise', N'06000', N'NICE', CAST(222.06 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (16, 1, N'Rossa', N'Claire', N'14 av Thiès', N'06000', N'NICE', CAST(529.78 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (17, 2, N'Cauchy', N'Denis', N'5 av Ste Thérèse', N'11000', N'NARBONNE', CAST(458.82 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (18, 5, N'Gaffé', N'Dominique', N'9 av 1ère Armée Française', N'35000', N'RENNES', CAST(213.40 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (19, 3, N'Guenon', N'Dominique', N'98 bd Mar Lyautey', N'44000', N'NANTES', CAST(175.89 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (20, 4, N'Prévot', N'Dominique', N'29 r Lucien Nelle', N'87000', N'LIMOGES', CAST(151.36 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (21, 1, N'Houchard', N'Eliane', N'9 r Demolombe', N'49100', N'ANGERS', CAST(436.96 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (22, 2, N'Desmons', N'Elisabeth', N'51 r Bernières', N'29000', N'QUIMPER', CAST(281.17 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (23, 5, N'Flament', N'Elisabeth', N'11 r Pasteur', N'35000', N'RENNES', CAST(315.60 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (24, 3, N'Goussard', N'Emmanuel', N'9 r Demolombe', N'41000', N'BLOIS', CAST(40.72 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (25, 4, N'Desprez', N'Eric', N'9 r Vaucelles', N'33000', N'BORDEAUX', CAST(406.85 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (26, 1, N'Coste', N'Evelyne', N'29 r Lucien Nelle', N'19000', N'TULLE', CAST(441.87 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (27, 2, N'Lefebvre', N'Frédéric', N'2 pl Wurzburg', N'55000', N'VERDUN', CAST(573.63 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (28, 5, N'Lemée', N'Frédéric', N'29 av 6 Juin', N'56000', N'VANNES', CAST(326.40 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (29, 3, N'Martin', N'Frédéric', N'Bât A 90 r Bayeux', N'70000', N'VESOUL', CAST(506.06 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (30, 4, N'Marie', N'Frédérique', N'172 r Caponière', N'70000', N'VESOUL', CAST(313.31 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (31, 1, N'Rosenstech', N'Geneviève', N'27 r Auvergne', N'75000', N'PARIS', CAST(366.82 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (32, 2, N'Pontavice', N'Ghislaine', N'8 r Gaillon', N'86000', N'POITIERS', CAST(265.58 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (33, 5, N'Leveneur-Mosquet', N'Guillaume', N'47 av Robert Schuman', N'64000', N'PAU', CAST(184.97 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (34, 3, N'Blanchais', N'Guy', N'30 r Authie', N'08000', N'SEDAN', CAST(502.48 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (35, 4, N'Leveneur', N'Hugues', N'7 pl St Gilles', N'62000', N'ARRAS', CAST(7.39 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (36, 1, N'Mosquet', N'Isabelle', N'22 r Jules Verne', N'76000', N'ROUEN', CAST(77.10 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (37, 2, N'Giraudon', N'Jean-Christophe', N'1 r Albert de Mun', N'38100', N'VIENNE', CAST(92.62 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (38, 5, N'Marie', N'Jean-Claude', N'26 r Hérouville', N'69000', N'LYON', CAST(120.10 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (39, 3, N'Maury', N'Jean-François', N'5 r Pierre Girard', N'71000', N'CHALON SUR SAONE', CAST(13.73 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (40, 4, N'Dennel', N'Jean-Louis', N'7 pl St Gilles', N'28000', N'CHARTRES', CAST(550.69 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (41, 1, N'Ain', N'Jean-Pierre', N'4 résid Olympia', N'02000', N'LAON', CAST(5.59 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (42, 2, N'Chemery', N'Jean-Pierre', N'51 pl Ancienne Boucherie', N'14000', N'CAEN', CAST(396.58 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (43, 5, N'Comoz', N'Jean-Pierre', N'35 r Auguste Lechesne', N'18000', N'BOURGES', CAST(340.35 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (44, 3, N'Desfaudais', N'Jean-Pierre', N'7 pl St Gilles', N'29000', N'BREST', CAST(71.76 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (45, 4, N'Phan', N'JérÃ´me', N'9 r Clos Caillet', N'79000', N'NIORT', CAST(451.61 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (46, 1, N'Riou', N'Line', N'43 bd Gén Vanier', N'77000', N'MARNE LA VALLEE', CAST(193.25 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (47, 2, N'Chubilleau', N'Louis', N'46 r Eglise', N'17000', N'SAINTES', CAST(202.07 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (48, 5, N'Lebrun', N'Lucette', N'178 r Auge', N'54000', N'NANCY', CAST(410.41 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (49, 3, N'Goessens', N'Marc', N'6 av 6 Juin', N'39000', N'DOLE', CAST(548.57 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (50, 4, N'Laforge', N'Marc', N'5 résid Prairie', N'50000', N'SAINT LO', CAST(265.05 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (51, 1, N'Millereau', N'Marc', N'36 av 6 Juin', N'72000', N'LA FERTE BERNARD', CAST(430.42 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (52, 2, N'Dauverne', N'Marie-Christine', N'69 av Charlemagne', N'21000', N'DIJON', CAST(281.05 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (53, 5, N'Vittorio', N'Myriam', N'3 pl Champlain', N'94000', N'BOISSY SAINT LEGER', CAST(356.23 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (54, 3, N'Lapasset', N'Nhieu', N'31 av 6 Juin', N'52000', N'CHAUMONT', CAST(107.00 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (55, 4, N'Plantet-Besnier', N'Nicole', N'10 av 1ère Armée Française', N'86000', N'CHATELLEREAULT', CAST(369.94 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (56, 1, N'Chubilleau', N'Pascal', N'3 r Hastings', N'15000', N'AURRILLAC', CAST(290.75 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (57, 2, N'Robert', N'Pascal', N'31 r St Jean', N'93000', N'BOBIGNY', CAST(162.41 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (58, 5, N'Jean', N'Pascale', N'114 r Authie', N'49100', N'SAUMUR', CAST(375.52 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (59, 3, N'Chanteloube', N'Patrice', N'14 av Thiès', N'13000', N'MARSEILLE', CAST(478.01 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (60, 4, N'Lecuirot', N'Patrice', N'résid St Pères 55 r Pigacière', N'54000', N'NANCY', CAST(239.66 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (61, 1, N'Gandon', N'Patrick', N'47 av Robert Schuman', N'37000', N'TOURS', CAST(599.06 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (62, 2, N'Mirouf', N'Patrick', N'22 r Puits Picard', N'74000', N'ANNECY', CAST(458.42 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (63, 5, N'Boireaux', N'Philippe', N'14 av Thiès', N'10000', N'CHALON EN CHAMPAGNE', CAST(454.48 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (64, 3, N'Cendrier', N'Philippe', N'7 pl St Gilles', N'12000', N'RODEZ', CAST(164.16 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (65, 4, N'Duhamel', N'Philippe', N'114 r Authie', N'34000', N'MONTPELLIER', CAST(98.62 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (66, 1, N'Grigy', N'Philippe', N'15 r Mélingue', N'44000', N'CLISSON', CAST(285.10 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (67, 2, N'Linard', N'Philippe', N'1 r Albert de Mun', N'81000', N'ALBI', CAST(486.30 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (68, 5, N'Lozier', N'Philippe', N'8 r Gaillon', N'31000', N'TOULOUSE', CAST(48.40 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (69, 3, N'Dechâtre', N'Pierre', N'63 av Thiès', N'23000', N'MONTLUCON', CAST(253.75 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (70, 4, N'Goessens', N'Pierre', N'22 r Jean Romain', N'40000', N'MONT DE MARSAN', CAST(426.19 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (71, 1, N'Leménager', N'Pierre', N'39 av 6 Juin', N'57000', N'METZ', CAST(118.70 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (72, 2, N'Née', N'Pierre', N'39 av 6 Juin', N'82000', N'MONTAUBAN', CAST(72.54 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (73, 5, N'Guyot', N'Pierre-Laurent', N'43 bd Gén Vanier', N'48000', N'MENDE', CAST(352.31 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (74, 3, N'Chauchard', N'Roger', N'9 r Vaucelles', N'13000', N'MARSEILLE', CAST(552.19 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (75, 4, N'Mabire', N'Roland', N'11 r Boutiques', N'67000', N'STRASBOURG', CAST(422.39 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (76, 1, N'Leroy', N'Soazig', N'45 r Boutiques', N'61000', N'ALENCON', CAST(570.67 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (77, 2, N'Guyot', N'Stéphane', N'26 r Hérouville', N'46000', N'FIGEAC', CAST(28.85 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (78, 5, N'Delposen', N'Sylvain', N'39 av 6 Juin', N'27000', N'DREUX', CAST(292.01 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (79, 3, N'Rault', N'Sylvie', N'15 bd Richemond', N'02000', N'SOISSON', CAST(526.60 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (80, 4, N'Renouf', N'Sylvie', N'98 bd Mar Lyautey', N'88000', N'EPINAL', CAST(425.24 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (81, 1, N'Alliet-Grach', N'Thierry', N'14 av Thiès', N'07000', N'PRIVAS', CAST(451.31 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (82, 2, N'Bayard', N'Thierry', N'92 r Falaise', N'42000', N'SAINT ETIENNE', CAST(271.71 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (83, 5, N'Gauchet', N'Thierry', N'7 r Desmoueux', N'38100', N'GRENOBLE', CAST(406.10 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (84, 3, N'Bobichon', N'Tristan', N'219 r Caponière', N'09000', N'FOIX', CAST(218.36 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (85, 4, N'Duchemin-Laniel', N'Véronique', N'130 r St Jean', N'33000', N'LIBOURNE', CAST(265.61 AS Decimal(11, 2)))
INSERT [dbo].[praticien] ([id_praticien], [id_type_praticien], [nom_praticien], [prenom_praticien], [adresse_praticien], [cp_praticien], [ville_praticien], [coef_notoriete]) VALUES (86, 1, N'Laurent', N'Younès', N'34 r Demolombe', N'53000', N'MAYENNE', CAST(496.10 AS Decimal(11, 2)))
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (1, N'Gélule')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (2, N'Comprimé enrobé')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (3, N'Comprimé pelliculé')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (4, N'Comprimé à sucer')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (5, N'Comprimé effervescent')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (6, N'Comprimé pelliculé')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (7, N'Comprimé à croquer')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (8, N'Comprimé gastro-résistant')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (9, N'Sirop')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (10, N'Suppositoire')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (11, N'Granulé')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (12, N'Collutoire')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (13, N'Gouttes')
INSERT [dbo].[presentation] ([id_presentation], [lib_presentation]) VALUES (14, N'Sachet')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (1, 1, N'Alsace Lorraine')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (2, 5, N'Aquitaine')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (3, 4, N'Auvergne')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (4, 3, N'Bretagne')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (5, 3, N'Basse Normandie')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (6, 1, N'Bourgogne')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (7, 2, N'Champagne Ardennes')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (8, 4, N'Centre')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (9, 1, N'Franche Comté')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (10, 2, N'Haute Normandie')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (11, 4, N'Ile de France')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (12, 5, N'Languedoc')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (13, 4, N'Limousin')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (14, 5, N'Midi Pyrénée')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (15, 2, N'Nord Pas de Calais')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (16, 5, N'Provence Alpes Cote d''Azur')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (17, 3, N'Poitou Charente')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (18, 2, N'Picardie')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (19, 3, N'Pays de Loire')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (20, 1, N'Rhone Alpes')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (21, 5, N'Roussilon')
INSERT [dbo].[region] ([id_region], [id_secteur], [nom_region]) VALUES (22, 3, N'Vendée')
INSERT [dbo].[secteur] ([id_secteur], [lib_secteur]) VALUES (1, N'Est')
INSERT [dbo].[secteur] ([id_secteur], [lib_secteur]) VALUES (2, N'Nord')
INSERT [dbo].[secteur] ([id_secteur], [lib_secteur]) VALUES (3, N'Ouest')
INSERT [dbo].[secteur] ([id_secteur], [lib_secteur]) VALUES (4, N'Paris centre')
INSERT [dbo].[secteur] ([id_secteur], [lib_secteur]) VALUES (5, N'Sud')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (1, N'anatomie et cytologie pathologiques')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (2, N'angéiologie, médecine vasculaire')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (3, N'anesthésiologie et réanimation chirurgicale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (4, N'biologie médicale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (5, N'cardiologie et affections cardio-vasculaires')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (6, N'chirurgie cardio-vasculaire et thoracique')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (7, N'chirurgie générale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (8, N'chirurgie maxillo-faciale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (9, N'cancérologie, oncologie médicale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (10, N'chirurgie orthopédique et traumatologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (11, N'chirurgie plastique reconstructrice et esthétique')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (12, N'chirurgie urologique')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (13, N'chirurgie vasculaire')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (14, N'diabétologie-nutrition, nutrition')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (15, N'dermatologie et vénéréologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (16, N'endocrinologie et métabolismes')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (17, N'évaluation et traitement de la douleur')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (18, N'gastro-entérologie et hépatologie (appareil digestif)')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (19, N'gynécologie médicale, obstétrique')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (20, N'gynécologie-obstétrique')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (21, N'maladies du sang (hématologie)')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (22, N'médecine et biologie du sport')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (23, N'médecine du travail')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (24, N'médecine manuelle - ostéopathie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (25, N'médecine nucléaire')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (26, N'médecine physique et de réadaptation')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (27, N'médecine tropicale, pathologie infectieuse et tropicale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (28, N'néphrologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (29, N'neurochirurgie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (30, N'neurologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (31, N'orthopédie dento maxillo-faciale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (32, N'ophtalmologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (33, N'oto-rhino-laryngologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (34, N'psychiatrie de l''enfant et de l''adolescent')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (35, N'pédiatrie maladies des enfants')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (36, N'pneumologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (37, N'psychiatrie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (38, N'radiologie (radiodiagnostic et imagerie médicale)')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (39, N'radiothérapie (oncologie option radiothérapie)')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (40, N'reproduction et gynécologie médicale')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (41, N'rhumatologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (42, N'stomatologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (43, N'sexologie')
INSERT [dbo].[specialite] ([id_specialite], [lib_specialite]) VALUES (44, N'toxicomanie et alcoologie')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (1, CAST(N'1992-12-11' AS Date), 5, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (1, CAST(N'1996-05-27' AS Date), 4, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (2, CAST(N'1991-08-26' AS Date), 20, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (2, CAST(N'1997-09-19' AS Date), 20, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (3, CAST(N'1987-07-17' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (3, CAST(N'1995-05-19' AS Date), 21, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (3, CAST(N'1999-08-21' AS Date), 21, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (4, CAST(N'1999-01-02' AS Date), 17, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (5, CAST(N'1996-03-11' AS Date), 1, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (6, CAST(N'1997-03-21' AS Date), 4, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (7, CAST(N'1999-01-31' AS Date), 19, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (8, CAST(N'1994-07-03' AS Date), 19, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (8, CAST(N'2000-01-01' AS Date), 19, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (9, CAST(N'2000-08-02' AS Date), 12, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (10, CAST(N'1993-12-06' AS Date), 8, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (10, CAST(N'1999-06-18' AS Date), 8, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (11, CAST(N'1997-09-25' AS Date), 2, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (12, CAST(N'1998-01-18' AS Date), 16, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (13, CAST(N'1995-10-21' AS Date), 20, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (14, CAST(N'1989-02-01' AS Date), 16, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (14, CAST(N'1997-02-01' AS Date), 16, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (14, CAST(N'2001-03-03' AS Date), 16, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (15, CAST(N'1992-05-05' AS Date), 7, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (16, CAST(N'1991-04-09' AS Date), 1, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (17, CAST(N'1991-12-05' AS Date), 19, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (18, CAST(N'1997-11-18' AS Date), 9, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (18, CAST(N'2002-03-20' AS Date), 9, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (19, CAST(N'1989-03-24' AS Date), 1, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (20, CAST(N'1993-05-17' AS Date), 1, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (20, CAST(N'2000-02-29' AS Date), 1, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (21, CAST(N'1988-04-26' AS Date), 11, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (22, CAST(N'1996-02-19' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (23, CAST(N'1990-11-27' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (23, CAST(N'1995-11-27' AS Date), 14, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (23, CAST(N'2000-11-27' AS Date), 2, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (24, CAST(N'1991-10-31' AS Date), 10, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (25, CAST(N'1993-06-08' AS Date), 20, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (26, CAST(N'1997-02-15' AS Date), 20, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (27, CAST(N'1994-05-03' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (28, CAST(N'1996-01-18' AS Date), 11, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (29, CAST(N'1999-03-27' AS Date), 18, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (29, CAST(N'2000-10-31' AS Date), 18, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (30, CAST(N'1985-10-02' AS Date), 4, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (31, CAST(N'1996-01-13' AS Date), 13, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (32, CAST(N'1993-05-08' AS Date), 13, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (33, CAST(N'1998-04-26' AS Date), 11, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (34, CAST(N'1993-08-26' AS Date), 3, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (35, CAST(N'1992-11-01' AS Date), 7, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (36, CAST(N'1998-02-25' AS Date), 7, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (37, CAST(N'1992-12-16' AS Date), 15, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (38, CAST(N'1998-06-18' AS Date), 11, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (39, CAST(N'1996-11-21' AS Date), 12, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (40, CAST(N'1983-03-23' AS Date), 7, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (40, CAST(N'1992-04-03' AS Date), 1, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (41, CAST(N'1995-02-02' AS Date), 19, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (42, CAST(N'1995-06-05' AS Date), 17, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (43, CAST(N'1997-01-24' AS Date), 19, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (44, CAST(N'1996-02-27' AS Date), 9, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (45, CAST(N'1987-10-06' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (46, CAST(N'1990-10-13' AS Date), 1, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (46, CAST(N'1999-04-08' AS Date), 1, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (47, CAST(N'1996-03-06' AS Date), 10, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (48, CAST(N'1992-08-30' AS Date), 8, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (49, CAST(N'1994-12-19' AS Date), 18, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (50, CAST(N'1995-01-05' AS Date), 12, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (51, CAST(N'1992-12-24' AS Date), 11, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (52, CAST(N'1992-12-14' AS Date), 5, N'Délégué')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (52, CAST(N'1999-07-17' AS Date), 5, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (53, CAST(N'1998-07-27' AS Date), 17, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (54, CAST(N'1994-12-12' AS Date), 18, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (55, CAST(N'1977-10-03' AS Date), 8, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (56, CAST(N'1997-03-30' AS Date), 2, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (57, CAST(N'1990-03-01' AS Date), 21, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (58, CAST(N'1991-06-23' AS Date), 6, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (59, CAST(N'1997-09-06' AS Date), 5, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (60, CAST(N'1984-07-29' AS Date), 5, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (60, CAST(N'1998-05-25' AS Date), 5, N'Responsable')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (61, CAST(N'1990-06-30' AS Date), 4, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (62, CAST(N'1995-11-14' AS Date), 9, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (63, CAST(N'1992-09-25' AS Date), 13, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (64, CAST(N'1995-03-09' AS Date), 6, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (65, CAST(N'1997-08-29' AS Date), 18, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (66, CAST(N'1994-11-29' AS Date), 14, N'Visiteur')
INSERT [dbo].[travailler] ([id_visiteur], [jjmmaa], [id_region], [role_visiteur]) VALUES (67, CAST(N'1991-03-29' AS Date), 8, N'Visiteur')
INSERT [dbo].[type_praticien] ([id_type_praticien], [lib_type_praticien], [lieu_type_praticien]) VALUES (1, N'Médecin Hospitalier', N'Hopital ou clinique')
INSERT [dbo].[type_praticien] ([id_type_praticien], [lib_type_praticien], [lieu_type_praticien]) VALUES (2, N'Médecine de Ville', N'Cabinet')
INSERT [dbo].[type_praticien] ([id_type_praticien], [lib_type_praticien], [lieu_type_praticien]) VALUES (3, N'Pharmacien Hospitalier', N'Hopital ou clinique')
INSERT [dbo].[type_praticien] ([id_type_praticien], [lib_type_praticien], [lieu_type_praticien]) VALUES (4, N'Pharmacien Officine', N'Pharmacie')
INSERT [dbo].[type_praticien] ([id_type_praticien], [lib_type_praticien], [lieu_type_praticien]) VALUES (5, N'Personnel de santé', N'Centre paramédical')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (1, 3, 2, N'Villechalane', N'Louis', N'8 cours Lafontaine', N'29000', N'BREST', CAST(N'1992-11-12 00:00:00.000' AS DateTime), N'Villechalane', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (2, 2, 2, N'Andre', N'David', N'1 r Aimon de Chissée', N'38100', N'GRENOBLE', CAST(N'1991-08-26 00:00:00.000' AS DateTime), N'Andre', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (3, 2, 2, N'Bedos', N'Christian', N'1 r Bénédictins', N'65000', N'TARBES', CAST(N'1987-07-17 00:00:00.000' AS DateTime), N'Bedos', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (4, 3, 2, N'Tusseau', N'Louis', N'22 r Renou', N'86000', N'POITIERS', CAST(N'1999-02-01 00:00:00.000' AS DateTime), N'TusseauL', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (5, 2, 2, N'Bentot', N'Pascal', N'11 av 6 Juin', N'67000', N'STRASBOURG', CAST(N'1996-11-03 00:00:00.000' AS DateTime), N'Bentot', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (6, 3, 2, N'Bioret', N'Luc', N'1 r Linne', N'35000', N'RENNES', CAST(N'1997-03-21 00:00:00.000' AS DateTime), N'Bioret', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (7, 2, 2, N'Bunisset', N'Francis', N'10 r Nicolas Chorier', N'85000', N'LA ROCHE SUR YON', CAST(N'1999-01-31 00:00:00.000' AS DateTime), N'BunissetF', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (8, 3, 2, N'Bunisset', N'Denise', N'1 r Lionne', N'49100', N'ANGERS', CAST(N'1994-03-07 00:00:00.000' AS DateTime), N'BunissetD', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (9, 2, 2, N'Cacheux', N'Bernard', N'114 r Authie', N'34000', N'MONTPELLIER', CAST(N'2000-02-08 00:00:00.000' AS DateTime), N'Cacheux', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (10, 2, 3, N'Cadic', N'Eric', N'123 r Caponière', N'41000', N'BLOIS', CAST(N'1993-06-12 00:00:00.000' AS DateTime), N'Cadic', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (11, 3, 2, N'Charoze', N'Catherine', N'100 pl Géants', N'33000', N'BORDEAUX', CAST(N'1997-09-25 00:00:00.000' AS DateTime), N'Charoze', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (12, 2, 2, N'Clepkens', N'Christophe', N'12 r Fédérico Garcia Lorca', N'13000', N'MARSEILLE', CAST(N'1998-01-18 00:00:00.000' AS DateTime), N'Clepkens', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (13, 2, 2, N'Cottin', N'Vincenne', N'36 sq Capucins', N'05000', N'GAP', CAST(N'1995-10-21 00:00:00.000' AS DateTime), N'Cottin', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (14, 3, 3, N'Daburon', N'François', N'13 r Champs Elysées', N'06000', N'NICE', CAST(N'1989-01-02 00:00:00.000' AS DateTime), N'Daburon', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (15, 2, 2, N'De', N'Philippe', N'13 r Charles Peguy', N'10000', N'TROYES', CAST(N'1992-05-05 00:00:00.000' AS DateTime), N'De', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (16, 3, 2, N'Debelle', N'Michel', N'181 r Caponière', N'88000', N'EPINAL', CAST(N'1991-09-04 00:00:00.000' AS DateTime), N'DebelleM', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (17, 3, 2, N'Debelle', N'Jeanne', N'134 r Stalingrad', N'44000', N'NANTES', CAST(N'1991-05-12 00:00:00.000' AS DateTime), N'DebelleJ', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (18, 2, 1, N'Debroise', N'Michel', N'2 av 6 Juin', N'70000', N'VESOUL', CAST(N'1997-11-18 00:00:00.000' AS DateTime), N'Debroise', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (19, 2, 1, N'Desmarquest', N'Nathalie', N'14 r Fédérico Garcia Lorca', N'54000', N'NANCY', CAST(N'1989-03-24 00:00:00.000' AS DateTime), N'Desmarquest', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (20, 2, 1, N'Desnost', N'Pierre', N'16 r Barral de Montferrat', N'55000', N'VERDUN', CAST(N'1993-05-17 00:00:00.000' AS DateTime), N'Desnost', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (21, 2, 1, N'Dudouit', N'Frédéric', N'18 quai Xavier Jouvin', N'75000', N'PARIS', CAST(N'1988-04-26 00:00:00.000' AS DateTime), N'Dudouit', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (22, 2, 1, N'Duncombe', N'Claude', N'19 av Alsace Lorraine', N'09000', N'FOIX', CAST(N'1996-02-19 00:00:00.000' AS DateTime), N'Duncombe', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (23, 3, 2, N'Enault-Pascreau', N'Céline', N'25B r Stalingrad', N'40000', N'MONT DE MARSAN', CAST(N'1990-11-27 00:00:00.000' AS DateTime), N'Enault-Pascreau', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (24, 2, 1, N'Eynde', N'Valérie', N'3 r Henri Moissan', N'76000', N'ROUEN', CAST(N'1991-10-31 00:00:00.000' AS DateTime), N'Eynde', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (25, 3, 2, N'Finck', N'Jacques', N'rte Montreuil Bellay', N'74000', N'ANNECY', CAST(N'1993-08-06 00:00:00.000' AS DateTime), N'Finck', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (26, 3, 2, N'Frémont', N'Fernande', N'4 r Jean Giono', N'69000', N'LYON', CAST(N'1997-02-15 00:00:00.000' AS DateTime), N'Frémont', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (27, 2, 1, N'Gest', N'Alain', N'30 r Authie', N'46000', N'FIGEAC', CAST(N'1994-03-05 00:00:00.000' AS DateTime), N'Gest', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (28, 3, 2, N'Gheysen', N'Galassus', N'32 bd Mar Foch', N'75000', N'PARIS', CAST(N'1996-01-18 00:00:00.000' AS DateTime), N'Gheysen', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (29, 2, 2, N'Girard', N'Yvon', N'31 av 6 Juin', N'80000', N'AMIENS', CAST(N'1999-03-27 00:00:00.000' AS DateTime), N'Girard', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (30, 2, 1, N'Gombert', N'Luc', N'32 r Emile Gueymard', N'56000', N'VANNES', CAST(N'1985-02-10 00:00:00.000' AS DateTime), N'Gombert', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (31, 2, 1, N'Guindon', N'Caroline', N'40 r Mar Montgomery', N'87000', N'LIMOGES', CAST(N'1996-01-13 00:00:00.000' AS DateTime), N'GuindonC', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (32, 3, 2, N'Guindon', N'François', N'44 r Picotière', N'19000', N'TULLE', CAST(N'1993-08-05 00:00:00.000' AS DateTime), N'GuindonF', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (33, 3, 2, N'Igigabel', N'Guy', N'33 gal Arlequin', N'94000', N'CRETEIL', CAST(N'1998-04-26 00:00:00.000' AS DateTime), N'Igigabel', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (34, 2, 1, N'Jourdren', N'Pierre', N'34 av Jean Perrot', N'15000', N'AURRILLAC', CAST(N'1993-08-26 00:00:00.000' AS DateTime), N'Jourdren', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (35, 2, 1, N'Juttard', N'Pierre-Raoul', N'34 cours Jean Jaurès', N'08000', N'SEDAN', CAST(N'1992-01-11 00:00:00.000' AS DateTime), N'Juttard', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (36, 3, 2, N'Labouré-Morel', N'Saout', N'38 cours Berriat', N'52000', N'CHAUMONT', CAST(N'1998-02-25 00:00:00.000' AS DateTime), N'Labouré-Morel', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (37, 2, 1, N'Landré', N'Philippe', N'4 av Gén Laperrine', N'59000', N'LILLE', CAST(N'1992-12-16 00:00:00.000' AS DateTime), N'Landré', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (38, 2, 2, N'Langeard', N'Hugues', N'39 av Jean Perrot', N'93000', N'BAGNOLET', CAST(N'1998-06-18 00:00:00.000' AS DateTime), N'Langeard', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (39, 3, 2, N'Lanne', N'Bernard', N'4 r Bayeux', N'30000', N'NIMES', CAST(N'1996-11-21 00:00:00.000' AS DateTime), N'Lanne', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (40, 3, 2, N'Le', N'Noël', N'4 av Beauvert', N'68000', N'MULHOUSE', CAST(N'1983-03-23 00:00:00.000' AS DateTime), N'LeN', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (41, 3, 2, N'Le', N'Jean', N'39 r Raspail', N'53000', N'LAVAL', CAST(N'1995-02-02 00:00:00.000' AS DateTime), N'LeJ', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (42, 3, 2, N'Leclercq', N'Servane', N'11 r Quinconce', N'18000', N'BOURGES', CAST(N'1995-05-06 00:00:00.000' AS DateTime), N'Leclercq', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (43, 2, 3, N'Lecornu', N'Jean-Bernard', N'4 bd Mar Foch', N'72000', N'LA FERTE BERNARD', CAST(N'1997-01-24 00:00:00.000' AS DateTime), N'LecornuJ', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (44, 3, 2, N'Lecornu', N'Ludovic', N'4 r Abel Servien', N'25000', N'BESANCON', CAST(N'1996-02-27 00:00:00.000' AS DateTime), N'LecornuL', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (45, 3, 2, N'Lejard', N'Agnès', N'4 r Anthoard', N'82000', N'MONTAUBAN', CAST(N'1987-06-10 00:00:00.000' AS DateTime), N'Lejard', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (46, 2, 2, N'Lesaulnier', N'Pascal', N'47 r Thiers', N'57000', N'METZ', CAST(N'1990-10-13 00:00:00.000' AS DateTime), N'Lesaulnier', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (47, 2, 3, N'Letessier', N'Stéphane', N'5 chem Capuche', N'27000', N'EVREUX', CAST(N'1996-06-03 00:00:00.000' AS DateTime), N'Letessier', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (48, 2, 3, N'Loirat', N'Didier', N'Les Pêchers cité Bourg la Croix', N'45000', N'ORLEANS', CAST(N'1992-08-30 00:00:00.000' AS DateTime), N'Loirat', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (49, 2, 2, N'Maffezzoli', N'Thibaud', N'5 r Chateaubriand', N'02000', N'LAON', CAST(N'1994-12-19 00:00:00.000' AS DateTime), N'Maffezzoli', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (50, 2, 3, N'Mancini', N'Anne', N'5 r D''Agier', N'48000', N'MENDE', CAST(N'1995-05-01 00:00:00.000' AS DateTime), N'Mancini', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (51, 3, 3, N'Marcouiller', N'Gérard', N'7 pl St Gilles', N'91000', N'ISSY LES MOULINEAUX', CAST(N'1992-12-24 00:00:00.000' AS DateTime), N'Marcouiller', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (52, 3, 3, N'Michel', N'Jean-Claude', N'5 r Gabriel Péri', N'61000', N'FLERS', CAST(N'1992-12-14 00:00:00.000' AS DateTime), N'Michel', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (53, 2, 2, N'Montecot', N'Françoise', N'6 r Paul Valéry', N'17000', N'SAINTES', CAST(N'1998-07-27 00:00:00.000' AS DateTime), N'Montecot', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (54, 3, 2, N'Notini', N'Veronique', N'5 r Lieut Chabal', N'60000', N'BEAUVAIS', CAST(N'1994-12-12 00:00:00.000' AS DateTime), N'Notini', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (55, 2, 2, N'Onfroy', N'Den', N'5 r Sidonie Jacolin', N'37000', N'TOURS', CAST(N'1977-03-10 00:00:00.000' AS DateTime), N'Onfroy', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (56, 3, 2, N'Pascreau', N'Charles', N'57 bd Mar Foch', N'64000', N'PAU', CAST(N'1997-03-30 00:00:00.000' AS DateTime), N'Pascreau', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (57, 2, 2, N'Pernot', N'Claude-Noël', N'6 r Alexandre 1 de Yougoslavie', N'11000', N'NARBONNE', CAST(N'1990-01-03 00:00:00.000' AS DateTime), N'Pernot', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (58, 2, 2, N'Perrier', N'Maître', N'6 r Aubert Dubayet', N'71000', N'CHALON SUR SAONE', CAST(N'1991-06-23 00:00:00.000' AS DateTime), N'Perrier', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (59, 2, 2, N'Petit', N'Jean-Louis', N'7 r Ernest Renan', N'50000', N'SAINT LO', CAST(N'1997-06-09 00:00:00.000' AS DateTime), N'Petit', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (60, 2, 3, N'Piquery', N'Patrick', N'9 r Vaucelles', N'14000', N'CAEN', CAST(N'1984-07-29 00:00:00.000' AS DateTime), N'Piquery', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (61, 2, 2, N'Quiquandon', N'Joël', N'7 r Ernest Renan', N'29000', N'QUIMPER', CAST(N'1990-06-30 00:00:00.000' AS DateTime), N'Quiquandon', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (62, 3, 2, N'Retailleau', N'Josselin', N'88Bis r Saumuroise', N'39000', N'DOLE', CAST(N'1995-11-14 00:00:00.000' AS DateTime), N'RetailleauJ', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (63, 3, 2, N'Retailleau', N'Pascal', N'32 bd Ayrault', N'23000', N'MONTLUCON', CAST(N'1992-09-25 00:00:00.000' AS DateTime), N'RetailleauP', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (64, 3, 2, N'Souron', N'Maryse', N'7B r Gay Lussac', N'21000', N'DIJON', CAST(N'1995-09-03 00:00:00.000' AS DateTime), N'Souron', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (65, 3, 2, N'Tiphagne', N'Patrick', N'7B r Gay Lussac', N'62000', N'ARRAS', CAST(N'1997-08-29 00:00:00.000' AS DateTime), N'Tiphagne', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (66, 3, 2, N'Tréhet', N'Alain', N'7D chem Barral', N'12000', N'RODEZ', CAST(N'1994-11-29 00:00:00.000' AS DateTime), N'Tréhet', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (67, 2, 2, N'Tusseau', N'Josselin', N'63 r Bon Repos', N'28000', N'CHARTRES', CAST(N'1991-03-29 00:00:00.000' AS DateTime), N'TusseauJ', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (68, 1, 2, N'swiss', N'bourdin', N'', N'     ', N'', CAST(N'2003-06-18 00:00:00.000' AS DateTime), N'swiss', N'secret', N'V')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (69, 1, 3, N'Auchon', N'Paul', N'', N'     ', N'', CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'auchon', N'secret', N'P')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (70, 1, 1, N'Gathor', N'Ali', N'', N'     ', N'', CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'gathor', N'secret', N'C')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (71, 1, 2, N'Zhette', N'Annie', N'', N'     ', N'', CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'zhette', N'secret', N'A')
INSERT [dbo].[visiteur] ([id_visiteur], [id_laboratoire], [id_secteur], [nom_visiteur], [prenom_visiteur], [adresse_visiteur], [cp_visiteur], [ville_visiteur], [date_embauche], [login_visiteur], [pwd_visiteur], [type_visiteur]) VALUES (72, 1, 1, N'Khyroul', N'Pierre', N'', N'     ', N'', CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'khyroul', N'secret', N'G')
SET ANSI_PADDING ON

GO
/****** Object:  Index [uniq_login_visiteur]    Script Date: 11/12/2017 16:44:18 ******/
ALTER TABLE [dbo].[visiteur] ADD  CONSTRAINT [uniq_login_visiteur] UNIQUE NONCLUSTERED 
(
	[login_visiteur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [gsb] SET  READ_WRITE 
GO
