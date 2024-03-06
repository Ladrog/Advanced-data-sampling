INSERT INTO genres (id, gener_name) VALUES
    (1, 'rock'),
    (2, 'phonk'),
    (3, 'jazz');

INSERT INTO artist (id, artist_name) VALUES
    (1, 'Frank Sinatra'),
    (2, 'Oskalizator'),
    (3, 'ShogunF'),
    (4, 'Aria');

INSERT INTO artist_genres (artist_id , genre_id) VALUES
    (1, 3),
    (2, 2),
    (3, 2),
    (4, 1);

INSERT INTO albums (id , album_name, release_year) VALUES
    (1, 'Silent Night', '2023-11-30'),
    (2, 'Crossfade', '2024-02-10'),
    (3, 'Mugen', '2023-10-27'),
    (4, 'Генератор зла', '1998-06-02');

INSERT INTO artist_albums (artist_id  , album_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

INSERT INTO tracks (id  , album_id, track_name, duration) VALUES
    (1, 3, 'Treachery', 164),
    (2, 3, 'Pariah', 150),
    (3, 2, 'Crossfade', 248),
    (4, 4, 'Грязь', 283),
   	(5, 4, 'Беги за солнцем', 371),
    (6, 1, 'The First Noel', 165);

INSERT INTO tracks (id  , album_id, track_name, duration) VALUES
    (7, 1, 'My Funny Valentine', 210);


INSERT INTO compilations (id, comp_name, release_year) VALUES
    (1, 'БЕСПЕЧНЫЙ АНГЕЛ', '2004-01-01'),
    (2, '30. 1985-2015', '2015-11-28'),
    (3, 'Shamiswing', '2024-02-18'),
    (4, 'Sandstorm', '2024-01-27');

INSERT INTO track_compilations (track_id , comilation_id) VALUES
    (1, 3),
    (2, 3),
    (4, 2),
    (5, 1);