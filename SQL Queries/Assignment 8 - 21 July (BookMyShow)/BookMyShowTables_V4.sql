USE [BookMyShow]
GO
/****** Object:  UserDefinedTableType [dbo].[CityState]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[CityState] AS TABLE(
	[city] [varchar](30) NULL,
	[state] [varchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IdVal]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[IdVal] AS TABLE(
	[id] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[NameVal]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[NameVal] AS TABLE(
	[name] [varchar](30) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Pay]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[Pay] AS TABLE(
	[paytype] [varchar](30) NULL,
	[cust] [int] NULL,
	[total] [money] NULL,
	[cardn] [bigint] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Pay1]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[Pay1] AS TABLE(
	[paytype] [varchar](30) NULL,
	[cust] [int] NULL,
	[cardn] [bigint] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Screen]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[Screen] AS TABLE(
	[sname] [varchar](30) NULL,
	[typeid] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Seat]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[Seat] AS TABLE(
	[seatname] [varchar](30) NULL,
	[screenname] [varchar](30) NULL,
	[seattype] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TicketSeat]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[TicketSeat] AS TABLE(
	[seat] [int] NULL,
	[cost] [money] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TicketSeat1]    Script Date: 26-07-2023 12:44:39 ******/
CREATE TYPE [dbo].[TicketSeat1] AS TABLE(
	[seatID] [int] NULL
)
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[ShowId] [int] NULL,
	[BookingCount] [int] NULL,
	[CustomerId] [int] NULL,
	[TotalCost] [money] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(100,1) NOT NULL,
	[CityName] [varchar](30) NULL,
	[StateId] [int] NULL,
	[Pincode] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[EmailId] [varchar](30) NULL,
	[Phone] [bigint] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [varchar](30) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](30) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Director] [varchar](max) NULL,
	[Duration] [time](7) NULL,
	[ReleaseDate] [datetime] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieGenreId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[GenreId] [int] NULL,
 CONSTRAINT [PK_MovieGenre] PRIMARY KEY CLUSTERED 
