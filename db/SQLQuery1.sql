--   --------------------------------------------------
--   DBMS       : SQL Server 2008 
--   -------------------------------------------------- 


--  Drop Foreign Key Constraints 
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_answer_question]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [answer] DROP CONSTRAINT [FK_answer_question]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_article_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [article] DROP CONSTRAINT [FK_article_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_article_topic_article_a]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [article_topic] DROP CONSTRAINT [FK_article_topic_article_a]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_article_topic_topic_t]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [article_topic] DROP CONSTRAINT [FK_article_topic_topic_t]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_comment_question]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [comment] DROP CONSTRAINT [FK_comment_question]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_comment_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [comment] DROP CONSTRAINT [FK_comment_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_comment_user_comment]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [comment_user] DROP CONSTRAINT [FK_comment_user_comment]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_comment_user_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [comment_user] DROP CONSTRAINT [FK_comment_user_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_course_element_course]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [course_element] DROP CONSTRAINT [FK_course_element_course]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_course_element_element]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [course_element] DROP CONSTRAINT [FK_course_element_element]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_element_article]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [element] DROP CONSTRAINT [FK_element_article]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_element_test]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [element] DROP CONSTRAINT [FK_element_test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_forum_message_forum_topic]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [forum_message] DROP CONSTRAINT [FK_forum_message_forum_topic]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_forum_message_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [forum_message] DROP CONSTRAINT [FK_forum_message_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_forum_topic_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [forum_topic] DROP CONSTRAINT [FK_forum_topic_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_history_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [history] DROP CONSTRAINT [FK_history_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_question_topic]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [question] DROP CONSTRAINT [FK_question_topic]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_test_subject]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [test] DROP CONSTRAINT [FK_test_subject]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_test_question_question]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [test_question] DROP CONSTRAINT [FK_test_question_question]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_test_question_test]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [test_question] DROP CONSTRAINT [FK_test_question_test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_topic_subject]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [topic] DROP CONSTRAINT [FK_topic_subject]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_role]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user] DROP CONSTRAINT [FK_user_role]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_course_course]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_course] DROP CONSTRAINT [FK_user_course_course]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_course_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_course] DROP CONSTRAINT [FK_user_course_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_course_element_element]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_course_element] DROP CONSTRAINT [FK_user_course_element_element]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_course_element_user_course]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_course_element] DROP CONSTRAINT [FK_user_course_element_user_course]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_course_element_user_test]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_course_element] DROP CONSTRAINT [FK_user_course_element_user_test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_data_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_data] DROP CONSTRAINT [FK_user_data_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_test_test]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_test] DROP CONSTRAINT [FK_user_test_test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_test_user]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_test] DROP CONSTRAINT [FK_user_test_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_test_answer_answer]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_test_answer] DROP CONSTRAINT [FK_user_test_answer_answer]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_user_test_answer_user_test]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1)
ALTER TABLE [user_test_answer] DROP CONSTRAINT [FK_user_test_answer_user_test]
;


--  Drop Tables, Stored Procedures and Views 

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[answer]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [answer]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[article]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [article]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[article_topic]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [article_topic]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[comment]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [comment]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[comment_user]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [comment_user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[course]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [course]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[course_element]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [course_element]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[element]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [element]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[forum_message]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [forum_message]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[forum_topic]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [forum_topic]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[history]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [history]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[question]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [question]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[role]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [role]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[subject]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [subject]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[test]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[test_question]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [test_question]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[topic]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [topic]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user_course]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user_course]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user_course_element]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user_course_element]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user_data]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user_data]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user_test]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user_test]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[user_test_answer]') AND  OBJECTPROPERTY(id, 'IsUserTable') = 1)
DROP TABLE [user_test_answer]
;


--  Create Tables 
CREATE TABLE [answer] ( 
	[a_id] bigint identity(1,1) NOT NULL,
	[a_question_id] bigint NOT NULL,
	[a_description] nvarchar(255) NOT NULL,
	[a_correct] bit NOT NULL
)
;

CREATE TABLE [article] ( 
	[ar_id] bigint identity(1,1) NOT NULL,
	[ar_name] nvarchar(127) NOT NULL,
	[ar_content] text NOT NULL,
	[ar_user_id] bigint NOT NULL,    --  autor 
	[ar_datetime] datetime NOT NULL DEFAULT SYSDATETIME()
)
;

