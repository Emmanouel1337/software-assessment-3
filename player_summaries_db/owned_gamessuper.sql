-- Owned Games SQL Dump
CREATE TABLE IF NOT EXISTS owned_games (
    appid INTEGER,
    name TEXT PRIMARY KEY,
    playtime_forever INTEGER,
    playtime_2weeks INTEGER,
    img_icon_url TEXT,
    img_logo_url TEXT,
    has_community_visible_stats INTEGER
);

INSERT OR REPLACE INTO owned_games VALUES (
    400,
    'Portal',
    1354,
    0,
    'cfa928ab4119dd137e50d728e8fe703e4e970aff',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    22380,
    'Fallout: New Vegas',
    770,
    0,
    '1711fd8c46d739feec76bd4a64eaeeca5b87e3a7',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    620,
    'Portal 2',
    871,
    0,
    '2e478fc6874d06ae5baf0d147f6f21203291aa02',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    105600,
    'Terraria',
    386,
    0,
    '858961e95fbf869f136e1770d586e0caefd4cfac',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    213330,
    'LEGO® Batman™ 2: DC Super Heroes',
    397,
    0,
    '92446ccf0abc6ab3e716251c0004acda5c3b13fd',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    11020,
    'TrackMania Nations Forever',
    61,
    0,
    'a422db7cb704324da48741b9e0a0cc193b566eb0',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    99900,
    'Spiral Knights',
    59,
    0,
    'd4b1a783f64871474bacfec6b33307e56fa665f7',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    236390,
    'War Thunder',
    17,
    0,
    'c69fbafb6e9891314cc5df0fe6a659612c289bf9',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    238960,
    'Path of Exile',
    0,
    0,
    '1110764aac57ac28d7ffd8c43071c75d5482a9c9',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    223710,
    'Cry of Fear',
    26,
    0,
    '962637bf69fddc5466b042c748b6408d2901f25c',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    265630,
    'Fistful of Frags',
    117,
    0,
    'e70c19e10125ea3f221666327af2b90f3fcecad9',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    247750,
    'The Stanley Parable Demo',
    45,
    0,
    'd4958966dbc02d7a282c52552f71ce6910957b63',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    242760,
    'The Forest',
    3,
    0,
    '3a6847f6ac5879e48531db52261771d5e22904ac',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    244210,
    'Assetto Corsa',
    312,
    0,
    'c35922c480816b55f18b2843c6d838ccbc8ff825',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    218620,
    'PAYDAY 2',
    9692,
    0,
    'a6abc0d0c1e79c0b5b0f5c8ab81ce9076a542414',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    252950,
    'Rocket League',
    6588,
    0,
    '9ad6dd3d173523354385955b5fb2af87639c4163',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    235460,
    'METAL GEAR RISING: REVENGEANCE',
    1281,
    0,
    'ad0f84fe48b57f3861b6c6d743f26b98d670c21f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    271590,
    'Grand Theft Auto V Legacy',
    3138,
    0,
    '1e72f87eb927fa1485e68aefaff23c7fd7178251',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    3240220,
    'Grand Theft Auto V Enhanced',
    0,
    0,
    '8355a7bbdb704f727bfba80ec56bc7228991338e',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    225840,
    'Sven Co-op',
    176,
    0,
    'b552055c69f4b4b05195b72805ed0bff09cf1e93',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    287700,
    'METAL GEAR SOLID V: THE PHANTOM PAIN',
    0,
    0,
    '7a1737163c96ea641143db45709a4ac444ba8f7b',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    322500,
    'SUPERHOT',
    454,
    0,
    '81839f0d50cb3e54c9aa7c69c04916f1e53d8c35',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    690040,
    'SUPERHOT: MIND CONTROL DELETE',
    1394,
    0,
    'b559e2f04cd42ef1d8fad23e735516bd7d155d5c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    730,
    'Counter-Strike 2',
    10867,
    0,
    '8dbc71957312bbd3baea65848b545be9eae2a355',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    346330,
    'BrainBread 2',
    16,
    0,
    'de2d36d62e915082ef48da48eedc6161ca13451f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    367520,
    'Hollow Knight',
    502,
    0,
    '7b87aecda896ae747a6e40e3eb63498cb8b84df2',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    380600,
    'Fishing Planet',
    0,
    0,
    'df6785140de8c32f6baec7fd7fd74c5823459250',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    291550,
    'Brawlhalla',
    1878,
    149,
    'c43fac31b8bf8821764603a14d09412bc3d45f66',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    225540,
    'Just Cause 3',
    1232,
    0,
    'c82c69c8d616d9d273d749e3dd3bd7a0f9da594a',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    359550,
    'Tom Clancy''s Rainbow Six Siege',
    10182,
    209,
    '624745d333ac54aedb1ee911013e2edb7722550e',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    623990,
    'Tom Clancy''s Rainbow Six Siege - Test Server',
    0,
    0,
    '20deaf466474f76f2ffdb345fe56f40fe3af74c0',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    438100,
    'VRChat',
    135,
    0,
    '52c5f93bd9f8de008307f5fad95023600267462c',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    377160,
    'Fallout 4',
    2354,
    0,
    '779c4356ebe32af2af7c9f0bbba595dfe872cd7f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    379720,
    'DOOM',
    303,
    263,
    'b6e72ff47d1990cb644700751eeeff14e0aba6dc',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    471710,
    'Rec Room',
    395,
    0,
    '8b4f9c24ad1df00f0db62ee79b6198a0bb96d044',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    292030,
    'The Witcher 3: Wild Hunt',
    0,
    0,
    '78d0ff98b67851f24539cdf2402cf147679134f4',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    548430,
    'Deep Rock Galactic',
    1712,
    0,
    'e033e23c29a192a17c16a7645a2b423ac64ff447',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    444200,
    'World of Tanks Blitz',
    69,
    0,
    '6ce02840322f500c93a2f0304bc916fb44422631',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    632360,
    'Risk of Rain 2',
    8070,
    119,
    '0b809ac6f25e6570fecae5fc47bca0139a7bf70c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    667530,
    'Drunken Wrestlers 2',
    41,
    0,
    '6da15813e889c58a020544700f417f993fff5261',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    673560,
    'IOSoccer',
    10,
    0,
    '8fee12060ccdfa615e9c21bcead22b9f10020bdf',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    304930,
    'Unturned',
    466,
    0,
    'e18009fb628b35953826efe47dc3be556b689f4c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    677620,
    'Splitgate',
    2199,
    0,
    '03e452b180ff77986c3957819bde4c69448a2d0f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    240720,
    'Getting Over It with Bennett Foddy',
    237,
    0,
    '161090eb78acf2e28333e8ae182121d906f1ee85',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    700330,
    'SCP: Secret Laboratory',
    1372,
    0,
    'ea2e9a0aa3b0d3393e7452913b3c255cd23a13ba',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    718500,
    'Derpy Dinos',
    7,
    0,
    '6a9a8495c46dbdab5531ebd32dc00bebec520d86',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    736590,
    'Operation: Harsh Doorstop',
    95,
    0,
    'c6bab4b59297f21d7c58195d2de0054662ec47d4',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    738060,
    'Freddy Fazbear''s Pizzeria Simulator',
    400,
    0,
    '533e5d3d0322ad03117c49bbddfac47c416c3cb9',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    792220,
    'Paunch',
    39,
    0,
    '34125b8aa5e15fe10a63a597bd4f00e6268cbc04',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    552520,
    'Far Cry 5',
    836,
    0,
    '928df2d32021f480499a97458068f62c45298e7a',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    863550,
    'HITMAN™ 2',
    374,
    0,
    '3f7c071da7a338e03f6243b73c02c072f1bacee9',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    871720,
    'Ultimate Custom Night',
    29,
    0,
    'b2fd1232960c8a481c7b857509ad20dd11c0de64',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    714010,
    'Aimlabs',
    75,
    0,
    '15347de11efc127539c388e585af9e92d10d5189',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    412020,
    'Metro Exodus',
    0,
    0,
    'f9863ed0ffc717b130744488f088ae95fe6e9bd8',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1449560,
    'Metro Exodus Enhanced Edition',
    975,
    0,
    'f9863ed0ffc717b130744488f088ae95fe6e9bd8',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    945360,
    'Among Us',
    4476,
    0,
    'b82c3f46da8f3c918e1c9e0d18bd6fa8fcef6801',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    270550,
    'Yet Another Zombie Defense',
    32,
    0,
    'd9414db164fa12a1e2cb83a60056dccc77ea3f38',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    893520,
    'CreativeDestruction',
    123,
    0,
    '07738fcb215fe089b933c72749f1c52e7d9f8a7b',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    690790,
    'DiRT Rally 2.0',
    0,
    0,
    'bd4cc20090b66b8e5a992a1ab67e3de0bef177da',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    761890,
    'Albion Online',
    431,
    0,
    'c58d1e42e59a9c6cc57c8da69d944b37ba45a0e2',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1142130,
    'They Can''t Stop All Of Us',
    2,
    0,
    '2b724c6ceccb79aa563509042385fd0d28880c1c',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1085660,
    'Destiny 2',
    1580,
    0,
    'fce050d63f0a2f8eb51b603c7f30bfca2a301549',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1172470,
    'Apex Legends',
    11097,
    0,
    '6cc35932af780289ae3d8d5cdbfe9cd545decad2',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1172380,
    'STAR WARS Jedi: Fallen Order™ ',
    0,
    0,
    '0ea1d285a8ee6fbeef0e8f7f3b2d7fa4cbcb423b',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1174180,
    'Red Dead Redemption 2',
    4661,
    0,
    '5106abd9c1187a97f23295a0ba9470c94804ec6c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1201240,
    'BLEACH Brave Souls - 3D Action',
    4,
    0,
    '874ee241cd8a0f456e0687bf30fd0447f3e0a94b',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1229490,
    'ULTRAKILL',
    2424,
    0,
    '665f952065f0512a2079efd77308e6a5af23dfd6',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1131720,
    'Prop and Seek',
    0,
    0,
    'c580682bdb70b0a9d5f4d5374f2e2fad8ca75438',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1238840,
    'Battlefield™ 1',
    1687,
    0,
    '325c78f6940b57a43b65468d2dc10e22601b0ec5',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1238860,
    'Battlefield 4™ ',
    2565,
    0,
    'fe0bd4bd2adde978ca411a4b2725c1b6d72717ef',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1237970,
    'Titanfall® 2',
    487,
    487,
    'd73c7e572859bd7490947d1aeab5c33eda18fd64',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1343370,
    'Old School RuneScape',
    524,
    0,
    '6f3b359a68383291bcd2ab49aac079c13c02d8bb',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1343400,
    'RuneScape',
    0,
    0,
    '021f59318858b7b3081a5dc083e7e302f1882f00',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1408720,
    'Krunker',
    17,
    0,
    'f161bd7364757e3858c622acf0ed8bba6458c8f8',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1407200,
    'World of Tanks',
    7,
    0,
    'fdedc7d172706ea39d2d2b389cd461cb4cbe7315',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1238810,
    'Battlefield™ V',
    325,
    0,
    '23ded6a957b5ec7525679c2e7bdac90c0653dbc8',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1449850,
    'Yu-Gi-Oh!  Master Duel',
    1384,
    0,
    'e87d78e42668f44fabde2da773385148e2f529bd',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1453490,
    'Deducto',
    754,
    0,
    'd0fc3da6ed979b594b3399f04d7a04d1e2b1b22c',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1088150,
    'Scribble It!',
    149,
    0,
    'a7a683dce57646a59a0fca326d0ceae5a74b8c2f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1517290,
    'Battlefield™ 2042',
    879,
    11,
    'dc805cd05c36a1b26f4eb57b64301e6708e20776',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1557990,
    'Retail Royale',
    336,
    0,
    'd27b6eae14c5def08b641519c33726ccfbcf89fc',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1485080,
    'Just Act Natural',
    69,
    0,
    '4a7143f689b3c7fd24b4f145062e2e8da73ed64d',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    264710,
    'Subnautica',
    311,
    0,
    '8a14ceef6e230330a916d7a6324b8c52d464d569',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    239140,
    'Dying Light',
    827,
    0,
    'd575b4ba3480fe20aaeda8e8f498c3e47033069d',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    461040,
    'PICO PARK:Classic Edition',
    0,
    0,
    '22e3a8031c53898cab4ea50600e0c804044fe746',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1742020,
    'Idol Showdown',
    39,
    0,
    '142c7777a4dd88804b5a48853479bf5c2de98152',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1782210,
    'Crab Game',
    457,
    0,
    'e1afdaf96f55771d1d5ea4c9692d0f707ab0110b',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1818450,
    'STALCRAFT: X',
    37,
    0,
    '6f0260e0ef252b950afec5c11ccc55fc95161c01',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1818750,
    'MultiVersus',
    436,
    0,
    '01fb7eab28b80a06e4da69a6b3d76dbe383bea8e',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1850570,
    'DEATH STRANDING DIRECTOR''S CUT',
    1054,
    122,
    'dd1abd2566c95d1e89408570719657a663591f8f',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1869590,
    'Omega Strikers',
    117,
    0,
    '5e07146c770962edaf303e907447d63538d67948',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    578080,
    'PUBG: BATTLEGROUNDS',
    43,
    0,
    '609f27278aa70697c13bf99f32c5a0248c381f9d',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1677740,
    'Stumble Guys',
    228,
    0,
    '4517b0a1eff3befd699ede64a57e3f816d581be7',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1961460,
    'Project Playtime',
    34,
    0,
    'c443ac07bed8665c5bef29464351c3b236684759',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1966720,
    'Lethal Company',
    2177,
    0,
    '8393f321a62a9ef0be762c81565d2caea4fb7da6',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    1977530,
    'One-armed cook',
    412,
    0,
    '432f7c9b7de50ad808f1d7f7718bbe9617798b50',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2073850,
    'THE FINALS',
    544,
    0,
    '9532db560dca3b4982f4af3f5981b6b2ce2a6909',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2119590,
    'Deducto 2',
    168,
    0,
    'fa0980c582a96500a4317e2b6fb6b3d5f4401003',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2139460,
    'Once Human',
    40,
    0,
    'e1c29227c162232120c15edcf282df61ee35f091',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2143030,
    'Cave Crawlers',
    13,
    0,
    '6295db8211a584a51e5596f7fd5c86d194bcfaad',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    652810,
    'Grabity',
    19,
    0,
    '8ea268298dd7fc5af38feb26826998818014d8b5',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1938090,
    'Call of Duty®',
    34,
    0,
    '8eaf32220060344996cbf11f697a4f4be943e5f3',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2225070,
    'Trackmania',
    0,
    0,
    '4b0f99cb45eef02df25bee27eb3d52052e8f8b55',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2289970,
    'In Sink: A Co-Op Escape Prologue',
    70,
    0,
    '4942d205824b55246db0959d237cd69f67dd2b50',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2357570,
    'Overwatch® 2',
    108,
    0,
    'da42bd294c941d5947b1bc2c2b2efa1313d36a91',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2429640,
    'THRONE AND LIBERTY',
    0,
    0,
    '2f68e286764ecc7774825d4f122d557259e0089d',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    489630,
    'Warhammer 40,000: Gladius - Relics of War',
    0,
    0,
    'ba6ea4fbeec62073763e103450e8aa7c5373d010',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1180660,
    'Tell Me Why',
    0,
    0,
    '6eb40e6f71226ce5bea75601a1ec0f9d6f647dd1',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2524890,
    'Pixel Gun 3D: PC Edition',
    0,
    0,
    '74fa3fd8d35a1b1cce00dc7831078c5cfedb1a6c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2551020,
    'One-armed robber',
    10,
    0,
    '810402b02588c37cc459b1a39896ab9377ba616a',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2336720,
    'Greed of Man',
    1,
    0,
    '303aef316e016b37875a2e7e89996d1309ae4182',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2644470,
    'PICO PARK 2',
    98,
    0,
    '7d1948eb5efb3d884c5d726591549e1cfd8a7d00',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2709570,
    'Supermarket Together',
    178,
    0,
    'df024275a7ba53c79008b45c0d74b4a2e6a2069b',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2739990,
    'Mahjong Soul',
    38,
    0,
    '3e7174adf280a550f50495144a833bb122e2a35e',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    383180,
    'Dead Island Riptide Definitive Edition',
    8,
    0,
    '68ea0c6d8ed1d089687da6318a62a7c3e3b5741b',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2767030,
    'Marvel Rivals',
    965,
    0,
    '839b4712925b95702ca56e0c4d399adf54f4d617',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    235900,
    'RPG Maker XP',
    0,
    0,
    'd4fae8dbf49b2d8fda0aa9d74323529e41d200a2',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2881650,
    'Content Warning',
    44,
    0,
    '513cf7f2e22c94f4372369e29bffccc4c239e9c0',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2920570,
    'Dale & Dawson Stationery Supplies',
    332,
    0,
    '62c9f3f430a95583de78cc0b5eaa9285158803fe',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2951290,
    'Delta Force Demo',
    0,
    0,
    'a3b5a820ed106103e5377b9c80b917cd4e9d9868',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    2016590,
    'Dark and Darker',
    0,
    0,
    '9dfa7ea1b799b795ab5795e8251b17e35ef2b8d8',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    628290,
    'All Walls Must Fall',
    0,
    0,
    'ea18dbd20b559766d2d25802d1f680f1e2dfd8f3',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    1486630,
    'Intravenous',
    0,
    0,
    'ee2f418d189f190c730c76f54bd6a3d772d3fd41',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    442070,
    'Drawful 2',
    0,
    0,
    'a2aab99a9ec657f817aff247593b3310cae44288',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    2828500,
    'The Jackbox Megapicker',
    0,
    0,
    '0866a1d27e96a96c7d013c41eb6fa2ec6a935a7d',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    3205720,
    'Schedule I: Free Sample',
    420,
    0,
    '3d9f9ed56cb6e1ba995883207290c39674e9c411',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    220,
    'Half-Life 2',
    0,
    0,
    'fcfb366051782b8ebf2aa297f3b746395858cb62',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    320,
    'Half-Life 2: Deathmatch',
    0,
    0,
    '795e85364189511f4990861b578084deef086cb1',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    360,
    'Half-Life Deathmatch: Source',
    0,
    0,
    '40b8a62efff5a9ab356e5c56f5c8b0532c8e1aa3',
    '',
    0
);
INSERT OR REPLACE INTO owned_games VALUES (
    286690,
    'Metro 2033 Redux',
    0,
    0,
    '353ea01a045c084215bca95519808eaa7319ce0c',
    '',
    1
);
INSERT OR REPLACE INTO owned_games VALUES (
    440,
    'Team Fortress 2',
    42630,
    0,
    'e3f595a92552da3d664ad00277fad2107345f743',
    '',
    1
);
