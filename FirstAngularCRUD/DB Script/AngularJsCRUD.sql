USE [angularCRUD]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 21.07.2016 12:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[People]    Script Date: 21.07.2016 12:53:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607210707417_InitialCreate', N'FirstAngularCRUD.Models.PersonDbContext', 0x1F8B0800000000000400CD58DB6E1B37107D2F907F58F029051CD19797D658255024BB106AD982D7CE3BB53B928870C92DC935A46FEB433FA9BFD0E1DE2F922CC5691BE865450ECF9C19CE9C1DE9EF3FFFF23F6D62E1BD80365CC921B9189C130F64A8222E574392DAE5875FC8A78FEF7EF26FA278E37D29EDAE9C1D9E946648D6D626D7949A700D31338398875A19B5B48350C594458A5E9E9FFF4A2F2E282004412CCFF31F5369790CD917FC3A563284C4A64CCC5404C214EBB81364A8DE3D8BC1242C8421B9E5DAD8915CA582E9F1E3F364901F21DE4870867402104BE23129956516C95E3F1B08AC56721524B8C0C4D33601B45B3261A008E2BA363F369EF34B170FAD0F9650616AAC8A4F04BCB82A1244BBC7BF29CDA44A20A6F006536DB72EEA2C8D4332C75B74C05D57D763A19DD9DE1C0FF293675E77FFACAA0C2C20F739F3C6A9B0A986A184D46A26CEBC79BA103CFC1DB64FEA2BC8A14C8568D244A2B8D75AC0A5B9560968BB7D84658BFC34221E6D9FA6DDE3D5E1DEC93CC8A9B45797C4BB47226C21A0AA88464202AB34FC061234B310CD99B5A0F142A7116439ED71E878CCD2E41E4B975887D857C49BB1CD1DC8955D0F093E12CCE706A272A5A0F12C39B6211EB23A85D73CDDB1FFC8D17CAD24DCA7F102F4BFEE6B6A46A1E52F55509F9512C0E48E2B3B8C338A220DC67C67BE3EAD1BABDF6EA86896712C9C56F14D166E1D367647F3A14C15FD670A77EDA072DC006C0B11A3AA69E4E23728FB7B17DB8A572DB134D7D8528BE91E31F6672C4930710D712E56BC2057E6F187E074B58A730C1A9A1DA255B1AD3C6143B2157476D13532CDBA6DC22C5B307775E328EE99756F614F864B6FED4477B5A9CE7B69EF9E1B9DBF5740BB50752A6F31BA18C5250B142A429566F70E66AF48865EF68ADD5889349687C5F3105243C49A508DE5E3B16A996A42D5ABC723B574A8156273E378BC5A6B9A60F5EAF14895DA3481AAC53E8E4F3B77DFAD33DA2BB4CE8BAF5BB787DABE6B5279AFDABFD3E67ED172AF0F66BD1ECC4D8887097AE191EBBF606B2CC403673008FE1063C131DEDA60C6245F82B1F98440702CBAEC8C753FCE88458D89C45173D6FF3AE47097DF57C798135FA8BDB946BE301DAE997E1FB3CDCF4DB86F995DDE04B6633E79135E77065970FBD6F9E3043EA7CD18FD97E03113C48101226FE02189160AC9E724E7A012B187E611C3455F4D7CDAFC31E84FC0F0550DE17E1A4A085D9BD6A0A5CD542E55996B0CABC9A834E95CC50C2C8B303B236DF9928516B743BC9A6C1EFCC2448A2637583BD1543EA43649EDC8188817A235E9FBF4B0FF6C826A73F61F12F7CD7C8F109026C710E0417E4EB9882ADEB7FD52DC07E10AA590036485F330C2ADB615D23DB6D0714045FA2690807462F204712210CC3CC880B9A6399D1B8EC177B062E1B67C29EC0779FD22DA69F7279CAD348B4D81519F777F7050F70FC7C77F008408BCBD13110000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[People] ON 

INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (61, N'Jackson', N'Lord', N'0000-448-454-2338', 1, N'833 Wilson Park')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (62, N'Emily', N'Summers', N'0040-824-888-0971', 0, N'732 Summers Place')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (63, N'Aaliyah', N'Hilton', N'0036-443-084-5373', 1, N'348 Mcgrath Avenue')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (64, N'Sophie', N'Kenny', N'0095-965-452-2596', 1, N'794 Akhtar Way')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (65, N'Ariana', N'Coles', N'0052-643-435-3644', 1, N'51 Buckley Gate')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (66, N'Hannah', N'Vaughan', N'0099-776-966-5644', 1, N'150 Mclean Road')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (67, N'Juan', N'Walters', N'0062-282-570-5435', 0, N'588 Whelan Highland')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (68, N'Justin', N'Summers', N'0094-777-981-6505', 0, N'84 Barlow Square')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (69, N'Kimberly', N'Thompson', N'0051-980-210-8797', 0, N'625 Shepherd Square')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (70, N'Alex', N'Johnson', N'0049-430-458-0630', 0, N'310 Thornton Court')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (71, N'Nevaeh', N'Mac', N'0065-589-478-2615', 1, N'154 Wyatt Gate')
INSERT [dbo].[People] ([PersonId], [FirstName], [LastName], [PhoneNumber], [IsActive], [Address]) VALUES (72, N'Parker', N'Hilton', N'0084-531-347-7317', 1, N'251 Thomas Way')
SET IDENTITY_INSERT [dbo].[People] OFF
