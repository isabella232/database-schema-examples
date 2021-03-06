USE [students]
GO
/****** Object:  Table [dbo].[Applicants]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Applicants](
	[ApplicantId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[MiddleName] [varchar](40) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[StreetAddress] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](2) NOT NULL,
	[ZipCode] [varchar](5) NOT NULL,
	[Telephone] [varchar](20) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[ApplicationReceivedDate] [date] NOT NULL,
	[EntryTerm] [varchar](6) NOT NULL,
	[ApplicationType] [varchar](1) NOT NULL,
	[Gpa] [decimal](3, 2) NULL,
	[SatMathScore] [int] NULL,
	[SatReadingScore] [int] NULL,
	[SatWritingScore] [int] NULL,
	[EssayScore] [int] NULL,
	[ApplicationStatus] [varchar](1) NOT NULL DEFAULT ('N'),
	[AdmissionPoints] [float] NULL,
 CONSTRAINT [pk_applicants] PRIMARY KEY CLUSTERED 
(
	[ApplicantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[ClassStandings]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassStandings](
	[ClassStandingCode] [varchar](2) NOT NULL,
	[ClassStandingName] [varchar](25) NOT NULL,
	[DegreeLevelCode] [varchar](1) NOT NULL,
	[RequiredCredits] [int] NOT NULL,
 CONSTRAINT [pk_class_standings] PRIMARY KEY CLUSTERED 
(
	[ClassStandingCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[CourseEnrollments]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseEnrollments](
	[CourseEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[CourseOfferingId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Grade] [varchar](1) NULL,
 CONSTRAINT [pk_CourseEnrollments] PRIMARY KEY CLUSTERED 
(
	[CourseEnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[CourseEnrollments2]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseEnrollments2](
	[CourseEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[CourseOfferingId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Grade] [varchar](1) NULL,
 CONSTRAINT [pk_CourseEnrollments2] PRIMARY KEY CLUSTERED 
(
	[CourseEnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[CourseOfferings]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CourseOfferings](
	[CourseOfferingId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](2) NOT NULL,
	[CourseNumber] [int] NOT NULL,
	[TermCode] [varchar](6) NOT NULL,
	[Section] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [pk_CourseOfferings] PRIMARY KEY CLUSTERED 
(
	[CourseOfferingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courses](
	[DepartmentCode] [varchar](2) NOT NULL,
	[CourseNumber] [int] NOT NULL,
	[CourseTitle] [varchar](64) NOT NULL,
	[CourseDescription] [varchar](512) NOT NULL,
	[Credits] [decimal](3, 1) NOT NULL,
	[MaximumSectionSize] [int] NULL,
 CONSTRAINT [pk_courses] PRIMARY KEY CLUSTERED 
(
	[DepartmentCode] ASC,
	[CourseNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[DegreeLevels]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DegreeLevels](
	[DegreeLevelCode] [varchar](1) NOT NULL,
	[DegreeLevelName] [varchar](20) NOT NULL,
 CONSTRAINT [pk_degree_levels] PRIMARY KEY CLUSTERED 
(
	[DegreeLevelCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[DegreeRequirements]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DegreeRequirements](
	[RequirementId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeId] [int] NOT NULL,
	[ClassStandingCode] [varchar](2) NOT NULL,
	[SessionCode] [varchar](2) NOT NULL,
	[DepartmentCode] [varchar](2) NOT NULL,
	[CourseNumber] [int] NOT NULL,
 CONSTRAINT [pk_DegreeRequirements] PRIMARY KEY CLUSTERED 
(
	[RequirementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Degrees]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degrees](
	[DegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [varchar](2) NOT NULL,
	[DegreeTypeCode] [varchar](3) NOT NULL,
	[DegreeName] [varchar](64) NOT NULL,
 CONSTRAINT [pk_degrees] PRIMARY KEY CLUSTERED 
(
	[DegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[DegreeTypes]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DegreeTypes](
	[DegreeTypeCode] [varchar](3) NOT NULL,
	[DegreeTypeName] [varchar](25) NOT NULL,
	[DegreeLevelCode] [varchar](1) NOT NULL,
 CONSTRAINT [pk_DegreeTypes] PRIMARY KEY CLUSTERED 
(
	[DegreeTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentCode] [varchar](2) NOT NULL,
	[DepartmentName] [varchar](25) NOT NULL,
 CONSTRAINT [pk_departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grades](
	[Grade] [varchar](1) NOT NULL,
	[Points] [decimal](2, 1) NULL,
	[IncludeInGpa] [bit] NOT NULL DEFAULT ((1)),
 CONSTRAINT [pk_grades] PRIMARY KEY CLUSTERED 
(
	[Grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionCode] [varchar](2) NOT NULL,
	[SessionName] [varchar](10) NOT NULL,
 CONSTRAINT [pk_sessions] PRIMARY KEY CLUSTERED 
(
	[SessionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[StudentProfiles]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentProfiles](
	[StudentId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[students]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[students](
	[StudentId] [int] IDENTITY(10000,1) NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[MiddleName] [varchar](40) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[StreetAddress] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](2) NOT NULL,
	[ZipCode] [varchar](5) NOT NULL,
	[Telephone] [varchar](20) NOT NULL,
	[email] [varchar](80) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[DegreePursued] [int] NOT NULL,
	[ClassStandingCode] [varchar](2) NULL,
	[StudentStatus] [varchar](1) NOT NULL,
	[EnrollmentTerm] [varchar](6) NOT NULL,
 CONSTRAINT [pk_students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Terms](
	[TermCode] [varchar](6) NOT NULL,
	[SessionCode] [varchar](2) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [pk_terms] PRIMARY KEY CLUSTERED 
(
	[TermCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [fk_applicants_entry_term] FOREIGN KEY([EntryTerm])
REFERENCES [dbo].[Terms] ([TermCode])
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [fk_applicants_entry_term]
GO
ALTER TABLE [dbo].[ClassStandings]  WITH CHECK ADD  CONSTRAINT [fk_class_stdgs_degree_level_cd] FOREIGN KEY([DegreeLevelCode])
REFERENCES [dbo].[DegreeLevels] ([DegreeLevelCode])
GO
ALTER TABLE [dbo].[ClassStandings] CHECK CONSTRAINT [fk_class_stdgs_degree_level_cd]
GO
ALTER TABLE [dbo].[CourseEnrollments]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_CourseOfferings] FOREIGN KEY([CourseOfferingId])
REFERENCES [dbo].[CourseOfferings] ([CourseOfferingId])
GO
ALTER TABLE [dbo].[CourseEnrollments] CHECK CONSTRAINT [fk_CourseEnrollments_CourseOfferings]
GO
ALTER TABLE [dbo].[CourseEnrollments]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_Grade] FOREIGN KEY([Grade])
REFERENCES [dbo].[Grades] ([Grade])
GO
ALTER TABLE [dbo].[CourseEnrollments] CHECK CONSTRAINT [fk_CourseEnrollments_Grade]
GO
ALTER TABLE [dbo].[CourseEnrollments]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[students] ([StudentId])
GO
ALTER TABLE [dbo].[CourseEnrollments] CHECK CONSTRAINT [fk_CourseEnrollments_StudentId]
GO
ALTER TABLE [dbo].[CourseEnrollments2]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_CourseOfferings2] FOREIGN KEY([CourseOfferingId])
REFERENCES [dbo].[CourseOfferings] ([CourseOfferingId])
GO
ALTER TABLE [dbo].[CourseEnrollments2] CHECK CONSTRAINT [fk_CourseEnrollments_CourseOfferings2]
GO
ALTER TABLE [dbo].[CourseEnrollments2]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_Grade2] FOREIGN KEY([Grade])
REFERENCES [dbo].[Grades] ([Grade])
GO
ALTER TABLE [dbo].[CourseEnrollments2] CHECK CONSTRAINT [fk_CourseEnrollments_Grade2]
GO
ALTER TABLE [dbo].[CourseEnrollments2]  WITH CHECK ADD  CONSTRAINT [fk_CourseEnrollments_StudentId2] FOREIGN KEY([StudentId])
REFERENCES [dbo].[students] ([StudentId])
GO
ALTER TABLE [dbo].[CourseEnrollments2] CHECK CONSTRAINT [fk_CourseEnrollments_StudentId2]
GO
ALTER TABLE [dbo].[CourseOfferings]  WITH CHECK ADD  CONSTRAINT [fk_CourseOfferings_Courses] FOREIGN KEY([DepartmentCode], [CourseNumber])
REFERENCES [dbo].[Courses] ([DepartmentCode], [CourseNumber])
GO
ALTER TABLE [dbo].[CourseOfferings] CHECK CONSTRAINT [fk_CourseOfferings_Courses]
GO
ALTER TABLE [dbo].[CourseOfferings]  WITH CHECK ADD  CONSTRAINT [fk_CourseOfferings_TermCode] FOREIGN KEY([TermCode])
REFERENCES [dbo].[Terms] ([TermCode])
GO
ALTER TABLE [dbo].[CourseOfferings] CHECK CONSTRAINT [fk_CourseOfferings_TermCode]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [fk_Courses_DepartmentCode] FOREIGN KEY([DepartmentCode])
REFERENCES [dbo].[Departments] ([DepartmentCode])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [fk_Courses_DepartmentCode]
GO
ALTER TABLE [dbo].[DegreeRequirements]  WITH CHECK ADD  CONSTRAINT [fk_DegreeReqirements_ClassStandingCode] FOREIGN KEY([ClassStandingCode])
REFERENCES [dbo].[ClassStandings] ([ClassStandingCode])
GO
ALTER TABLE [dbo].[DegreeRequirements] CHECK CONSTRAINT [fk_DegreeReqirements_ClassStandingCode]
GO
ALTER TABLE [dbo].[DegreeRequirements]  WITH CHECK ADD  CONSTRAINT [fk_DegreeReqirements_Courses] FOREIGN KEY([DepartmentCode], [CourseNumber])
REFERENCES [dbo].[Courses] ([DepartmentCode], [CourseNumber])
GO
ALTER TABLE [dbo].[DegreeRequirements] CHECK CONSTRAINT [fk_DegreeReqirements_Courses]
GO
ALTER TABLE [dbo].[DegreeRequirements]  WITH CHECK ADD  CONSTRAINT [fk_DegreeReqirements_DegreeId] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[Degrees] ([DegreeId])
GO
ALTER TABLE [dbo].[DegreeRequirements] CHECK CONSTRAINT [fk_DegreeReqirements_DegreeId]
GO
ALTER TABLE [dbo].[DegreeRequirements]  WITH CHECK ADD  CONSTRAINT [fk_DegreeReqirements_SessionCode] FOREIGN KEY([SessionCode])
REFERENCES [dbo].[Sessions] ([SessionCode])
GO
ALTER TABLE [dbo].[DegreeRequirements] CHECK CONSTRAINT [fk_DegreeReqirements_SessionCode]
GO
ALTER TABLE [dbo].[Degrees]  WITH CHECK ADD  CONSTRAINT [fk_degrees_DegreeTypeCode] FOREIGN KEY([DegreeTypeCode])
REFERENCES [dbo].[DegreeTypes] ([DegreeTypeCode])
GO
ALTER TABLE [dbo].[Degrees] CHECK CONSTRAINT [fk_degrees_DegreeTypeCode]
GO
ALTER TABLE [dbo].[Degrees]  WITH CHECK ADD  CONSTRAINT [fk_degrees_DepartmentCode] FOREIGN KEY([DepartmentCode])
REFERENCES [dbo].[Departments] ([DepartmentCode])
GO
ALTER TABLE [dbo].[Degrees] CHECK CONSTRAINT [fk_degrees_DepartmentCode]
GO
ALTER TABLE [dbo].[DegreeTypes]  WITH CHECK ADD  CONSTRAINT [fk_degree_types_degree_type_cd] FOREIGN KEY([DegreeLevelCode])
REFERENCES [dbo].[DegreeLevels] ([DegreeLevelCode])
GO
ALTER TABLE [dbo].[DegreeTypes] CHECK CONSTRAINT [fk_degree_types_degree_type_cd]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [fk_Students_ClassStanding] FOREIGN KEY([ClassStandingCode])
REFERENCES [dbo].[ClassStandings] ([ClassStandingCode])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [fk_Students_ClassStanding]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [fk_Students_DegreePursued] FOREIGN KEY([DegreePursued])
REFERENCES [dbo].[Degrees] ([DegreeId])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [fk_Students_DegreePursued]
GO
ALTER TABLE [dbo].[students]  WITH CHECK ADD  CONSTRAINT [fk_Students_EnrollmentTerm] FOREIGN KEY([EnrollmentTerm])
REFERENCES [dbo].[Terms] ([TermCode])
GO
ALTER TABLE [dbo].[students] CHECK CONSTRAINT [fk_Students_EnrollmentTerm]
GO
ALTER TABLE [dbo].[Terms]  WITH CHECK ADD  CONSTRAINT [fk_Terms_SessionCode] FOREIGN KEY([SessionCode])
REFERENCES [dbo].[Sessions] ([SessionCode])
GO
ALTER TABLE [dbo].[Terms] CHECK CONSTRAINT [fk_Terms_SessionCode]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [ck_applications_gender] CHECK  (([gender]='F' OR [gender]='M'))
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [ck_applications_gender]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [ck_applications_gpa] CHECK  (([gpa]>=(0.0) AND [gpa]<=(4.0)))
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [ck_applications_gpa]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [ck_appls_sat_math_score] CHECK  (([SatMathScore]>=(200) AND [SatMathScore]<=(800)))
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [ck_appls_sat_math_score]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [ck_appls_sat_reading_score] CHECK  (([SatReadingScore]>=(200) AND [SatReadingScore]<=(800)))
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [ck_appls_sat_reading_score]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [ck_appls_sat_writing_score] CHECK  (([SatWritingScore]>=(200) AND [SatWritingScore]<=(800)))
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [ck_appls_sat_writing_score]
GO
ALTER TABLE [dbo].[CourseOfferings]  WITH CHECK ADD  CONSTRAINT [ck_course_offerings_capacity] CHECK  (([Capacity]>(0) AND [capacity]<(1000)))
GO
ALTER TABLE [dbo].[CourseOfferings] CHECK CONSTRAINT [ck_course_offerings_capacity]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [ck_CourseNumber] CHECK  (([CourseNumber]>=(9) AND [CourseNumber]<=(1000)))
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [ck_CourseNumber]
GO
ALTER TABLE [dbo].[Terms]  WITH CHECK ADD  CONSTRAINT [ck_year] CHECK  (([Year]>=(1990) AND [Year]<=(2050)))
GO
ALTER TABLE [dbo].[Terms] CHECK CONSTRAINT [ck_year]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentInfoByName]    Script Date: 6/25/2016 10:02:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudentInfoByName]
    (@firstName    VARCHAR(40),
	@lastName VARCHAR(40) )

AS
    SELECT StudentId, FirstName, LastName, Email, Telephone
                               FROM students
                               WHERE FirstName = @firstName 
                                   AND LastName = @lastName;

GO
