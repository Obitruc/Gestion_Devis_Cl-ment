USE [Gestion_Devis_Blanchard]
GO

-- TABLE DEVIS
CREATE TABLE [dbo].[Devis](
	[DevisId] [uniqueidentifier] NOT NULL,
	[Numero] [numeric](18, 0) NOT NULL,
	[Date] [date] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[DestinataireId] [uniqueidentifier] NOT NULL,
	[Objet] [nvarchar](50) NOT NULL,
	[SiretBlanchard] [numeric](18, 0) NOT NULL,
	[NomBlanchard] [nvarchar](20) NOT NULL,
	[AdresseBlanchard] [nvarchar](50) NOT NULL,
	[Items] [uniqueidentifier] NOT NULL,
	[Total] [numeric](18, 0) NOT NULL,
	[Remise] [numeric](18, 0) NOT NULL,
	[MontantFinal] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Devis] PRIMARY KEY CLUSTERED 
(
	[DevisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--TABLE CLIENTS
CREATE TABLE [dbo].[Clients](
	[ClientsId] [uniqueidentifier] NOT NULL,
	[DateEnregistrementClient] [date] NOT NULL,
	[NomClient] [nvarchar](50) NOT NULL,
	[AdresseClient] [nvarchar](50) NOT NULL,
	[CodePostalClient] [nvarchar](10) NOT NULL,
	[VilleClient] [nvarchar](20) NOT NULL,
	[TelephoneClient] [nvarchar](20) NOT NULL,
	[ObjetClient] [nvarchar](50) NOT NULL,
	[Remise] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--TABLE ITEMS
CREATE TABLE [dbo].[Items](
	[ItemsId] [uniqueidentifier] NOT NULL,
	[ZoneItems] [nvarchar](50) NOT NULL,
	[QuantiteItems] [numeric](18, 0) NOT NULL,
	[UnitesItems] [uniqueidentifier] NOT NULL,
	[DescriptionItems] [uniqueidentifier] NOT NULL,
	[PrixUnitaireItems] [uniqueidentifier] NOT NULL,
	[PrixTotalItems] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--TABLE DESCRIPTION
CREATE TABLE [dbo].[Description](
	[DescriptionId] [uniqueidentifier] NOT NULL,
	[LibelleDescription] [nvarchar](50) NOT NULL,
	[DetailsDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[DescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--TABLE UNITES
CREATE TABLE [dbo].[Unites](
	[UnitesId] [uniqueidentifier] NOT NULL,
	[DescriptionUnite] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Unites] PRIMARY KEY CLUSTERED 
(
	[UnitesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- TABLE PRIX UNITES
CREATE TABLE [dbo].[PrixUnites](
	[PrixId] [uniqueidentifier] NOT NULL,
	[Prix] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_PrixUnites] PRIMARY KEY CLUSTERED 
(
	[PrixId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

