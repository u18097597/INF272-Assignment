USE [master]
GO
/****** Object:  Database [Deliverable4]    Script Date: 2019/10/20 9:20:38 PM ******/
CREATE DATABASE [Deliverable4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Deliverable4', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER14\MSSQL\DATA\Deliverable4.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Deliverable4_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER14\MSSQL\DATA\Deliverable4_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Deliverable4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Deliverable4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Deliverable4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Deliverable4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Deliverable4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Deliverable4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Deliverable4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Deliverable4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Deliverable4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Deliverable4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Deliverable4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Deliverable4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Deliverable4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Deliverable4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Deliverable4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Deliverable4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Deliverable4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Deliverable4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Deliverable4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Deliverable4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Deliverable4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Deliverable4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Deliverable4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Deliverable4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Deliverable4] SET RECOVERY FULL 
GO
ALTER DATABASE [Deliverable4] SET  MULTI_USER 
GO
ALTER DATABASE [Deliverable4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Deliverable4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Deliverable4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Deliverable4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Deliverable4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Deliverable4', N'ON'
GO
USE [Deliverable4]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](50) NULL,
	[AdminLastName] [varchar](50) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colour]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colour](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Colour] [varchar](50) NULL,
 CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[RegionID] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ethnicity]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ethnicity](
	[EthnicityID] [int] IDENTITY(1,1) NOT NULL,
	[Ethnicity] [varchar](50) NULL,
 CONSTRAINT [PK_Ethnicity] PRIMARY KEY CLUSTERED 
(
	[EthnicityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [int] IDENTITY(1,1) NOT NULL,
	[Grade] [int] NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Institution]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institution](
	[InstitutionID] [int] IDENTITY(1,1) NOT NULL,
	[InstID] [int] NULL,
	[InstName] [varchar](100) NULL,
	[RegionID] [int] NULL,
 CONSTRAINT [PK_Institution] PRIMARY KEY CLUSTERED 
(
	[InstitutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InstitutionType]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InstitutionType](
	[InstID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NULL,
 CONSTRAINT [PK_InstitutionType] PRIMARY KEY CLUSTERED 
(
	[InstID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Material]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialTypeID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Link] [varchar](100) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionID] [int] IDENTITY(1,1) NOT NULL,
	[RegZipCode] [int] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[StudentLastName] [varchar](50) NULL,
	[CellNumber] [int] NULL,
	[EthnicityID] [int] NULL,
	[GradeID] [int] NULL,
	[UserID] [int] NULL,
	[InstitutionID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentSubject]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubject](
	[StudentID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Year] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subject]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubjectMaterial]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubjectMaterial](
	[SubjectID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[SubjectMaterial] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[UserRole] [varchar](100) NULL,
	[UserEmail] [varchar](100) NULL,
	[GUID] [varchar](100) NULL,
	[GUIDExpiry] [datetime] NULL,
	[UserTypeID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2019/10/20 9:20:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_User]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Region]
GO
ALTER TABLE [dbo].[Institution]  WITH CHECK ADD  CONSTRAINT [FK_Institution_InstitutionType] FOREIGN KEY([InstID])
REFERENCES [dbo].[InstitutionType] ([InstID])
GO
ALTER TABLE [dbo].[Institution] CHECK CONSTRAINT [FK_Institution_InstitutionType]
GO
ALTER TABLE [dbo].[Institution]  WITH CHECK ADD  CONSTRAINT [FK_Institution_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
ALTER TABLE [dbo].[Institution] CHECK CONSTRAINT [FK_Institution_Region]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([MaterialTypeID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Ethnicity] FOREIGN KEY([EthnicityID])
REFERENCES [dbo].[Ethnicity] ([EthnicityID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Ethnicity]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Grade] FOREIGN KEY([GradeID])
REFERENCES [dbo].[Grade] ([GradeID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Grade]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Institution] FOREIGN KEY([InstitutionID])
REFERENCES [dbo].[Institution] ([InstitutionID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Institution]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_Student]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_Subject]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Colour] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Colour] ([SubjectID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Colour]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Image] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Image] ([SubjectID])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Image]
GO
ALTER TABLE [dbo].[SubjectMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SubjectMaterial_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[SubjectMaterial] CHECK CONSTRAINT [FK_SubjectMaterial_Material]
GO
ALTER TABLE [dbo].[SubjectMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SubjectMaterial_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([SubjectID])
GO
ALTER TABLE [dbo].[SubjectMaterial] CHECK CONSTRAINT [FK_SubjectMaterial_Subject]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
USE [master]
GO
ALTER DATABASE [Deliverable4] SET  READ_WRITE 
GO
