USE [Gestion_Devis_Blanchard]
GO

-- TABLE DEVISCLIENTS FK
CREATE TABLE [dbo].[DevisClients](
	[DevisId] [uniqueidentifier] NOT NULL,
	[ClientsId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DevisClients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_DevisClients] FOREIGN KEY([ClientsId])
REFERENCES [dbo].[Clients] ([ClientsId])
GO

ALTER TABLE [dbo].[DevisClients] CHECK CONSTRAINT [FK_Clients_DevisClients]
GO

ALTER TABLE [dbo].[DevisClients]  WITH CHECK ADD  CONSTRAINT [FK_Devis_DevisClients] FOREIGN KEY([DevisId])
REFERENCES [dbo].[Devis] ([DevisId])
GO

ALTER TABLE [dbo].[DevisClients] CHECK CONSTRAINT [FK_Devis_DevisClients]
GO

--TABLE DEVISITEMS FK
CREATE TABLE [dbo].[DevisItems](
	[DevisId] [uniqueidentifier] NOT NULL,
	[ItemsId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DevisItems]  WITH CHECK ADD  CONSTRAINT [FK_Devis_DevisItems] FOREIGN KEY([DevisId])
REFERENCES [dbo].[Devis] ([DevisId])
GO

ALTER TABLE [dbo].[DevisItems] CHECK CONSTRAINT [FK_Devis_DevisItems]
GO

ALTER TABLE [dbo].[DevisItems]  WITH CHECK ADD  CONSTRAINT [FK_Items_DevisItems] FOREIGN KEY([ItemsId])
REFERENCES [dbo].[Items] ([ItemsId])
GO

ALTER TABLE [dbo].[DevisItems] CHECK CONSTRAINT [FK_Items_DevisItems]
GO

-- TABLE ITEMSDESCRIPTION FK
CREATE TABLE [dbo].[ItemsDescription](
	[ItemsId] [uniqueidentifier] NOT NULL,
	[DescriptionId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ItemsDescription]  WITH CHECK ADD  CONSTRAINT [FK_Description_ItemsDescription] FOREIGN KEY([DescriptionId])
REFERENCES [dbo].[Description] ([DescriptionId])
GO

ALTER TABLE [dbo].[ItemsDescription] CHECK CONSTRAINT [FK_Description_ItemsDescription]
GO

ALTER TABLE [dbo].[ItemsDescription]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemsDescription] FOREIGN KEY([ItemsId])
REFERENCES [dbo].[Items] ([ItemsId])
GO

ALTER TABLE [dbo].[ItemsDescription] CHECK CONSTRAINT [FK_Items_ItemsDescription]
GO

-- TABLE ITEMSPRIXUNITES FK
CREATE TABLE [dbo].[ItemsPrixUnites](
	[ItemsId] [uniqueidentifier] NOT NULL,
	[PrixUnitesId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ItemsPrixUnites]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemsPrixUnites] FOREIGN KEY([ItemsId])
REFERENCES [dbo].[Items] ([ItemsId])
GO

ALTER TABLE [dbo].[ItemsPrixUnites] CHECK CONSTRAINT [FK_Items_ItemsPrixUnites]
GO

ALTER TABLE [dbo].[ItemsPrixUnites]  WITH CHECK ADD  CONSTRAINT [FK_PrixUnites_ItemsPrixUnites] FOREIGN KEY([PrixUnitesId])
REFERENCES [dbo].[PrixUnites] ([PrixId])
GO

ALTER TABLE [dbo].[ItemsPrixUnites] CHECK CONSTRAINT [FK_PrixUnites_ItemsPrixUnites]
GO

-- TABLE ITEMSUNITES FK
CREATE TABLE [dbo].[ItemsUnites](
	[ItemsId] [uniqueidentifier] NOT NULL,
	[UnitesId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ItemsUnites]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemsUnites] FOREIGN KEY([ItemsId])
REFERENCES [dbo].[Items] ([ItemsId])
GO

ALTER TABLE [dbo].[ItemsUnites] CHECK CONSTRAINT [FK_Items_ItemsUnites]
GO

ALTER TABLE [dbo].[ItemsUnites]  WITH CHECK ADD  CONSTRAINT [FK_Unites_ItemsUnites] FOREIGN KEY([UnitesId])
REFERENCES [dbo].[Unites] ([UnitesId])
GO

ALTER TABLE [dbo].[ItemsUnites] CHECK CONSTRAINT [FK_Unites_ItemsUnites]
GO