CREATE TABLE [article_topic] ( 
	[at_article_id] bigint NOT NULL,
	[at_topic_id] bigint NOT NULL
)
;

CREATE TABLE [comment] ( 
	[c_id] bigint identity(1,1)  NOT NULL,
	[c_user_id] bigint NOT NULL,    --  user create 
	[c_datetime] datetime NOT NULL DEFAULT SYSDATETIME(),
	[c_question_id] bigint NOT NULL,
	[c_rating] int DEFAULT 0 NOT NULL
)
;

CREATE TABLE [comment_user] ( 
	[cu_comment_id] bigint NOT NULL,
	[cu_user_id] bigint NOT NULL,
	[cu_good] bit NOT NULL
)
;

CREATE TABLE [course] ( 
	[co_id] bigint identity(1,1) NOT NULL,
	[co_name] nvarchar(127) NOT NULL,
	[co_description] nvarchar(255) NULL,
	[co_count_articles] smallint DEFAULT 0 NOT NULL,
	[co_count_tests] smallint DEFAULT 0 NOT NULL
)
;

CREATE TABLE [course_element] ( 
	[ce_element_id] bigint NOT NULL,
	[ce_course_id] bigint NOT NULL
)
;

CREATE TABLE [element] ( 
	[el_id] bigint identity(1,1) NOT NULL,
	[el_test_id] bigint NULL,
	[el_article_id] bigint NULL
)
;

CREATE TABLE [forum_message] ( 
	[fm_id] bigint identity(1,1) NOT NULL,
	[fm_topic_id] bigint NOT NULL,
	[fm_user_id] bigint NOT NULL,
	[fm_description] text NOT NULL,
	[fm_datetime] datetime NOT NULL DEFAULT SYSDATETIME()
)
;

CREATE TABLE [forum_topic] ( 
	[ft_id] bigint identity(1,1) NOT NULL,
	[ft_name] nvarchar(127) NOT NULL,
	[ft_datetime] datetime NOT NULL DEFAULT SYSDATETIME(),
	[ft_user_id] bigint NOT NULL,    --  author 
	[ft_closed] bit NOT NULL
)
;

CREATE TABLE [history] ( 
	[h_id] bigint identity(1,1) NOT NULL,
	[h_username] nvarchar(63),	
	[h_type] varchar(6) NOT NULL CHECK ([h_type] IN('insert', 'update', 'delete')),
	[h_table_name] nvarchar(63) NOT NULL,
	[h_old_value] nvarchar(max) NULL,
	[h_new_value] nvarchar(max) NULL,
	[h_datetime] datetime NOT NULL DEFAULT SYSDATETIME()
)
;

CREATE TABLE [question] ( 
	[q_id] bigint identity(1,1)  NOT NULL,
	[q_description] nvarchar(max) NOT NULL,
	[q_topic_id] bigint NULL,
	[q_correct_answers] tinyint DEFAULT 0 NOT NULL
)
;

CREATE TABLE [role] ( 
	[r_id] bigint identity(1,1)  NOT NULL,
	[r_name] nvarchar(127) NOT NULL
)
;

CREATE TABLE [subject] ( 
	[s_id] bigint identity(1,1)  NOT NULL,
	[s_name] nvarchar(127) NOT NULL
)
;

CREATE TABLE [test] ( 
	[t_id] bigint identity(1,1) NOT NULL,
	[t_name] nvarchar(127) NOT NULL,
	[t_description] nvarchar(255) NULL,
	[t_subject_id] bigint NULL,
	[t_count_question] tinyint NOT NULL DEFAULT 0
)
;

CREATE TABLE [test_question] ( 
	[tq_test_id] bigint NOT NULL,
	[tq_question_id] bigint NOT NULL,
	[tq_points] tinyint DEFAULT 1 NOT NULL
)
;

CREATE TABLE [topic] ( 
	[tp_id] bigint identity(1,1)  NOT NULL,
	[tp_name] nvarchar(127) NOT NULL,
	[tp_subject_id] bigint NOT NULL
)
;