(
	[MovieGenreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieLanguage]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieLanguage](
	[MovieLangId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[LanguageId] [int] NULL,
 CONSTRAINT [PK_MovieLanguage] PRIMARY KEY CLUSTERED 
(
	[MovieLangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](30) NULL,
	[CustomerId] [int] NULL,
	[BookingId] [int] NULL,
	[TotalDue] [money] NULL,
	[CardNo] [bigint] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screen]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screen](
	[ScreenId] [int] IDENTITY(1,1) NOT NULL,
	[ScreenName] [varchar](max) NULL,
	[TheatreId] [int] NULL,
	[TotalSeatCount] [int] NULL,
	[ScreenTypeId] [int] NULL,
 CONSTRAINT [PK_Screen] PRIMARY KEY CLUSTERED 
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenSeat]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenSeat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatName] [varchar](10) NULL,
	[SeatTypeId] [int] NULL,
	[ScreenId] [int] NULL,
 CONSTRAINT [PK_ScreenSeat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenType]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenType](
	[ScreenTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ScreenTypeName] [varchar](30) NULL,
 CONSTRAINT [PK_ScreenType] PRIMARY KEY CLUSTERED 
(
	[ScreenTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatType]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatType](
	[SeatTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SeatTypeName] [varchar](30) NULL,
	[SeatPrice] [money] NULL,
 CONSTRAINT [PK_SeatType] PRIMARY KEY CLUSTERED 
(
	[SeatTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Show]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show](
	[ShowId] [int] IDENTITY(1,1) NOT NULL,
	[ShowDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[MovieId] [int] NULL,
	[ScreenId] [int] NULL,
	[MovieLangId] [int] NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[ShowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](30) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theatre]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theatre](
	[TheatreId] [int] IDENTITY(1,1) NOT NULL,
	[TheatreName] [varchar](max) NULL,
	[CityId] [int] NULL,
	[ScreenCount] [int] NULL,
 CONSTRAINT [PK_Theatre] PRIMARY KEY CLUSTERED 
(
	[TheatreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketSeat]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketSeat](
	[TicketSeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatId] [int] NULL,
	[BookingId] [int] NULL,
	[UnitCost] [money] NULL,
 CONSTRAINT [PK_TicketSeat] PRIMARY KEY CLUSTERED 
(
	[TicketSeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Customer]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Show] FOREIGN KEY([ShowId])
REFERENCES [dbo].[Show] ([ShowId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Show]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([GenreId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Genre]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [FK_MovieGenre_Movie]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Language]
GO
ALTER TABLE [dbo].[MovieLanguage]  WITH CHECK ADD  CONSTRAINT [FK_MovieLanguage_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[MovieLanguage] CHECK CONSTRAINT [FK_MovieLanguage_Movie]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer]
GO
ALTER TABLE [dbo].[Screen]  WITH CHECK ADD  CONSTRAINT [FK_Screen_ScreenType] FOREIGN KEY([ScreenTypeId])
REFERENCES [dbo].[ScreenType] ([ScreenTypeId])
GO
ALTER TABLE [dbo].[Screen] CHECK CONSTRAINT [FK_Screen_ScreenType]
GO
ALTER TABLE [dbo].[Screen]  WITH CHECK ADD  CONSTRAINT [FK_Screen_Theatre] FOREIGN KEY([TheatreId])
REFERENCES [dbo].[Theatre] ([TheatreId])
GO
ALTER TABLE [dbo].[Screen] CHECK CONSTRAINT [FK_Screen_Theatre]
GO
ALTER TABLE [dbo].[ScreenSeat]  WITH CHECK ADD  CONSTRAINT [FK_SCREENSEAT_SCREEN] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screen] ([ScreenId])
GO
ALTER TABLE [dbo].[ScreenSeat] CHECK CONSTRAINT [FK_SCREENSEAT_SCREEN]
GO
ALTER TABLE [dbo].[ScreenSeat]  WITH CHECK ADD  CONSTRAINT [FK_ScreenSeat_SeatType] FOREIGN KEY([SeatTypeId])
REFERENCES [dbo].[SeatType] ([SeatTypeId])
GO
ALTER TABLE [dbo].[ScreenSeat] CHECK CONSTRAINT [FK_ScreenSeat_SeatType]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Movie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([MovieId])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Movie]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_MovieLanguage] FOREIGN KEY([MovieLangId])
REFERENCES [dbo].[MovieLanguage] ([MovieLangId])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_MovieLanguage]
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Screen] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screen] ([ScreenId])
GO
ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Screen]
GO
ALTER TABLE [dbo].[Theatre]  WITH CHECK ADD  CONSTRAINT [FK_Theatre_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Theatre] CHECK CONSTRAINT [FK_Theatre_City]
GO
ALTER TABLE [dbo].[TicketSeat]  WITH CHECK ADD  CONSTRAINT [FK_TicketSeat_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([BookingId])
GO
ALTER TABLE [dbo].[TicketSeat] CHECK CONSTRAINT [FK_TicketSeat_Booking]
GO
ALTER TABLE [dbo].[TicketSeat]  WITH CHECK ADD  CONSTRAINT [FK_TicketSeat_ScreenSeat] FOREIGN KEY([SeatId])
REFERENCES [dbo].[ScreenSeat] ([SeatId])
GO
ALTER TABLE [dbo].[TicketSeat] CHECK CONSTRAINT [FK_TicketSeat_ScreenSeat]
GO
/****** Object:  StoredProcedure [dbo].[AddBooking]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddBooking]
@showid INT,
@custid INT,
@ticket AS TicketSeat1 READONLY,
@payment AS Pay1 READONLY
AS
	BEGIN
	DECLARE @bookcount INT
	SELECT @bookcount=COUNT(*) FROM @ticket
	DECLARE @price MONEY
	SELECT @price=SUM(ST.SeatPrice) FROM @ticket T
	INNER JOIN ScreenSeat S 
		ON T.seatID=S.SeatId
		INNER JOIN SeatType ST
			ON S.SeatTypeId=ST.SeatTypeId

	INSERT INTO Booking(ShowId,BookingCount,CustomerId,TotalCost)
		VALUES (@showid,@bookcount,@custid,@price)
	DECLARE @bid INT=SCOPE_IDENTITY()

	INSERT INTO TicketSeat(SeatId,BookingId,UnitCost)
	SELECT T.seatID,@bid,ST.SeatPrice FROM @ticket T
	INNER JOIN ScreenSeat S 
		ON T.seatID=S.SeatId
		INNER JOIN SeatType ST
			ON S.SeatTypeId=ST.SeatTypeId

	INSERT INTO Payment(PaymentType,CustomerId,BookingId,TotalDue,CardNo)
	SELECT paytype,cust,@bid,@price,cardn FROM @payment
	
	END
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddCustomer]
	@custname VARCHAR(30),
	@pwd VARCHAR(30),
	@email VARCHAR(30) ,
	@phone BIGINT
AS
	BEGIN
	INSERT INTO Customer (CustomerName,[Password],EmailId,Phone)
		VALUES (@custname,@pwd,@email,@phone)
	end
	
GO
/****** Object:  StoredProcedure [dbo].[AddGenre]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddGenre]
	@gen VARCHAR(30),
	@idval INT OUTPUT
AS
	BEGIN
	INSERT INTO Genre(GenreName)
		VALUES (@gen)

	SELECT @idval=SCOPE_IDENTITY()
	END
GO
/****** Object:  StoredProcedure [dbo].[AddLanguage]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLanguage]
	@lang VARCHAR(30),
	@idval INT OUTPUT
AS
	BEGIN
	INSERT INTO Language(LanguageName)
		VALUES (@lang)
	SELECT @idval=SCOPE_IDENTITY()
	END
GO
/****** Object:  StoredProcedure [dbo].[AddLocation]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLocation]
	@statename VARCHAR(30),
	@pin INT,
	@citystatename AS CityState READONLY
AS 
	BEGIN 
	DECLARE @stateval TABLE
	( 
		[sid] INT,
		sname VARCHAR(30)
	)
	INSERT INTO State(StateName) 
	OUTPUT INSERTED.StateId, INSERTED.StateName INTO @stateval
	VALUES (@statename)

	INSERT INTO City(CityName,StateId,Pincode)
		SELECT c.city,s.sid,@pin
		FROM @citystatename c
		INNER JOIN @stateval s
			ON c.state=s.sname

	END
GO
/****** Object:  StoredProcedure [dbo].[AddMovie]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddMovie]
@movname VARCHAR(MAX),
@desc VARCHAR(MAX),
@dir VARCHAR(MAX),
@dur TIME,
@release DATE,
@langid AS IdVal READONLY,
@genid AS IdVal READONLY
AS
	BEGIN
	INSERT INTO Movie(MovieName,Description,Director,Duration,ReleaseDate)
	VALUES (@movname,@desc,@dir,@dur,@release)
	DECLARE @movid INT =SCOPE_IDENTITY()

	INSERT INTO MovieLanguage
	SELECT @movid,id FROM @langid

	INSERT INTO MovieGenre
	SELECT @movid,id FROM @genid

	END
GO
/****** Object:  StoredProcedure [dbo].[AddScreenType]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddScreenType]
	@type VARCHAR(30)
AS
	BEGIN
	INSERT INTO ScreenType(ScreenTypeName)
		VALUES (@type)
	END
GO
/****** Object:  StoredProcedure [dbo].[AddSeatType]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddSeatType]
	@type VARCHAR(30),
	@price MONEY
AS
	BEGIN
	INSERT INTO SeatType(SeatTypeName,SeatPrice)
		VALUES (@type,@price)
	END
GO
/****** Object:  StoredProcedure [dbo].[AddShow]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddShow]
@date DATE,
@start TIME,
@end TIME,
@movie INT,
@screen INT,
@lang INT
AS 
	BEGIN
	INSERT INTO Show(ShowDate,StartTime,EndTime,MovieId,ScreenId,MovieLangId)
		VALUES(@date,@start,@end,@movie,@screen,@lang)
	END
GO
/****** Object:  StoredProcedure [dbo].[AddTheatre]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddTheatre]
@tname VARCHAR(30),
@cityid INT,
@screen AS Screen READONLY,
@seat AS Seat READONLY
AS
	BEGIN
	DECLARE @screencount INT
	SELECT @screencount=COUNT(*) FROM @screen
	INSERT INTO Theatre(TheatreName,CityId,ScreenCount) 
		VALUES (@tname,@cityid,@screencount)
	DECLARE @tid INT=SCOPE_IDENTITY()

	DECLARE @temp TABLE
	(
		[sid] INT,
		[name] VARCHAR(30)
	)
	DECLARE @seatcount INT
	SELECT @seatcount=COUNT(*) FROM @seat
	INSERT INTO Screen(ScreenName,TheatreId,TotalSeatCount,ScreenTypeId)
		OUTPUT INSERTED.ScreenId,INSERTED.ScreenName INTO @temp
		SELECT sname, @tid, si.SeatCount,typeid 
		FROM @screen s 
		INNER JOIN (
			SELECT screenname,COUNT(1) SeatCount
			FROM @seat 
			GROUP BY screenname
		)  AS si 
			ON si.screenname = s.sname 

	INSERT INTO ScreenSeat(SeatName,SeatTypeId,ScreenId)
		SELECT s.seatname,s.seattype,t.sid
		FROM @temp t 
		INNER JOIN @seat s
			ON t.name=s.screenname

	END
GO
/****** Object:  StoredProcedure [dbo].[GetBookedTicketDetails]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[GetBookedTicketDetails]
@bid INT
AS
BEGIN
SELECT C.CustomerName,M.MovieName,SH.ShowDate,SH.StartTime
,SH.EndTime,SS.SeatName,ST.SeatTypeName,TS.UnitCost,B.TotalCost
FROM Booking B
INNER JOIN Show SH
	ON B.ShowId=SH.ShowId
INNER JOIN TicketSeat TS
	ON B.BookingId=TS.BookingId
INNER JOIN Movie M
	ON M.MovieId=SH.MovieId
INNER JOIN Screen S
	ON S.ScreenId=SH.ScreenId
INNER JOIN ScreenSeat SS
	ON SS.SeatId=TS.SeatId
INNER JOIN SeatType ST
	ON ST.SeatTypeId=SS.SeatTypeId
INNER JOIN Customer C
	ON B.CustomerId=C.CustomerId
WHERE B.BookingId=@bid
END
GO
/****** Object:  StoredProcedure [dbo].[GetMovieByGen]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMovieByGen]
@genname VARCHAR(30)
AS
	BEGIN 
	select M.MovieName,sh.*
	from movie m 
	inner join MovieGenre mG 
	on m.MovieId=mG.MovieId
	inner join Genre G
	on mG.GenreId=G.GenreId
	inner join show sh 
	on sh.MovieId=m.MovieId
	where G.GenreName=@genname
	END
GO
/****** Object:  StoredProcedure [dbo].[GetMovieByLang]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMovieByLang]
@langname VARCHAR(30)
AS
	BEGIN 
	select M.MovieName,sh.*
	from movie m 
	inner join MovieLanguage ml 
	on m.MovieId=ml.MovieId
	inner join Language l
	on ml.LanguageId=l.LanguageId 
	inner join show sh 
	on sh.MovieId=m.MovieId
	where l.LanguageName=@langname
	END
GO
/****** Object:  StoredProcedure [dbo].[GetMovieByPlace]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GetMovieByPlace]
@city VARCHAR(30)
AS
	BEGIN
	SELECT *
	FROM Movie M 
	INNER JOIN Show S
		ON M.MovieId=S.MovieId
	INNER JOIN Screen SC
		ON S.ScreenId=SC.ScreenId
	INNER JOIN Theatre T
		ON SC.TheatreId=T.TheatreId
	INNER JOIN CITY C
		ON T.CityId=C.CityId
	WHERE CityName=@city
	END
        
GO
/****** Object:  StoredProcedure [dbo].[GetMovies]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetMovies]
@lang AS NameVal READONLY,
@genre AS NameVal READONLY,
@city VARCHAR(30)
AS
	BEGIN
	SELECT M.MovieName,SH.* 
	FROM Show SH 
	INNER JOIN MovieLanguage ML 
		ON SH.MovieLangId=ML.MovieLangId 
	INNER JOIN Language L
		ON ML.LanguageId=L.LanguageId AND L.LanguageName IN (SELECT * FROM @lang)
	INNER JOIN MovieGenre MG
		ON MG.MovieId=SH.MovieId
	INNER JOIN Genre G
		ON MG.GenreId=G.GenreId AND G.GenreName IN (SELECT * FROM @genre)
	INNER JOIN Screen S
		ON SH.ScreenId=S.ScreenId
	INNER JOIN Theatre T
		ON T.TheatreId=S.TheatreId
	INNER JOIN CITY C
		ON C.CityId=T.CityId AND C.CityName=@city
	INNER JOIN Movie M
		ON M.MovieId=SH.MovieId	
	WHERE SH.ShowDate=CAST(GETDATE() AS DATE)
	END
GO
/****** Object:  StoredProcedure [dbo].[GetSeatInfoByShowID]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[GetSeatInfoByShowID]
@showid INT
AS
BEGIN
SELECT SS.SeatName,SS.ScreenId,SH.ShowId,CASE 
WHEN TS.BookingId IS NULL THEN 'Available'
	else 'Booked'
	END AS [Status]
FROM SHOW SH
INNER JOIN ScreenSeat SS
ON SH.ScreenId=SS.ScreenId 
LEFT JOIN TicketSeat TS 
ON TS.SeatId=SS.SeatId WHERE SH.ShowID=@showid
END
GO
/****** Object:  StoredProcedure [dbo].[GetShowDetails]    Script Date: 26-07-2023 12:44:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[GetShowDetails]
@movlangid INT
AS
	BEGIN
	SELECT M.MovieName,S.* FROM Show S INNER JOIN Movie M 
	ON S.MovieId=M.MovieId WHERE S.MovieLangId=@movlangid
	END
GO
