USE [ClinicManagementIIUI]
GO
ALTER TABLE [dbo].[tbl_Staff] DROP CONSTRAINT [FK_tbl_Staff_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Report] DROP CONSTRAINT [FK_tbl_Report_tbl_User1]
GO
ALTER TABLE [dbo].[tbl_Report] DROP CONSTRAINT [FK_tbl_Report_tbl_User]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] DROP CONSTRAINT [FK_tbl_PatientLabTest_tbl_LabTest]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] DROP CONSTRAINT [FK_tbl_LabTest_tbl_Staff]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] DROP CONSTRAINT [FK_tbl_LabTest_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Patient] DROP CONSTRAINT [FK_tbl_Patient_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Login] DROP CONSTRAINT [FK_tbl_Login_tbl_User]
GO
ALTER TABLE [dbo].[tbl_DoctorSchedule] DROP CONSTRAINT [FK_tbl_DoctorSchedule_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Doctor] DROP CONSTRAINT [FK_tbl_Doctor_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Case] DROP CONSTRAINT [FK_tbl_Case_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Case] DROP CONSTRAINT [FK_tbl_Case_tbl_Doctor]
GO
ALTER TABLE [dbo].[tbl_Appointment] DROP CONSTRAINT [FK_tbl_Appointment_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Appointment] DROP CONSTRAINT [FK_tbl_Appointment_tbl_Doctor]
GO
ALTER TABLE [dbo].[tbl_User] DROP CONSTRAINT [DF_tbl_User_CreatedAt]
GO
ALTER TABLE [dbo].[tbl_User] DROP CONSTRAINT [DF_tbl_User_IsDel]
GO
ALTER TABLE [dbo].[tbl_User] DROP CONSTRAINT [DF_tbl_User_IsActive]
GO
ALTER TABLE [dbo].[tbl_Report] DROP CONSTRAINT [DF_tbl_Report_EndTimestamp]
GO
ALTER TABLE [dbo].[tbl_Report] DROP CONSTRAINT [DF_Table_1_Timestamp]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] DROP CONSTRAINT [DF_tbl_LabTest_Timestamp]
GO
ALTER TABLE [dbo].[tbl_DoctorSchedule] DROP CONSTRAINT [DF_tbl_DoctorSchedule_Timestamp]
GO
ALTER TABLE [dbo].[tbl_Case] DROP CONSTRAINT [DF_tbl_Case_Timestamp]
GO
ALTER TABLE [dbo].[tbl_Appointment] DROP CONSTRAINT [DF_tbl_Appointment_IsSelfAppointment]
GO
ALTER TABLE [dbo].[tbl_Appointment] DROP CONSTRAINT [DF_tbl_Appointment_IsConfirmed]
GO
ALTER TABLE [dbo].[tbl_Appointment] DROP CONSTRAINT [DF_tbl_Appointment_AppointmentTime]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_User]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_User]
GO
/****** Object:  Table [dbo].[tbl_Staff]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Staff]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Staff]
GO
/****** Object:  Table [dbo].[tbl_Report]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Report]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Report]
GO
/****** Object:  Table [dbo].[tbl_PatientLabTest]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_PatientLabTest]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_PatientLabTest]
GO
/****** Object:  Table [dbo].[tbl_Patient]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Patient]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Patient]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Login]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Login]
GO
/****** Object:  Table [dbo].[tbl_LabTest]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_LabTest]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_LabTest]
GO
/****** Object:  Table [dbo].[tbl_DoctorSchedule]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DoctorSchedule]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_DoctorSchedule]
GO
/****** Object:  Table [dbo].[tbl_Doctor]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Doctor]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Doctor]
GO
/****** Object:  Table [dbo].[tbl_Case]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Case]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Case]
GO
/****** Object:  Table [dbo].[tbl_Appointment]    Script Date: 16/12/2020 11:03:51 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Appointment]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_Appointment]
GO
USE [master]
GO
/****** Object:  Database [ClinicManagementIIUI]    Script Date: 16/12/2020 11:03:51 pm ******/
DROP DATABASE [ClinicManagementIIUI]
GO
/****** Object:  Database [ClinicManagementIIUI]    Script Date: 16/12/2020 11:03:51 pm ******/
CREATE DATABASE [ClinicManagementIIUI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClinicManagementIIUI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicManagementIIUI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClinicManagementIIUI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ClinicManagementIIUI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicManagementIIUI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClinicManagementIIUI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClinicManagementIIUI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClinicManagementIIUI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClinicManagementIIUI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClinicManagementIIUI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET RECOVERY FULL 
GO
ALTER DATABASE [ClinicManagementIIUI] SET  MULTI_USER 
GO
ALTER DATABASE [ClinicManagementIIUI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClinicManagementIIUI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClinicManagementIIUI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClinicManagementIIUI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ClinicManagementIIUI', N'ON'
GO
USE [ClinicManagementIIUI]
GO
/****** Object:  Table [dbo].[tbl_Appointment]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Appointment](
	[Id] [int] NOT NULL,
	[DoctorId] [int] NULL,
	[PatientId] [int] NULL,
	[AppointmentTime] [datetime2](7) NULL,
	[IsConfirmed] [bit] NULL,
	[IsSelfAppointment] [bit] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Appointment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Case]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Case](
	[Id] [int] NOT NULL,
	[PatientId] [int] NULL,
	[DoctorId] [int] NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Timestamp] [datetime2](7) NULL,
 CONSTRAINT [PK_tbl_Case] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Doctor]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Doctor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[DoctorNumber] [nvarchar](50) NULL,
	[OtherDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Doctor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DoctorSchedule]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DoctorSchedule](
	[Id] [int] NOT NULL,
	[UserId] [int] NULL,
	[AvailableDayOfWeek] [nvarchar](50) NULL,
	[AvailableFromAndTo] [nvarchar](120) NULL,
	[Timestamp] [datetime2](7) NULL,
 CONSTRAINT [PK_tbl_DoctorSchedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LabTest]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LabTest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [nvarchar](60) NULL,
	[Price] [decimal](18, 4) NULL,
	[Description] [nvarchar](1500) NULL,
	[TestReporting] [nvarchar](50) NULL,
	[Status] [nvarchar](150) NULL,
	[AttachmentURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_LabTest_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Patient]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PatientNumber] [nvarchar](50) NULL,
	[ReferredBy] [nvarchar](150) NULL,
	[OtherDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PatientLabTest]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PatientLabTest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CaseId] [int] NULL,
	[TestId] [int] NULL,
	[Timestamp] [datetime2](7) NULL,
	[TestTakenBy] [int] NULL,
	[TestTakenFor] [int] NULL,
	[AttachmentUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_LabTest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Report]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[StartTimestamp] [datetime2](7) NULL,
	[EndTimestamp] [datetime2](7) NULL,
	[RequestedBy] [int] NULL,
	[ReportWrittenBy] [int] NULL,
 CONSTRAINT [PK_tbl_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Staff]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[EmployeeNumber] [nvarchar](50) NULL,
	[OtherDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Staff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 16/12/2020 11:03:52 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](120) NULL,
	[MiddleName] [nvarchar](120) NULL,
	[LastName] [nvarchar](120) NULL,
	[Email] [nvarchar](150) NULL,
	[MobileNumber] [nvarchar](18) NULL,
	[Address] [nvarchar](350) NULL,
	[City] [nvarchar](90) NULL,
	[Province] [nvarchar](90) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDel] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Login] ON 

INSERT [dbo].[tbl_Login] ([Id], [UserId], [Email], [Password]) VALUES (1, 1, N'huda@gmail.com', N'123')
INSERT [dbo].[tbl_Login] ([Id], [UserId], [Email], [Password]) VALUES (2, 2, N'usman@gmail.com', N'123')
INSERT [dbo].[tbl_Login] ([Id], [UserId], [Email], [Password]) VALUES (3, 3, N'mk@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[tbl_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Patient] ON 

INSERT [dbo].[tbl_Patient] ([Id], [UserId], [PatientNumber], [ReferredBy], [OtherDetails]) VALUES (1, 1, N'P-2020-09-0001', N'Dr Khan', N'Something goes here.')
INSERT [dbo].[tbl_Patient] ([Id], [UserId], [PatientNumber], [ReferredBy], [OtherDetails]) VALUES (2, 2, N'P-2020-09-0002', N'Dr Mohsin', N'Something again goes here.')
INSERT [dbo].[tbl_Patient] ([Id], [UserId], [PatientNumber], [ReferredBy], [OtherDetails]) VALUES (3, 3, N'P-2020-09-0003', N'-', N'Something again again goes here.')
SET IDENTITY_INSERT [dbo].[tbl_Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([Id], [FirstName], [MiddleName], [LastName], [Email], [MobileNumber], [Address], [City], [Province], [RoleId], [IsActive], [IsDel], [CreatedAt]) VALUES (1, N'Huda', N'Ahed', N'Abdul Qadir', N'huda@gmail.com', N'+923001234567', N'House # 1, St # 3, G-11', N'Islamabad', N'Islamabad', 3, 1, 0, CAST(N'2020-09-17T00:41:52.2533333' AS DateTime2))
INSERT [dbo].[tbl_User] ([Id], [FirstName], [MiddleName], [LastName], [Email], [MobileNumber], [Address], [City], [Province], [RoleId], [IsActive], [IsDel], [CreatedAt]) VALUES (2, N'Usman', N'Ahmed', N'Qureshi', N'usman@gmail.com', N'+923331234567', N'Flat # 1, Block # 3, G-8/2', N'Islamabad', N'Islamabad', 2, 1, 0, CAST(N'2020-09-17T00:42:31.2600000' AS DateTime2))
INSERT [dbo].[tbl_User] ([Id], [FirstName], [MiddleName], [LastName], [Email], [MobileNumber], [Address], [City], [Province], [RoleId], [IsActive], [IsDel], [CreatedAt]) VALUES (3, N'Momina', N'', N'Khan', N'mk@gmail.com', N'+9230012345687', N'Saddar Area', N'Rawalpindi', N'Punjab', 2, 1, 0, CAST(N'2020-09-17T00:43:09.3033333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
ALTER TABLE [dbo].[tbl_Appointment] ADD  CONSTRAINT [DF_tbl_Appointment_AppointmentTime]  DEFAULT (getdate()) FOR [AppointmentTime]
GO
ALTER TABLE [dbo].[tbl_Appointment] ADD  CONSTRAINT [DF_tbl_Appointment_IsConfirmed]  DEFAULT ((1)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[tbl_Appointment] ADD  CONSTRAINT [DF_tbl_Appointment_IsSelfAppointment]  DEFAULT ((0)) FOR [IsSelfAppointment]
GO
ALTER TABLE [dbo].[tbl_Case] ADD  CONSTRAINT [DF_tbl_Case_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[tbl_DoctorSchedule] ADD  CONSTRAINT [DF_tbl_DoctorSchedule_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] ADD  CONSTRAINT [DF_tbl_LabTest_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[tbl_Report] ADD  CONSTRAINT [DF_Table_1_Timestamp]  DEFAULT (getdate()) FOR [StartTimestamp]
GO
ALTER TABLE [dbo].[tbl_Report] ADD  CONSTRAINT [DF_tbl_Report_EndTimestamp]  DEFAULT (getdate()) FOR [EndTimestamp]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_IsDel]  DEFAULT ((0)) FOR [IsDel]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[tbl_Appointment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Appointment_tbl_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[tbl_Doctor] ([Id])
GO
ALTER TABLE [dbo].[tbl_Appointment] CHECK CONSTRAINT [FK_tbl_Appointment_tbl_Doctor]
GO
ALTER TABLE [dbo].[tbl_Appointment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Appointment_tbl_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tbl_Patient] ([Id])
GO
ALTER TABLE [dbo].[tbl_Appointment] CHECK CONSTRAINT [FK_tbl_Appointment_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Case]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Case_tbl_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[tbl_Doctor] ([Id])
GO
ALTER TABLE [dbo].[tbl_Case] CHECK CONSTRAINT [FK_tbl_Case_tbl_Doctor]
GO
ALTER TABLE [dbo].[tbl_Case]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Case_tbl_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tbl_Patient] ([Id])
GO
ALTER TABLE [dbo].[tbl_Case] CHECK CONSTRAINT [FK_tbl_Case_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_Doctor]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Doctor_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Doctor] CHECK CONSTRAINT [FK_tbl_Doctor_tbl_User]
GO
ALTER TABLE [dbo].[tbl_DoctorSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DoctorSchedule_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_DoctorSchedule] CHECK CONSTRAINT [FK_tbl_DoctorSchedule_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Login]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Login_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Login] CHECK CONSTRAINT [FK_tbl_Login_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Patient_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Patient] CHECK CONSTRAINT [FK_tbl_Patient_tbl_User]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LabTest_tbl_Patient] FOREIGN KEY([TestTakenFor])
REFERENCES [dbo].[tbl_Patient] ([Id])
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] CHECK CONSTRAINT [FK_tbl_LabTest_tbl_Patient]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LabTest_tbl_Staff] FOREIGN KEY([TestTakenBy])
REFERENCES [dbo].[tbl_Staff] ([Id])
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] CHECK CONSTRAINT [FK_tbl_LabTest_tbl_Staff]
GO
ALTER TABLE [dbo].[tbl_PatientLabTest]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PatientLabTest_tbl_LabTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[tbl_LabTest] ([Id])
GO
ALTER TABLE [dbo].[tbl_PatientLabTest] CHECK CONSTRAINT [FK_tbl_PatientLabTest_tbl_LabTest]
GO
ALTER TABLE [dbo].[tbl_Report]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Report_tbl_User] FOREIGN KEY([ReportWrittenBy])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Report] CHECK CONSTRAINT [FK_tbl_Report_tbl_User]
GO
ALTER TABLE [dbo].[tbl_Report]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Report_tbl_User1] FOREIGN KEY([RequestedBy])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Report] CHECK CONSTRAINT [FK_tbl_Report_tbl_User1]
GO
ALTER TABLE [dbo].[tbl_Staff]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Staff_tbl_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_User] ([Id])
GO
ALTER TABLE [dbo].[tbl_Staff] CHECK CONSTRAINT [FK_tbl_Staff_tbl_User]
GO
USE [master]
GO
ALTER DATABASE [ClinicManagementIIUI] SET  READ_WRITE 
GO