CREATE TABLE [user] ( 
	[u_id] bigint identity(1,1)  NOT NULL,
	[u_email] nvarchar(127) NOT NULL,
	[u_login] nvarchar(127) NOT NULL,
	[u_password] nvarchar(127) NOT NULL,
	[u_role_id] bigint NOT NULL    --  role of user in the Testing System 
)
;

CREATE TABLE [user_course] ( 
	[uc_id] bigint identity(1,1) NOT NULL,
	[uc_course] bigint NOT NULL,
	[uc_user_id] bigint NOT NULL,
	[uc_mark] tinyint NULL,
	[uc_start_date] datetime NOT NULL DEFAULT SYSDATETIME(),
	[uc_end_date] datetime NULL
)
;

CREATE TABLE [user_course_element] ( 
	[uce_user_course_id] bigint NOT NULL,
	[uce_element_id] bigint NOT NULL,
	[uce_user_test_id] bigint NULL,    --  if not null element is test else element is article 
	[uce_datetime] datetime NOT NULL DEFAULT SYSDATETIME()
)
;

CREATE TABLE [user_data] ( 
	[ud_user_id] bigint NOT NULL,
	[ud_name] nvarchar(127) NULL,
	[ud_surname] nvarchar(127) NULL,
	[ud_interests] nvarchar(255) NULL,
	[ud_about] nvarchar(255) NULL
)
;

CREATE TABLE [user_test] ( 
	[ut_id] bigint identity(1,1) NOT NULL,
	[ut_user_id] bigint NOT NULL,
	[ut_test_id] bigint NULL,
	[ut_mark] int NOT NULL,
	[ut_datetime] datetime NOT NULL DEFAULT SYSDATETIME(),
	[ut_unanswered_questions] tinyint DEFAULT 0 NOT NULL
)
;

CREATE TABLE [user_test_answer] ( 
	[utw_user_test_id] bigint NOT NULL,
	[utw_answer_id] bigint NOT NULL
)
;

GO
--  Create Indexes 
ALTER TABLE [role]
	ADD CONSTRAINT [UQ_role_r_name] UNIQUE ([r_name])
;

ALTER TABLE [user]
	ADD CONSTRAINT [UQ_user_u_login] UNIQUE ([u_login])
;

--  Create Primary Key Constraints 
ALTER TABLE [answer] ADD CONSTRAINT [PK_answer] 
	PRIMARY KEY CLUSTERED ([a_id])
;

ALTER TABLE [article] ADD CONSTRAINT [PK_article] 
	PRIMARY KEY CLUSTERED ([ar_id])
;

ALTER TABLE [article_topic] ADD CONSTRAINT [PK_article_topic] 
	PRIMARY KEY CLUSTERED ([at_article_id], [at_topic_id])
;

ALTER TABLE [comment] ADD CONSTRAINT [PK_comment] 
	PRIMARY KEY CLUSTERED ([c_id])
;

ALTER TABLE [comment_user] ADD CONSTRAINT [PK_comment_user] 
	PRIMARY KEY CLUSTERED ([cu_comment_id], [cu_user_id])
;

ALTER TABLE [course] ADD CONSTRAINT [PK_course] 
	PRIMARY KEY CLUSTERED ([co_id])
;

ALTER TABLE [course_element] ADD CONSTRAINT [PK_course_element] 
	PRIMARY KEY CLUSTERED ([ce_element_id], [ce_course_id])
;

ALTER TABLE [element] ADD CONSTRAINT [PK_element] 
	PRIMARY KEY CLUSTERED ([el_id])
;

ALTER TABLE [forum_message] ADD CONSTRAINT [PK_forum_message] 
	PRIMARY KEY CLUSTERED ([fm_id])
;

ALTER TABLE [forum_topic] ADD CONSTRAINT [PK_forum_topic] 
	PRIMARY KEY CLUSTERED ([ft_id])
;

ALTER TABLE [history] ADD CONSTRAINT [PK_history] 
	PRIMARY KEY CLUSTERED ([h_id])
;

ALTER TABLE [question] ADD CONSTRAINT [PK_question] 
	PRIMARY KEY CLUSTERED ([q_id])
;

ALTER TABLE [role] ADD CONSTRAINT [PK_role] 
	PRIMARY KEY CLUSTERED ([r_id])
;

