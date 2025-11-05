insert into musicusagetypes (usage_type) values ('sport')
insert into sourceofmusic (source_of_music) values ('Radio')
insert into vatstatus (status_name) values ('Registered')
insert into artist_upload_types (type_name) values ('Video')
insert into artist_work_types (work_type_name) values ('Pop')
insert into bank_names (bank_name) values ('FNB')
insert into genders (gender_name) values ('Male')
insert into marital_status (status_name) values ('Single')
insert into member_categories (category_name) values ('Composer')
insert into titles (title_name) values ('Mr')

-- Music Usage Types (where music is used)
INSERT INTO musicusagetypes (usage_type) VALUES 
('Radio Broadcast'),
('TV Commercials'),
('Online Streaming'),
('Live Concert'),
('Restaurant/Bar Background'),
('Corporate Event'),
('Film Soundtrack');

-- Source of Music (where the music comes from)
INSERT INTO sourceofmusic (source_of_music) VALUES 
('Spotify'),
('YouTube Music'),
('Apple Music'),
('SoundCloud'),
('Live Studio Recording'),
('DJ Mix Upload'),
('Independent Artist Submission');

-- VAT Status (tax registration status)
INSERT INTO vatstatus (status_name) VALUES 
('Registered'),
('Exempt'),
('Pending Verification');

-- Artist Upload Types (what artists upload)
INSERT INTO artist_upload_types (type_name) VALUES 
('Music Video'),
('Instrumental'),
('Remix'),
('Podcast'),
('Live Performance Recording');

-- Artist Work Types (music genres or creative roles)
INSERT INTO artist_work_types (work_type_name) VALUES 
('Afrobeat'),
('Hip Hop'),
('Gospel'),
('House'),
('Traditional'),
('Pop'),
('Reggae');

-- Banks (Namibian and nearby banks)
INSERT INTO bank_names (bank_name) VALUES 
('First National Bank'),
('Standard Bank Namibia'),
('Nedbank Namibia'),
('Letshego Bank'),
('ABSA Namibia'),
('Trustco Bank'),
('EBank');

-- Gender
INSERT INTO genders (gender_name) VALUES 
('Male'),
('Non-Binary'),
('Prefer not to say');

-- Marital Status
INSERT INTO marital_status (status_name) VALUES 
('Single'),
('Divorced'),
('Widowed'),
('Separated');

-- Member Categories (types of members in the system)
INSERT INTO member_categories (category_name) VALUES 
('Composer'),
('Performer'),
('Sound Engineer'),
('DJ'),
('Songwriter'),
('Publisher');

-- Titles
INSERT INTO titles (title_name) VALUES 
('Mr'),
('Mrs'),
('Dr'),
('Prof'),
('Mx');

