--++ 1 ++
--select * from Genre 

--++ 2 ++
--select * from Artist order by ArtistName ++ 2 ++

--++ 3 ++
--select s.Title, a.ArtistName from Song s left join Artist a on s.ArtistId = a. 

--++ 4 ++
--select distinct a.ArtistName from Artist a left join Album al on al.ArtistId = a.id left join Genre g on al.GenreId = g.id where g.Name = 'Soul' 

--++ 5 ++
--select distinct a.ArtistName, g.Name from Artist a 
--inner join Album al on al.ArtistId = a.id 
--inner join Genre g on al.GenreId = g.id 
--where g.Name = 'Rock' or g.Name = 'Jazz' 

--++ 6 ++
--select a.Title from Album a 
--inner join Song s on s.AlbumId = a.id 
--where s.AlbumId =  null 

--++ 7 ++
--insert into Artist values ('Bullet for My Valentine', 1998) 
--select * from Artist 

--++ 8 ++
--insert into Album values ('The Poison', '10/03/2005', 3180, 'Visible Noise Trustkill', 28, 2) 
--select * from Album 

--++ 9 ++
--insert into Song values ('Tears Dont Fall', 348, '10/03/2005', 2, 28, 23) 
--insert into Song values ('Hit The Floor', 348, '10/03/2005', 2, 28, 23)  
--insert into Song values ('Suffocating Under Words', 348, '10/03/2005', 2, 28, 23)  
--select Id, Title from Song  

--++ 10 ++
--select s.Title as SongTitle, al.Title as AlbumTitle, ar.ArtistName from Artist ar 
--left join Album al on al.ArtistId = ar.id 
--left join Song s on ar.id = s.ArtistId 
--where ar.ArtistName = 'Bullet for My Valentine' 

--++ 11 ++
--SELECT al.Title as AlbumTitle, COUNT(s.Id) as SongCount
--	FROM Song s
--	LEFT JOIN Album al on al.Id = s.AlbumId
--	GROUP BY al.Title

--++ 12 ++
--select a.ArtistName, count(s.Title) as SongCount from Artist a 
--left join Song s on s.ArtistId = a.id 
--group by a.ArtistName
--having count(s.Title) > 0


--++ 13 ++
--select g.Name, count(s.Title) as SongCount from Genre g 
--left join Song s on s.GenreId = g.id 
--group by g.Name 

--++ 14 ++
--select top 1 artist.ArtistName, COUNT(artist.ArtistName) as LabelCount from 
--(select a.ArtistName, al.Label, al.ArtistId from Album al 
--inner join Artist a on a.id = al.ArtistId 
--group by al.Label, a.ArtistName, al.ArtistId) as artist 
--group by artist.ArtistName

--++ 15 ++
 select top 1 Title, AlbumLength as LongestAlbum from Album 
 order by AlbumLength desc

 --++ 16 ++
 select top 1 al.Title as AlbumTitle, s.Title as SongTitle, s.SongLength as LongestSong from Song s 
 left join Album al on al.id = s.AlbumId 
 order by SongLength desc

 -- ++ Extra 14 ++
-- SELECT ArtistName
--FROM Album 
--JOIN Artist on Artist.Id = Album.ArtistId
--GROUP BY ArtistName
--HAVING COUNT(distinct Label) > 1;