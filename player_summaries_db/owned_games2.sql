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
    '76561198260317680', 3590, 'Plants vs. Zombies: Game of the Year', 1971, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/3590/d2a9c24de11210560f579e7fd9303960c5060155.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/3590/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 32440, 'LEGO® Star Wars™: The Complete Saga', 58, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/32440/096307d4ae0decd6a331e381f8dd464d75e3d9d6.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/32440/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 620, 'Portal 2', 940, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/620/2e478fc6874d06ae5baf0d147f6f21203291aa02.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 11020, 'TrackMania Nations Forever', 565, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/11020/a422db7cb704324da48741b9e0a0cc193b566eb0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/11020/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 99900, 'Spiral Knights', 154, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/99900/d4b1a783f64871474bacfec6b33307e56fa665f7.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/99900/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 218620, 'PAYDAY 2', 523, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/218620/a6abc0d0c1e79c0b5b0f5c8ab81ce9076a542414.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/218620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 235460, 'METAL GEAR RISING: REVENGEANCE', 901, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/235460/ad0f84fe48b57f3861b6c6d743f26b98d670c21f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/235460/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 225840, 'Sven Co-op', 84, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/225840/b552055c69f4b4b05195b72805ed0bff09cf1e93.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/225840/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 302380, 'Floating Point', 8, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/302380/0ff14a47134b45214c1715546370e81786d0e9fe.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/302380/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 346330, 'BrainBread 2', 15, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/346330/de2d36d62e915082ef48da48eedc6161ca13451f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/346330/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 367520, 'Hollow Knight', 4118, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/367520/7b87aecda896ae747a6e40e3eb63498cb8b84df2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/367520/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 291550, 'Brawlhalla', 1772, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/291550/c43fac31b8bf8821764603a14d09412bc3d45f66.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/291550/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 391540, 'Undertale', 57, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/391540/2ce672b89b63ec1e70d2f12862e72eb4a33e9268.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/391540/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 438100, 'VRChat', 20, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/438100/52c5f93bd9f8de008307f5fad95023600267462c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/438100/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 444640, 'Bloons TD Battles', 545, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/444640/8041a649686724400b5999a364b3bc8ad1840ac2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/444640/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 471710, 'Rec Room', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/471710/8b4f9c24ad1df00f0db62ee79b6198a0bb96d044.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/471710/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 444200, 'World of Tanks Blitz', 1388, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/444200/6ce02840322f500c93a2f0304bc916fb44422631.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/444200/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 582500, 'We Were Here', 94, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/582500/3b5dc17a063e558ef755b7bb6e7a3feeb771972f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/582500/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 660880, 'b', 2, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/660880/290de6633ed9015e7088cb36bff49fad132e4767.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/660880/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 667530, 'Drunken Wrestlers 2', 156, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/667530/6da15813e889c58a020544700f417f993fff5261.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/667530/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 670290, 'Real Pool 3D - Poolians', 118, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/670290/b74acc3e1996c8cb9ce9e2933c190575fa0be457.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/670290/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 673560, 'IOSoccer', 37, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/673560/8fee12060ccdfa615e9c21bcead22b9f10020bdf.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/673560/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 304930, 'Unturned', 37, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/304930/e18009fb628b35953826efe47dc3be556b689f4c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/304930/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 677620, 'Splitgate', 950, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/677620/03e452b180ff77986c3957819bde4c69448a2d0f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/677620/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 698780, 'Doki Doki Literature Club', 30, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/698780/2bf8ed528d8f251428435a6f6ffc8e4e8e4b294c.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/698780/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 700330, 'SCP: Secret Laboratory', 47, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/700330/ea2e9a0aa3b0d3393e7452913b3c255cd23a13ba.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/700330/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 718500, 'Derpy Dinos', 29, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/718500/6a9a8495c46dbdab5531ebd32dc00bebec520d86.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/718500/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 738060, 'Freddy Fazbear''s Pizzeria Simulator', 271, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/738060/533e5d3d0322ad03117c49bbddfac47c416c3cb9.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/738060/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 766570, 'Russian Fishing 4', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/766570/3b374139de62caed7c8f2df0a57f671b7fa7dffb.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/766570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 774171, 'Muse Dash', 418, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/774171/e0f4a24aa5b44887dc3467ee3e9ceabf46082041.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/774171/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 871720, 'Ultimate Custom Night', 335, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/871720/b2fd1232960c8a481c7b857509ad20dd11c0de64.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/871720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 714010, 'Aimlabs', 17, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/714010/15347de11efc127539c388e585af9e92d10d5189.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/714010/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 945360, 'Among Us', 1444, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/945360/b82c3f46da8f3c918e1c9e0d18bd6fa8fcef6801.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/945360/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 270550, 'Yet Another Zombie Defense', 32, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/270550/d9414db164fa12a1e2cb83a60056dccc77ea3f38.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/270550/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 960090, 'Bloons TD 6', 375, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/960090/c5f0b67c8beeb6be99abe2ad8db2cada5d5ccff0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/960090/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 893520, 'CreativeDestruction', 179, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/893520/07738fcb215fe089b933c72749f1c52e7d9f8a7b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/893520/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1170970, 'Marbles on Stream', 1, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1170970/f9af9e6dba742ed3643cb0d9d8c88163ea044f9a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1170970/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1172470, 'Apex Legends', 433, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1172470/6cc35932af780289ae3d8d5cdbfe9cd545decad2.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1172470/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1201240, 'BLEACH Brave Souls - 3D Action', 19453, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1201240/874ee241cd8a0f456e0687bf30fd0447f3e0a94b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1201240/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1222730, 'STAR WARS™: Squadrons', 213, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1222730/fb47bc807e02c5ded16d36e13ba2d10dd1203205.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1222730/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1222800, 'VALKYRIE CONNECT', 660, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1222800/ab87407a28b87d523a83f354364bd34bfbc1e8fe.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1222800/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1241700, 'There is no game: Jam Edition 2015', 22, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1241700/05bd3ff3a36a05b099cca926b421e9905e475f04.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1241700/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1131720, 'Prop and Seek', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1131720/c580682bdb70b0a9d5f4d5374f2e2fad8ca75438.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1131720/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1252780, 'Bloons Monkey City', 551, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1252780/0cdba2d14bf2880937a46079d6af4d9ff1995435.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1252780/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1276390, 'Bloons TD Battles 2', 252, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1276390/a7dc725886824299daeecb20076e7fbd6615927d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1276390/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1279610, 'PrprLive', 284, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1279610/0d79ac5d7f3a506a5a203bd664334b097baf60f6.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1279610/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1289310, 'Helltaker', 159, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1289310/c4cfc91850d08836a6b49bc0509f7b0e3e17ffa4.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1289310/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1290490, 'UNBEATABLE [white label]', 11, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1290490/fe6ec997c1bf1b395cd6f548343e73c023b5861b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1290490/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1419170, 'My Singing Monsters', 2671, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1419170/698d97ab021448d894c00eebc646323a8587ec96.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1419170/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1443200, 'Class of ''09', 234, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1443200/b3fa67f007b077db33ccc8962c349aba8e34d90b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1443200/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1446720, 'Is It Wrong to Try to Shoot ''em Up Girls in a Dungeon?', 74, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1446720/16db2f7ede37919ed30456ec749b791d261adc88.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1446720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1449850, 'Yu-Gi-Oh!  Master Duel', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1449850/e87d78e42668f44fabde2da773385148e2f529bd.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1449850/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1557990, 'Retail Royale', 89, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1557990/d27b6eae14c5def08b641519c33726ccfbcf89fc.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1557990/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 823130, 'Totally Accurate Battlegrounds', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/823130/920902c516d435c3d9a6c5ef92e3cd4372f9314b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/823130/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1607250, 'MY HERO ULTRA RUMBLE', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1607250/8aa264968affcf28f31ad39362bd00a16d8c5039.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1607250/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1485080, 'Just Act Natural', 140, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1485080/4a7143f689b3c7fd24b4f145062e2e8da73ed64d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1485080/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 264710, 'Subnautica', 165, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/264710/8a14ceef6e230330a916d7a6324b8c52d464d569.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/264710/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1683860, 'Eronoctosis: Put Yourself Together', 65, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1683860/d64f397c145be71845f1d9a7827d6603f84425a0.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1683860/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1714320, 'Find Love or Die Trying', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1714320/9b62ea23be758c84bac7d1023437293cc9e4ea6d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1714320/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1742020, 'Idol Showdown', 118, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1742020/142c7777a4dd88804b5a48853479bf5c2de98152.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1742020/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1748610, 'Evil God Korone', 57, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1748610/56a76e67e24c778231ca6b972d078647bd2a9540.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1748610/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1782210, 'Crab Game', 948, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1782210/e1afdaf96f55771d1d5ea4c9692d0f707ab0110b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1782210/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1790340, 'KUUKIYOMI: Consider It! ONLINE', 18, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1790340/62355223d8574689869083c953c6da1d10a60c3f.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1790340/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1794680, 'Vampire Survivors', 1862, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1794680/3677cf1be3be1f4ea42261c62ce10519715ade58.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1794680/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1818750, 'MultiVersus', 250, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1818750/01fb7eab28b80a06e4da69a6b3d76dbe383bea8e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1818750/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1869590, 'Omega Strikers', 22, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1869590/5e07146c770962edaf303e907447d63538d67948.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1869590/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 578080, 'PUBG: BATTLEGROUNDS', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/578080/609f27278aa70697c13bf99f32c5a0248c381f9d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/578080/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1922560, 'Plants vs. Zombies™ Garden Warfare 2: Deluxe Edition', 333, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1922560/fc6f1e8686ad5b42e270ea1ce592e30b5f77ef25.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1922560/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1677740, 'Stumble Guys', 492, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1677740/4517b0a1eff3befd699ede64a57e3f816d581be7.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1677740/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1961460, 'Project Playtime', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1961460/c443ac07bed8665c5bef29464351c3b236684759.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1961460/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1966720, 'Lethal Company', 1881, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1966720/8393f321a62a9ef0be762c81565d2caea4fb7da6.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1966720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1977530, 'One-armed cook', 298, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1977530/432f7c9b7de50ad808f1d7f7718bbe9617798b50.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1977530/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2073850, 'THE FINALS', 46, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2073850/9532db560dca3b4982f4af3f5981b6b2ce2a6909.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2073850/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2143030, 'Cave Crawlers', 14, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2143030/6295db8211a584a51e5596f7fd5c86d194bcfaad.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2143030/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 652810, 'Grabity', 25, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/652810/8ea268298dd7fc5af38feb26826998818014d8b5.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/652810/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2225070, 'Trackmania', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2225070/4b0f99cb45eef02df25bee27eb3d52052e8f8b55.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2225070/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2232840, 'Garten of Banban', 21, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2232840/24e8b2055bb82edc347207bbbe83df02be8f5578.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2232840/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2318310, 'Class of ''09: The Re-Up', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2318310/7fdb1b4939f69745b02e8c7201e91822dbff3156.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2318310/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2357570, 'Overwatch® 2', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2357570/da42bd294c941d5947b1bc2c2b2efa1313d36a91.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2357570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2378900, 'The Coffin of Andy and Leyley', 387, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2378900/efd62c7d4c1a6ed0b4d7b61dc7e487fa710ad960.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2378900/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2515070, 'AQUARIUM', 791, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2515070/8ca292a4de934ab651977c0d1620cd29b02bcc59.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2515070/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2551020, 'One-armed robber', 5, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2551020/810402b02588c37cc459b1a39896ab9377ba616a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2551020/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2336720, 'Greed of Man', 1, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2336720/303aef316e016b37875a2e7e89996d1309ae4182.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2336720/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2667970, '100 Asian Cats', 6, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2667970/7c30a09d2894f26423426e713428b1636e57425d.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2667970/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2709570, 'Supermarket Together', 47, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2709570/df024275a7ba53c79008b45c0d74b4a2e6a2069b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2709570/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2719150, 'Holo X Break', 17, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2719150/0305a820d74472bb13b21f3992c49fe1819bb25a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2719150/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2739990, 'Mahjong Soul', 2956, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2739990/3e7174adf280a550f50495144a833bb122e2a35e.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2739990/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 383180, 'Dead Island Riptide Definitive Edition', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/383180/68ea0c6d8ed1d089687da6318a62a7c3e3b5741b.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/383180/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2767030, 'Marvel Rivals', 7, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2767030/839b4712925b95702ca56e0c4d399adf54f4d617.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2767030/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2788870, 'Mini Settlers: Prologue', 30, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2788870/0692d4dec017f87874b92617c2f39bce2885fb04.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2788870/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2825180, 'WOWOWOW KORONE BOX', 19, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2825180/7ab1f138c67b3ba1b7d273749b2c3f3549b83c97.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2825180/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2877240, 'Miko in Maguma', 5, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2877240/a63c38d1395756ca5be1e342a7bbaeaf66e90947.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2877240/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 2899450, 'HOLOSAGA: Invasion of the HoloX', 179, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/2899450/33570d18aba690103533cb865cb29150c063c184.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2899450/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 582660, 'Black Desert', 0, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/582660/bf5ccace0a692720984827bf042143d0d4b28a42.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/582660/header.jpg', 0
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 440, 'Team Fortress 2', 161053, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/440/e3f595a92552da3d664ad00277fad2107345f743.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/440/header.jpg', 1
);

INSERT OR REPLACE INTO owned_games VALUES (
    '76561198260317680', 1840, 'Source Filmmaker', 16, 0,
    'http://media.steampowered.com/steamcommunity/public/images/apps/1840/a2ac9b9bfd3f560f48d184c90f4e6baaaa4bd92a.jpg', 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1840/header.jpg', 0
);