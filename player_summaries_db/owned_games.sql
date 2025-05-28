CREATE TABLE IF NOT EXISTS owned_games (
    steamid TEXT,
    appid INTEGER,
    name TEXT,
    playtime_forever INTEGER,
    playtime_2weeks INTEGER,
    img_icon_url TEXT,
    img_logo_url TEXT,
    has_community_visible_stats INTEGER,
    PRIMARY KEY (steamid, appid)
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 400, 'Portal', 1354, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/400/cfa928ab4119dd137e50d728e8fe703e4e970aff.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/400/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 22380, 'Fallout: New Vegas', 770, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/22380/1711fd8c46d739feec76bd4a64eaeeca5b87e3a7.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/22380/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 620, 'Portal 2', 871, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/620/2e478fc6874d06ae5baf0d147f6f21203291aa02.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 105600, 'Terraria', 386, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/105600/858961e95fbf869f136e1770d586e0caefd4cfac.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/105600/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 213330, 'LEGO® Batman™ 2: DC Super Heroes', 397, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/213330/92446ccf0abc6ab3e716251c0004acda5c3b13fd.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/213330/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 11020, 'TrackMania Nations Forever', 61, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/11020/a422db7cb704324da48741b9e0a0cc193b566eb0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/11020/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 99900, 'Spiral Knights', 59, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/99900/d4b1a783f64871474bacfec6b33307e56fa665f7.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/99900/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 236390, 'War Thunder', 17, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/236390/c69fbafb6e9891314cc5df0fe6a659612c289bf9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/236390/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 238960, 'Path of Exile', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/238960/1110764aac57ac28d7ffd8c43071c75d5482a9c9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/238960/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 223710, 'Cry of Fear', 26, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/223710/962637bf69fddc5466b042c748b6408d2901f25c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/223710/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 265630, 'Fistful of Frags', 117, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/265630/e70c19e10125ea3f221666327af2b90f3fcecad9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/265630/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 247750, 'The Stanley Parable Demo', 45, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/247750/d4958966dbc02d7a282c52552f71ce6910957b63.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/247750/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 242760, 'The Forest', 3, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/242760/3a6847f6ac5879e48531db52261771d5e22904ac.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/242760/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 244210, 'Assetto Corsa', 312, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/244210/c35922c480816b55f18b2843c6d838ccbc8ff825.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/244210/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 218620, 'PAYDAY 2', 9692, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/218620/a6abc0d0c1e79c0b5b0f5c8ab81ce9076a542414.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/218620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 252950, 'Rocket League', 6588, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/252950/9ad6dd3d173523354385955b5fb2af87639c4163.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/252950/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 235460, 'METAL GEAR RISING: REVENGEANCE', 1281, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/235460/ad0f84fe48b57f3861b6c6d743f26b98d670c21f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/235460/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 271590, 'Grand Theft Auto V Legacy', 3138, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/271590/1e72f87eb927fa1485e68aefaff23c7fd7178251.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/271590/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 3240220, 'Grand Theft Auto V Enhanced', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/3240220/8355a7bbdb704f727bfba80ec56bc7228991338e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/3240220/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 225840, 'Sven Co-op', 176, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/225840/b552055c69f4b4b05195b72805ed0bff09cf1e93.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/225840/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 287700, 'METAL GEAR SOLID V: THE PHANTOM PAIN', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/287700/7a1737163c96ea641143db45709a4ac444ba8f7b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/287700/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 322500, 'SUPERHOT', 454, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/322500/81839f0d50cb3e54c9aa7c69c04916f1e53d8c35.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/322500/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 690040, 'SUPERHOT: MIND CONTROL DELETE', 1394, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/690040/b559e2f04cd42ef1d8fad23e735516bd7d155d5c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/690040/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 730, 'Counter-Strike 2', 10867, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/730/8dbc71957312bbd3baea65848b545be9eae2a355.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 346330, 'BrainBread 2', 16, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/346330/de2d36d62e915082ef48da48eedc6161ca13451f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/346330/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 367520, 'Hollow Knight', 502, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/367520/7b87aecda896ae747a6e40e3eb63498cb8b84df2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/367520/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 380600, 'Fishing Planet', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/380600/df6785140de8c32f6baec7fd7fd74c5823459250.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/380600/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 291550, 'Brawlhalla', 1878, 149,
    'http://media.steampowered.com/steamcommunity/public/images/apps/291550/c43fac31b8bf8821764603a14d09412bc3d45f66.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/291550/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 225540, 'Just Cause 3', 1232, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/225540/c82c69c8d616d9d273d749e3dd3bd7a0f9da594a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/225540/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 359550, 'Tom Clancy''s Rainbow Six Siege', 10222, 117,
    'http://media.steampowered.com/steamcommunity/public/images/apps/359550/624745d333ac54aedb1ee911013e2edb7722550e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/359550/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 623990, 'Tom Clancy''s Rainbow Six Siege - Test Server', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/623990/20deaf466474f76f2ffdb345fe56f40fe3af74c0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/623990/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 438100, 'VRChat', 135, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/438100/52c5f93bd9f8de008307f5fad95023600267462c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/438100/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 377160, 'Fallout 4', 2354, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/377160/779c4356ebe32af2af7c9f0bbba595dfe872cd7f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/377160/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 379720, 'DOOM', 534, 491,
    'http://media.steampowered.com/steamcommunity/public/images/apps/379720/b6e72ff47d1990cb644700751eeeff14e0aba6dc.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/379720/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 471710, 'Rec Room', 395, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/471710/8b4f9c24ad1df00f0db62ee79b6198a0bb96d044.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/471710/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 292030, 'The Witcher 3: Wild Hunt', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/292030/78d0ff98b67851f24539cdf2402cf147679134f4.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/292030/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 548430, 'Deep Rock Galactic', 1712, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/548430/e033e23c29a192a17c16a7645a2b423ac64ff447.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/548430/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 444200, 'World of Tanks Blitz', 69, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/444200/6ce02840322f500c93a2f0304bc916fb44422631.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/444200/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 632360, 'Risk of Rain 2', 8070, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/632360/0b809ac6f25e6570fecae5fc47bca0139a7bf70c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/632360/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 667530, 'Drunken Wrestlers 2', 41, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/667530/6da15813e889c58a020544700f417f993fff5261.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/667530/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 673560, 'IOSoccer', 10, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/673560/8fee12060ccdfa615e9c21bcead22b9f10020bdf.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/673560/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 304930, 'Unturned', 466, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/304930/e18009fb628b35953826efe47dc3be556b689f4c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/304930/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 677620, 'Splitgate', 2199, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/677620/03e452b180ff77986c3957819bde4c69448a2d0f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/677620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 240720, 'Getting Over It with Bennett Foddy', 237, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/240720/161090eb78acf2e28333e8ae182121d906f1ee85.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/240720/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 700330, 'SCP: Secret Laboratory', 1372, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/700330/ea2e9a0aa3b0d3393e7452913b3c255cd23a13ba.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/700330/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 718500, 'Derpy Dinos', 7, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/718500/6a9a8495c46dbdab5531ebd32dc00bebec520d86.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/718500/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 736590, 'Operation: Harsh Doorstop', 95, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/736590/c6bab4b59297f21d7c58195d2de0054662ec47d4.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/736590/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 738060, 'Freddy Fazbear''s Pizzeria Simulator', 400, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/738060/533e5d3d0322ad03117c49bbddfac47c416c3cb9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/738060/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 792220, 'Paunch', 39, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/792220/34125b8aa5e15fe10a63a597bd4f00e6268cbc04.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/792220/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 552520, 'Far Cry 5', 836, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/552520/928df2d32021f480499a97458068f62c45298e7a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/552520/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 863550, 'HITMAN™ 2', 374, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/863550/3f7c071da7a338e03f6243b73c02c072f1bacee9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/863550/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 871720, 'Ultimate Custom Night', 29, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/871720/b2fd1232960c8a481c7b857509ad20dd11c0de64.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/871720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 714010, 'Aimlabs', 75, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/714010/15347de11efc127539c388e585af9e92d10d5189.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/714010/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 412020, 'Metro Exodus', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/412020/f9863ed0ffc717b130744488f088ae95fe6e9bd8.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/412020/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1449560, 'Metro Exodus Enhanced Edition', 975, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1449560/f9863ed0ffc717b130744488f088ae95fe6e9bd8.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1449560/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 945360, 'Among Us', 4476, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/945360/b82c3f46da8f3c918e1c9e0d18bd6fa8fcef6801.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/945360/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 270550, 'Yet Another Zombie Defense', 32, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/270550/d9414db164fa12a1e2cb83a60056dccc77ea3f38.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/270550/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 893520, 'CreativeDestruction', 123, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/893520/07738fcb215fe089b933c72749f1c52e7d9f8a7b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/893520/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 690790, 'DiRT Rally 2.0', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/690790/bd4cc20090b66b8e5a992a1ab67e3de0bef177da.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/690790/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 761890, 'Albion Online', 431, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/761890/c58d1e42e59a9c6cc57c8da69d944b37ba45a0e2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/761890/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1142130, 'They Can''t Stop All Of Us', 2, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1142130/2b724c6ceccb79aa563509042385fd0d28880c1c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1142130/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1085660, 'Destiny 2', 1580, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1085660/fce050d63f0a2f8eb51b603c7f30bfca2a301549.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1085660/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1172470, 'Apex Legends', 11097, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1172470/6cc35932af780289ae3d8d5cdbfe9cd545decad2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1172470/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1172380, 'STAR WARS Jedi: Fallen Order™ ', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1172380/0ea1d285a8ee6fbeef0e8f7f3b2d7fa4cbcb423b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1172380/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1174180, 'Red Dead Redemption 2', 4661, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1174180/5106abd9c1187a97f23295a0ba9470c94804ec6c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1174180/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1201240, 'BLEACH Brave Souls - 3D Action', 4, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1201240/874ee241cd8a0f456e0687bf30fd0447f3e0a94b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1201240/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1229490, 'ULTRAKILL', 2424, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1229490/665f952065f0512a2079efd77308e6a5af23dfd6.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1229490/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1131720, 'Prop and Seek', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1131720/c580682bdb70b0a9d5f4d5374f2e2fad8ca75438.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1131720/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1238840, 'Battlefield™ 1', 1687, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1238840/325c78f6940b57a43b65468d2dc10e22601b0ec5.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1238840/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1238860, 'Battlefield 4™ ', 2565, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1238860/fe0bd4bd2adde978ca411a4b2725c1b6d72717ef.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1238860/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1237970, 'Titanfall® 2', 487, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1237970/d73c7e572859bd7490947d1aeab5c33eda18fd64.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1237970/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1343370, 'Old School RuneScape', 524, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1343370/6f3b359a68383291bcd2ab49aac079c13c02d8bb.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1343370/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1343400, 'RuneScape', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1343400/021f59318858b7b3081a5dc083e7e302f1882f00.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1343400/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1408720, 'Krunker', 17, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1408720/f161bd7364757e3858c622acf0ed8bba6458c8f8.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1408720/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1407200, 'World of Tanks', 7, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1407200/fdedc7d172706ea39d2d2b389cd461cb4cbe7315.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1407200/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1238810, 'Battlefield™ V', 325, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1238810/23ded6a957b5ec7525679c2e7bdac90c0653dbc8.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1238810/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1449850, 'Yu-Gi-Oh!  Master Duel', 1384, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1449850/e87d78e42668f44fabde2da773385148e2f529bd.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1449850/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1453490, 'Deducto', 754, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1453490/d0fc3da6ed979b594b3399f04d7a04d1e2b1b22c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1453490/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1088150, 'Scribble It!', 149, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1088150/a7a683dce57646a59a0fca326d0ceae5a74b8c2f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1088150/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1517290, 'Battlefield™ 2042', 879, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1517290/dc805cd05c36a1b26f4eb57b64301e6708e20776.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1517290/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1557990, 'Retail Royale', 336, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1557990/d27b6eae14c5def08b641519c33726ccfbcf89fc.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1557990/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1485080, 'Just Act Natural', 69, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1485080/4a7143f689b3c7fd24b4f145062e2e8da73ed64d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1485080/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 264710, 'Subnautica', 311, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/264710/8a14ceef6e230330a916d7a6324b8c52d464d569.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/264710/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 239140, 'Dying Light', 930, 102,
    'http://media.steampowered.com/steamcommunity/public/images/apps/239140/d575b4ba3480fe20aaeda8e8f498c3e47033069d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/239140/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 461040, 'PICO PARK:Classic Edition', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/461040/22e3a8031c53898cab4ea50600e0c804044fe746.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/461040/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1742020, 'Idol Showdown', 39, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1742020/142c7777a4dd88804b5a48853479bf5c2de98152.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1742020/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1782210, 'Crab Game', 457, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1782210/e1afdaf96f55771d1d5ea4c9692d0f707ab0110b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1782210/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1818450, 'STALCRAFT: X', 37, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1818450/6f0260e0ef252b950afec5c11ccc55fc95161c01.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1818450/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1818750, 'MultiVersus', 436, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1818750/01fb7eab28b80a06e4da69a6b3d76dbe383bea8e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1818750/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1850570, 'DEATH STRANDING DIRECTOR''S CUT', 1329, 275,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1850570/dd1abd2566c95d1e89408570719657a663591f8f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1850570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1869590, 'Omega Strikers', 117, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1869590/5e07146c770962edaf303e907447d63538d67948.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1869590/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 578080, 'PUBG: BATTLEGROUNDS', 43, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/578080/609f27278aa70697c13bf99f32c5a0248c381f9d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/578080/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1677740, 'Stumble Guys', 228, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1677740/4517b0a1eff3befd699ede64a57e3f816d581be7.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1677740/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1961460, 'Project Playtime', 34, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1961460/c443ac07bed8665c5bef29464351c3b236684759.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1961460/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1966720, 'Lethal Company', 2177, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1966720/8393f321a62a9ef0be762c81565d2caea4fb7da6.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1966720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1977530, 'One-armed cook', 412, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1977530/432f7c9b7de50ad808f1d7f7718bbe9617798b50.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1977530/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2073850, 'THE FINALS', 544, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2073850/9532db560dca3b4982f4af3f5981b6b2ce2a6909.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2073850/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2119590, 'Deducto 2', 168, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2119590/fa0980c582a96500a4317e2b6fb6b3d5f4401003.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2119590/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2139460, 'Once Human', 40, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2139460/e1c29227c162232120c15edcf282df61ee35f091.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2139460/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2143030, 'Cave Crawlers', 13, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2143030/6295db8211a584a51e5596f7fd5c86d194bcfaad.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2143030/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 652810, 'Grabity', 19, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/652810/8ea268298dd7fc5af38feb26826998818014d8b5.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/652810/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1938090, 'Call of Duty®', 34, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1938090/8eaf32220060344996cbf11f697a4f4be943e5f3.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1938090/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2225070, 'Trackmania', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2225070/4b0f99cb45eef02df25bee27eb3d52052e8f8b55.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2225070/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2289970, 'In Sink: A Co-Op Escape Prologue', 70, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2289970/4942d205824b55246db0959d237cd69f67dd2b50.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2289970/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2357570, 'Overwatch® 2', 108, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2357570/da42bd294c941d5947b1bc2c2b2efa1313d36a91.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2357570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2429640, 'THRONE AND LIBERTY', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2429640/2f68e286764ecc7774825d4f122d557259e0089d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2429640/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 489630, 'Warhammer 40,000: Gladius - Relics of War', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/489630/ba6ea4fbeec62073763e103450e8aa7c5373d010.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/489630/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1180660, 'Tell Me Why', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1180660/6eb40e6f71226ce5bea75601a1ec0f9d6f647dd1.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1180660/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2524890, 'Pixel Gun 3D: PC Edition', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2524890/74fa3fd8d35a1b1cce00dc7831078c5cfedb1a6c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2524890/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2551020, 'One-armed robber', 10, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2551020/810402b02588c37cc459b1a39896ab9377ba616a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2551020/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2336720, 'Greed of Man', 1, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2336720/303aef316e016b37875a2e7e89996d1309ae4182.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2336720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2644470, 'PICO PARK 2', 98, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2644470/7d1948eb5efb3d884c5d726591549e1cfd8a7d00.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2644470/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2709570, 'Supermarket Together', 178, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2709570/df024275a7ba53c79008b45c0d74b4a2e6a2069b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2709570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2739990, 'Mahjong Soul', 38, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2739990/3e7174adf280a550f50495144a833bb122e2a35e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2739990/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 383180, 'Dead Island Riptide Definitive Edition', 8, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/383180/68ea0c6d8ed1d089687da6318a62a7c3e3b5741b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/383180/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2767030, 'Marvel Rivals', 965, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2767030/839b4712925b95702ca56e0c4d399adf54f4d617.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2767030/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 235900, 'RPG Maker XP', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/235900/d4fae8dbf49b2d8fda0aa9d74323529e41d200a2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/235900/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2881650, 'Content Warning', 44, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2881650/513cf7f2e22c94f4372369e29bffccc4c239e9c0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2881650/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2920570, 'Dale & Dawson Stationery Supplies', 332, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2920570/62c9f3f430a95583de78cc0b5eaa9285158803fe.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2920570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2951290, 'Delta Force Demo', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2951290/a3b5a820ed106103e5377b9c80b917cd4e9d9868.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2951290/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2016590, 'Dark and Darker', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2016590/9dfa7ea1b799b795ab5795e8251b17e35ef2b8d8.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2016590/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 628290, 'All Walls Must Fall', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/628290/ea18dbd20b559766d2d25802d1f680f1e2dfd8f3.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/628290/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 1486630, 'Intravenous', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1486630/ee2f418d189f190c730c76f54bd6a3d772d3fd41.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1486630/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 442070, 'Drawful 2', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/442070/a2aab99a9ec657f817aff247593b3310cae44288.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/442070/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 2828500, 'The Jackbox Megapicker', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2828500/0866a1d27e96a96c7d013c41eb6fa2ec6a935a7d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2828500/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 3205720, 'Schedule I: Free Sample', 420, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/3205720/3d9f9ed56cb6e1ba995883207290c39674e9c411.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/3205720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 220, 'Half-Life 2', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/220/fcfb366051782b8ebf2aa297f3b746395858cb62.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/220/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 320, 'Half-Life 2: Deathmatch', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/320/795e85364189511f4990861b578084deef086cb1.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/320/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 360, 'Half-Life Deathmatch: Source', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/360/40b8a62efff5a9ab356e5c56f5c8b0532c8e1aa3.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/360/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 286690, 'Metro 2033 Redux', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/286690/353ea01a045c084215bca95519808eaa7319ce0c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/286690/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198967236244', 440, 'Team Fortress 2', 42630, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/440/e3f595a92552da3d664ad00277fad2107345f743.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/440/header.jpg', 1
);