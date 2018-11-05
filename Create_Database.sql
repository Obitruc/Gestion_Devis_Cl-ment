USE [Master]
GO

--****** Object:  Database [Gestion_Devis_Blanchard]    Script Date: 29/10/2018 21:08:47 ******/
CREATE DATABASE [Gestion_Devis_Blanchard]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gestion_Devis_Blanchard', FILENAME = N'E:\Développement\Softwares\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Gestion_Devis_Blanchard.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gestion_Devis_Blanchard_log', FILENAME = N'E:\Développement\Softwares\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Gestion_Devis_Blanchard_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Gestion_Devis_Blanchard] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gestion_Devis_Blanchard].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO


