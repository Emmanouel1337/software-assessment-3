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
    '76561198260317680',
    'com3t',
    'https://steamcommunity.com/id/comet0404/',
    'https://avatars.steamstatic.com/5e767c42017104242791c0d6d4285f9f5a885140.jpg',
    'AQ',
    1447465427
);