ALTER TABLE [subject] ADD CONSTRAINT [PK_subject] 
	PRIMARY KEY CLUSTERED ([s_id])
;

ALTER TABLE [test] ADD CONSTRAINT [PK_test] 
	PRIMARY KEY CLUSTERED ([t_id])
;

ALTER TABLE [test_question] ADD CONSTRAINT [PK_test_question] 
	PRIMARY KEY CLUSTERED ([tq_test_id], [tq_question_id])
;

ALTER TABLE [topic] ADD CONSTRAINT [PK_topic] 
	PRIMARY KEY CLUSTERED ([tp_id])
;

ALTER TABLE [user] ADD CONSTRAINT [PK_user] 
	PRIMARY KEY CLUSTERED ([u_id])
;

ALTER TABLE [user_course] ADD CONSTRAINT [PK_user_course] 
	PRIMARY KEY CLUSTERED ([uc_id])
;

ALTER TABLE [user_course_element] ADD CONSTRAINT [PK_user_course_element] 
	PRIMARY KEY CLUSTERED ([uce_user_course_id], [uce_element_id])
;

ALTER TABLE [user_data] ADD CONSTRAINT [PK_user_data] 
	PRIMARY KEY CLUSTERED ([ud_user_id])
;

ALTER TABLE [user_test] ADD CONSTRAINT [PK_user_test] 
	PRIMARY KEY CLUSTERED ([ut_id])
;

ALTER TABLE [user_test_answer] ADD CONSTRAINT [PK_user_test_answer] 
	PRIMARY KEY CLUSTERED ([utw_user_test_id], [utw_answer_id])
;



--  Create Foreign Key Constraints 
ALTER TABLE [answer] ADD CONSTRAINT [FK_answer_question] 
	FOREIGN KEY ([a_question_id]) REFERENCES [question] ([q_id])
;

