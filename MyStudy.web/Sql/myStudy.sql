USE master;
GO
/*建立空的MyPetShop数据库*/
/*请根据实际环境更改数据库文件和日志文件的存放路径*/
CREATE DATABASE MyStudy
ON 
( NAME = MyPetShop,
    FILENAME = 'C:\WebData\MyStudy.mdf',
    SIZE = 5MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 1MB )
LOG ON
( NAME = MyPetShop_log,
    FILENAME = 'C:\WebData\MyStudy_log.ldf',
    SIZE = 3MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 1MB )
COLLATE Chinese_PRC_CS_AS;
GO
USE MyStudy
/*分别建立Users、Doamin等数据表的结构*/

CREATE TABLE [Users](
	[UserId] int identity PRIMARY KEY,
    [Name] [nvarchar](80) NOT NULL,
    [Password] [nvarchar](80) NOT NULL,
    [StuNumber] [nvarchar](80) NOT NULL)

CREATE TABLE [Domains](
	[DomainId] int identity PRIMARY KEY,
    [Name] [nvarchar](80) NOT NULL,
    [Domain] [nvarchar](255) NOT NULL,

/*在Users表中插入示例数据*/
INSERT [Customer] ([Name], [Password], [StuNumber]) VALUES ('xq17', '1233456q', '20174390113')
/*在Domains表中插入示例数据*/
INSERT INTO [Doamins] ([Doamin], [StuNumber]) VALUES ('http://111.230.197.23/', '20174390113')
GO

USE master;
GO