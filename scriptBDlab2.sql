create table video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)


CREATE PROCEDURE sp_video_insertar
	@idVideo int,
	@titulo varchar(100),
	@repro int, 
	@url varchar(100)
AS 
BEGIN
	INSERT INTO video VALUES(@idVideo, @titulo, @repro, @url)
END


EXEC sp_video_insertar 1, 'video 1', 1, 'youtube.com'


select * from video


CREATE PROCEDURE sp_video_eliminar
	@idVideo int
AS 
BEGIN
	delete from video where idVideo = @idVideo
END


exec sp_video_eliminar 80



CREATE PROCEDURE sp_video_modificar
	@idVideo int,
	@titulo varchar(100),
	@repro int, 
	@url varchar(100)
AS 
BEGIN
	update video
	set idVideo = @idVideo,
	titulo = @titulo,
	repro = @repro,
	url = @url
	where idVideo = @idVideo
END


exec sp_video_modificar 45,'55',55,'55'
