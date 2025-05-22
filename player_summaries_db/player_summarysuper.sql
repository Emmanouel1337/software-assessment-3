-- Player Summary SQL Dump
CREATE TABLE IF NOT EXISTS player_summaries (

    steamid TEXT PRIMARY KEY,

    personaname TEXT,

    profileurl TEXT,

    avatar TEXT,

    loccountrycode TEXT,

    timecreated INTEGER
);

INSERT OR REPLACE INTO player_summaries VALUES (
    '76561198967236244',
    'Macrozamia',
    'https://steamcommunity.com/profiles/76561198967236244/',
    'https://avatars.steamstatic.com/af28101daf4a0b4d73e45672ab4971cb466692a5.jpg',
    'AU',
    1559429639
);