ALTER TABLE [article] ADD CONSTRAINT [FK_article_user] 
	FOREIGN KEY ([ar_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [article_topic] ADD CONSTRAINT [FK_article_topic_article_a] 
	FOREIGN KEY ([at_article_id]) REFERENCES [article] ([ar_id])
;

ALTER TABLE [article_topic] ADD CONSTRAINT [FK_article_topic_topic_t] 
	FOREIGN KEY ([at_topic_id]) REFERENCES [topic] ([tp_id])
;

ALTER TABLE [comment] ADD CONSTRAINT [FK_comment_question] 
	FOREIGN KEY ([c_question_id]) REFERENCES [question] ([q_id])
;

ALTER TABLE [comment] ADD CONSTRAINT [FK_comment_user] 
	FOREIGN KEY ([c_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [comment_user] ADD CONSTRAINT [FK_comment_user_comment] 
	FOREIGN KEY ([cu_comment_id]) REFERENCES [comment] ([c_id])
;

ALTER TABLE [comment_user] ADD CONSTRAINT [FK_comment_user_user] 
	FOREIGN KEY ([cu_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [course_element] ADD CONSTRAINT [FK_course_element_course] 
	FOREIGN KEY ([ce_course_id]) REFERENCES [course] ([co_id])
;

ALTER TABLE [course_element] ADD CONSTRAINT [FK_course_element_element] 
	FOREIGN KEY ([ce_element_id]) REFERENCES [element] ([el_id])
;

ALTER TABLE [element] ADD CONSTRAINT [FK_element_article] 
	FOREIGN KEY ([el_article_id]) REFERENCES [article] ([ar_id])
;

ALTER TABLE [element] ADD CONSTRAINT [FK_element_test] 
	FOREIGN KEY ([el_test_id]) REFERENCES [test] ([t_id])
;

ALTER TABLE [forum_message] ADD CONSTRAINT [FK_forum_message_forum_topic] 
	FOREIGN KEY ([fm_topic_id]) REFERENCES [forum_topic] ([ft_id])
;

ALTER TABLE [forum_message] ADD CONSTRAINT [FK_forum_message_user] 
	FOREIGN KEY ([fm_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [forum_topic] ADD CONSTRAINT [FK_forum_topic_user] 
	FOREIGN KEY ([ft_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [question] ADD CONSTRAINT [FK_question_topic] 
	FOREIGN KEY ([q_topic_id]) REFERENCES [topic] ([tp_id])
;

ALTER TABLE [test] ADD CONSTRAINT [FK_test_subject] 
	FOREIGN KEY ([t_subject_id]) REFERENCES [subject] ([s_id])
;

ALTER TABLE [test_question] ADD CONSTRAINT [FK_test_question_question] 
	FOREIGN KEY ([tq_question_id]) REFERENCES [question] ([q_id])
;

ALTER TABLE [test_question] ADD CONSTRAINT [FK_test_question_test] 
	FOREIGN KEY ([tq_test_id]) REFERENCES [test] ([t_id])
;

ALTER TABLE [topic] ADD CONSTRAINT [FK_topic_subject] 
	FOREIGN KEY ([tp_subject_id]) REFERENCES [subject] ([s_id])
;

ALTER TABLE [user] ADD CONSTRAINT [FK_user_role] 
	FOREIGN KEY ([u_role_id]) REFERENCES [role] ([r_id])
;

ALTER TABLE [user_course] ADD CONSTRAINT [FK_user_course_course] 
	FOREIGN KEY ([uc_course]) REFERENCES [course] ([co_id])
;

ALTER TABLE [user_course] ADD CONSTRAINT [FK_user_course_user] 
	FOREIGN KEY ([uc_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [user_course_element] ADD CONSTRAINT [FK_user_course_element_element] 
	FOREIGN KEY ([uce_element_id]) REFERENCES [element] ([el_id])
;

ALTER TABLE [user_course_element] ADD CONSTRAINT [FK_user_course_element_user_course] 
	FOREIGN KEY ([uce_user_course_id]) REFERENCES [user_course] ([uc_id])
;

ALTER TABLE [user_course_element] ADD CONSTRAINT [FK_user_course_element_user_test] 
	FOREIGN KEY ([uce_user_test_id]) REFERENCES [user_test] ([ut_id])
;

ALTER TABLE [user_data] ADD CONSTRAINT [FK_user_data_user] 
	FOREIGN KEY ([ud_user_id]) REFERENCES [user] ([u_id])
;

ALTER TABLE [user_test] ADD CONSTRAINT [FK_user_test_test] 
	FOREIGN KEY ([ut_test_id]) REFERENCES [test] ([t_id])
;

ALTER TABLE [user_test] ADD CONSTRAINT [FK_user_test_user] 
	FOREIGN KEY ([ut_user_id]) REFERENCES [user] ([u_id])
	ON DELETE NO ACTION ON UPDATE CASCADE
;

ALTER TABLE [user_test_answer] ADD CONSTRAINT [FK_user_test_answer_answer] 
	FOREIGN KEY ([utw_answer_id]) REFERENCES [answer] ([a_id])
;

ALTER TABLE [user_test_answer] ADD CONSTRAINT [FK_user_test_answer_user_test] 
	FOREIGN KEY ([utw_user_test_id]) REFERENCES [user_test] ([ut_id])
;

EXEC sp_addextendedproperty 'MS_Description', 'autor', 'Schema', [dbo], 'table', [article], 'column', [ar_user_id]
;

EXEC sp_addextendedproperty 'MS_Description', 'user create', 'Schema', [dbo], 'table', [comment], 'column', [c_user_id]
;

EXEC sp_addextendedproperty 'MS_Description', 'author', 'Schema', [dbo], 'table', [forum_topic], 'column', [ft_user_id]
;

EXEC sp_addextendedproperty 'MS_Description', 'role of user in the Testing System', 'Schema', [dbo], 'table', [user], 'column', [u_role_id]
;

EXEC sp_addextendedproperty 'MS_Description', 'if not null element is test else element is article', 'Schema', [dbo], 'table', [user_course_element], 'column', [uce_user_test_id]
;

GO
-------------------trigger comment rating------------------------
IF OBJECT_ID ('[comment_rating_trigger]','TR') IS NOT NULL
DROP TRIGGER [comment_rating_trigger];
GO

CREATE TRIGGER [dbo].[comment_rating_trigger] 
ON [dbo].[comment_user]
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM [inserted]) AND NOT EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [comment] SET [c_rating] += (
			SELECT SUM(2 * [inserted].[cu_good] - 1) 
			FROM [inserted] 
			WHERE [comment].[c_id] = [inserted].[cu_comment_id]
		) WHERE [c_id] IN (SELECT [cu_comment_id] FROM [inserted] GROUP BY [cu_comment_id]);
	END;
	ELSE IF NOT EXISTS(SELECT * FROM [inserted]) AND EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [comment] SET [c_rating] -= (
			SELECT SUM(2 * [deleted].[cu_good] - 1) 
			FROM [deleted] 
			WHERE [comment].[c_id] = [deleted].[cu_comment_id]
		) WHERE [c_id] IN (SELECT [cu_comment_id] FROM [deleted] GROUP BY [cu_comment_id]);
	END;
END;

GO
------------------trigger count correct answers------------------------

IF OBJECT_ID ('[correct_answers_trigger]','TR') IS NOT NULL
DROP TRIGGER [correct_answers_trigger];
GO

CREATE TRIGGER [dbo].[correct_answers_trigger] 
ON [dbo].[answer]
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM [inserted]) AND NOT EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [question] SET [q_correct_answers] += (
			SELECT SUM([inserted].[a_correct] * 1) 
			FROM [inserted] 
			WHERE [question].[q_id] = [inserted].[a_question_id]
		) WHERE [q_id] IN (SELECT [a_question_id] FROM [inserted] GROUP BY [a_question_id]);
	END;
	ELSE IF NOT EXISTS(SELECT * FROM [inserted]) AND EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [question] SET [q_correct_answers] -= (
			SELECT SUM([deleted].[a_correct] * 1) 
			FROM [deleted] 
			WHERE [question].[q_id] = [deleted].[a_question_id]
		) WHERE [q_id] IN (SELECT [a_question_id] FROM [deleted] GROUP BY [a_question_id]);
	END;
END;

GO
-------------------------------------

ALTER TABLE [element] ADD CONSTRAINT CK_elem_correct 
	CHECK ( ([el_test_id] IS NOT NULL AND [el_article_id] IS NULL) 
	OR ([el_test_id] IS NULL AND [el_article_id] IS NOT NULL) )

----------------------------------------------------------
GO
-------------------------------------------------------

ALTER TABLE [user_course] ADD CONSTRAINT CK_dates_correct 
	CHECK (([uc_end_date] IS NOT NULL AND [uc_start_date] <= [uc_end_date])
	OR ([uc_end_date] IS NULL))

----------------------------------------------------------
GO
-------------------------------course_count_element_trigger---------------------------
IF OBJECT_ID ('[course_count_element_trigger]','TR') IS NOT NULL
DROP TRIGGER [course_count_element_trigger];
GO

CREATE TRIGGER [dbo].[course_count_element_trigger]
ON [dbo].[course_element]
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM [inserted]) AND NOT EXISTS(SELECT * FROM [deleted])
	BEGIN
		WITH [ins](c_id, t_count, a_count)
		AS
		(
			SELECT [ce_course_id] AS 'c_id', 
					SUM(CASE WHEN [el_test_id] IS NULL THEN 0 ELSE 1 END) AS 't_count',
					SUM(CASE WHEN [el_article_id] IS NULL THEN 0 ELSE 1 END) AS 'a_count' 
				FROM [inserted] 
				JOIN [element] ON [ce_element_id] = [el_id]
				GROUP BY [ce_course_id]
		)
		UPDATE [course] SET [co_count_articles] += (SELECT TOP 1 [a_count] FROM [ins] WHERE [co_id] = [c_id]),
							[co_count_tests] += (SELECT TOP 1 [t_count] FROM [ins] WHERE [co_id] = [c_id])
						WHERE [co_id] IN (SELECT [c_id] FROM [ins]);
	END;
	ELSE IF NOT EXISTS(SELECT * FROM [inserted]) AND EXISTS(SELECT * FROM [deleted])
	BEGIN
		WITH [del](c_id, t_count, a_count)
		AS
		(
			SELECT [ce_course_id] AS 'c_id', 
					SUM(CASE WHEN [el_test_id] IS NULL THEN 0 ELSE 1 END) AS 't_count',
					SUM(CASE WHEN [el_article_id] IS NULL THEN 0 ELSE 1 END) AS 'a_count' 
				FROM [deleted] 
				JOIN [element] ON [ce_element_id] = [el_id]
				GROUP BY [ce_course_id]
		)
		UPDATE [course] SET [co_count_articles] -= (SELECT TOP 1 [a_count] FROM [del] WHERE [co_id] = [c_id]),
							[co_count_tests] -= (SELECT TOP 1 [t_count] FROM [del] WHERE [co_id] = [c_id])
						WHERE [co_id] IN (SELECT [c_id] FROM [del]);
	END;
END;

-------------------count_questions_trigger------------------------
IF OBJECT_ID ('[count_questions_trigger]','TR') IS NOT NULL
DROP TRIGGER [count_questions_trigger];
GO

CREATE TRIGGER [dbo].[count_questions_trigger]
ON [dbo].[test_question]
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM [inserted]) AND NOT EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [test] SET [t_count_question] += (
			SELECT COUNT([inserted].[tq_test_id]) 
			FROM [inserted] 
			WHERE [t_id] = [inserted].[tq_test_id]
		) WHERE [t_id] IN (SELECT [tq_test_id] FROM [inserted]);
	END;
	ELSE IF NOT EXISTS(SELECT * FROM [inserted]) AND EXISTS(SELECT * FROM [deleted])
	BEGIN
		UPDATE [test] SET [t_count_question] -= (
			SELECT COUNT([deleted].[tq_test_id]) 
			FROM [deleted]
			WHERE [t_id] = [deleted].[tq_test_id]
		) WHERE [t_id] IN (SELECT [tq_test_id] FROM [deleted]);
	END;
END;
GO
-------------------create user_data_trigger trigger------------------------
IF OBJECT_ID ('[user_data_trigger]','TR') IS NOT NULL
DROP TRIGGER [user_data_trigger];
GO

CREATE TRIGGER [dbo].[user_data_trigger]
ON [dbo].[user]
AFTER INSERT, DELETE
AS
BEGIN
	IF EXISTS(SELECT * FROM [inserted]) AND NOT EXISTS(SELECT * FROM [deleted])
	BEGIN
		INSERT INTO [user_data]([ud_user_id]) SELECT [u_id] FROM [inserted];
	END;
	ELSE IF NOT EXISTS(SELECT * FROM [inserted]) AND EXISTS(SELECT * FROM [deleted])
	BEGIN
		DELETE FROM [user_data] WHERE [ud_user_id] = (SELECT [u_id] FROM [deleted]);
	END;
END;
GO
----------------------------------history user triggers-----------------------------------------
CREATE TRIGGER [histDeleteUserTrigger]
ON [user]
AFTER DELETE
AS INSERT INTO [history] ([h_username], [h_type], [h_table_name], [h_old_value], [h_new_value]) 
	SELECT SYSTEM_USER, 'delete', N'user', 
		CONCAT(N'u_id=',[u_id], N' u_email=',[u_email], N' u_login=', [u_login],N' u_role_id=', [u_role_id]), NULL  
	FROM [deleted]; 

GO

CREATE TRIGGER [histInsertUserTrigger]
ON [user]
AFTER INSERT
AS INSERT INTO [history] ([h_username], [h_type], [h_table_name], [h_old_value], [h_new_value]) 
	SELECT SYSTEM_USER, 'insert', N'user', NULL, 
		CONCAT(N'u_id=',[u_id], N' u_email=',[u_email], N' u_login=', [u_login],N' u_role_id=', [u_role_id])  
	FROM [inserted]; 

GO

CREATE TRIGGER [histUpdateUserTrigger]
ON [user]
AFTER UPDATE
AS INSERT INTO [history] ([h_username], [h_type], [h_table_name], [h_old_value], [h_new_value]) 
	SELECT SYSTEM_USER, 'update', N'user', CONCAT(N'u_id=', [d].[u_id], N' u_email=', [d].[u_email], N' u_login=', [d].[u_login],N' u_role_id=',
		[d].[u_role_id]), CONCAT(N'u_id=', [i].[u_id], N' u_email=', [i].[u_email], N' u_login=', [i].[u_login],N' u_role_id=', [i].[u_role_id]) 
	FROM [deleted] d JOIN [inserted] i ON [d].[u_id] = [i].[u_id]; 
	 
GO