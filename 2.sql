select track_name, duration from tracks
 where duration = (select max(duration) from tracks);

select track_name, duration from tracks
 where duration >= 210;

select comp_name ,release_year from compilations
 where release_year between '2022-01-01' and '2024-12-31';

select artist_name from artist
 where artist_name not like '% %';

select track_name from tracks
 where track_name like '%My%';