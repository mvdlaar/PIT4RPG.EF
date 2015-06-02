
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/02/2015 12:35:49
-- Generated from EDMX file: D:\Projects\PIT4RPG_EF\PIT4RPG_EF\PIT4RPGModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PIT4RPG];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CharacterUitrusting]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UitrustingSet] DROP CONSTRAINT [FK_CharacterUitrusting];
GO
IF OBJECT_ID(N'[dbo].[FK_Boogschutter_inherits_Character]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterSet_Boogschutter] DROP CONSTRAINT [FK_Boogschutter_inherits_Character];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CharacterSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterSet];
GO
IF OBJECT_ID(N'[dbo].[UitrustingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UitrustingSet];
GO
IF OBJECT_ID(N'[dbo].[CharacterSet_Boogschutter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterSet_Boogschutter];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CharacterSet'
CREATE TABLE [dbo].[CharacterSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Levens] int  NOT NULL,
    [Aanval] int  NOT NULL,
    [Verdediging] int  NOT NULL
);
GO

-- Creating table 'UitrustingSet'
CREATE TABLE [dbo].[UitrustingSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Character_Id] int  NULL
);
GO

-- Creating table 'CharacterSet_Boogschutter'
CREATE TABLE [dbo].[CharacterSet_Boogschutter] (
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CharacterSet'
ALTER TABLE [dbo].[CharacterSet]
ADD CONSTRAINT [PK_CharacterSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UitrustingSet'
ALTER TABLE [dbo].[UitrustingSet]
ADD CONSTRAINT [PK_UitrustingSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CharacterSet_Boogschutter'
ALTER TABLE [dbo].[CharacterSet_Boogschutter]
ADD CONSTRAINT [PK_CharacterSet_Boogschutter]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Character_Id] in table 'UitrustingSet'
ALTER TABLE [dbo].[UitrustingSet]
ADD CONSTRAINT [FK_CharacterUitrusting]
    FOREIGN KEY ([Character_Id])
    REFERENCES [dbo].[CharacterSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterUitrusting'
CREATE INDEX [IX_FK_CharacterUitrusting]
ON [dbo].[UitrustingSet]
    ([Character_Id]);
GO

-- Creating foreign key on [Id] in table 'CharacterSet_Boogschutter'
ALTER TABLE [dbo].[CharacterSet_Boogschutter]
ADD CONSTRAINT [FK_Boogschutter_inherits_Character]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[CharacterSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------