-- 4.3.4 15595 spell_proc_event

### Shaman ###

-- Shadow Orb
DELETE FROM `spell_proc_event` WHERE `entry` = 77487;

-- Evangelism
DELETE FROM `spell_proc_event` WHERE `entry` = 81659;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`) VALUES
(81659, 6, 1048704, 1088);

-- Inner Focus
DELETE FROM `spell_proc_event` WHERE `entry` = 89485;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES
(89485, 16384, 524288, 100);

-- Borrowed Time
DELETE FROM `spell_proc_event` WHERE `entry` IN (59887, 59888);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(59887, 127),
(59888, 127);

-- Sin and Punishment
DELETE FROM `spell_proc_event` WHERE `entry` = 87099;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyMaskC0`, `procEx`) VALUES
(87099, 64, 2);

-- Masochism
DELETE FROM `spell_proc_event` WHERE `entry` = 88994;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(88994, 127);

-- Strength of Soul
DELETE FROM `spell_proc_event` WHERE `entry` = 89488;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(89488, 6, 2048+4096+1024); 

-- Divine Aegis
DELETE FROM `spell_proc_event` WHERE `entry` = 47509;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(47509, 127);

-- Focused Will
DELETE FROM `spell_proc_event` WHERE `entry` = 45234;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(45234, 127);

-- Atonement
DELETE FROM `spell_proc_event` WHERE `entry` = 14523;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`) VALUES
(14523, 6, 1048704, 65536);

-- Surge of Light
DELETE FROM `spell_proc_event` WHERE `entry` = 88687;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `CustomChance`) VALUES
(88687, 6, 7296, 4, 0); -- remove 100%

-- Surge of Light (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 88688;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(88688, 6, 2048, 16384, 100);

-- Serendipity
DELETE FROM `spell_proc_event` WHERE `entry` = 63730;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(63730, 6, 2048, 4);

-- Chakra
DELETE FROM `spell_proc_event` WHERE `entry` = 14751;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskA1`, `SpellFamilyMaskB1`, `SpellFamilyMaskA2`, `SpellFamilyMaskC2`, `procEx`) VALUES
(14751, 6, 7168, 4, 512, 32, 128, 65536, 524288);

-- Body and Soul
DELETE FROM `spell_proc_event` WHERE `entry` = 64127;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB1`, `procFlags`, `CustomChance`) VALUES
(64127, 6, 1, 1, 16384, 100);

-- Echo of Light
DELETE FROM `spell_proc_event` WHERE `entry` = 77485;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `CustomChance`) VALUES
(77485, 0, 0, 0);

-- Resurgence
DELETE FROM `spell_proc_event` WHERE `entry` = 16180;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`, `procEx`) VALUES
(16180, 11, 448, 73683, 2);

-- Mind Spike
DELETE FROM `spell_proc_event` WHERE `entry` = 87178;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`) VALUES
(87178, 6, 8192, 131072);

-- Lava surge
DELETE FROM `spell_proc_event` WHERE `entry` IN (77755, 77756);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(77755, 11, 268435456, 262144, 10),
(77756, 11, 268435456, 262144, 20);

-- Feedback
DELETE FROM `spell_proc_event` WHERE `entry` = 86183;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(86183, 11, 3);

-- Earth's Grasp
DELETE FROM `spell_proc_event` WHERE `entry` IN (51483, 51485);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`, `CustomChance`) VALUES
(51483, 127, 0x4000, 0x80000, 100),
(51485, 127, 0x4000, 0x80000, 100);

-- Focused Insight
DELETE FROM `spell_proc_event` WHERE `entry` IN (77794);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(77794, 11, 0x90100000);

-- Earth Shield
DELETE FROM `spell_proc_event` WHERE `entry` = 974;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `Cooldown`) VALUES
(974, 0x222A8, 3);

-- Telluric Currents
DELETE FROM `spell_proc_event` WHERE `entry` = 82984;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(82984, 11, 1);

-- Tidal Waves
DELETE FROM `spell_proc_event` WHERE `entry` = 51562;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUES
(51562, 11, 16);

-- Earthliving
DELETE FROM `spell_proc_event` WHERE `entry` = 52007;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `CustomChance`) VALUES
(52007, 11, 20);

-- Water Shield
DELETE FROM `spell_proc_event` WHERE `entry` = 52127;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `Cooldown`) VALUES
(52127, 0x222A8, 3);

-- Frozen Power
DELETE FROM `spell_proc_event` WHERE `entry` = 63373;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `procFlags`, `CustomChance`) VALUES
(63373, 11, 2147483648, 65536, 100);

-- Improved Lava Lash
DELETE FROM `spell_proc_event` WHERE `entry` = 77700;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `procFlags`, `CustomChance`) VALUES
(77700, 11, 2147483648, 65536, 100);

-- Static Shock
DELETE FROM `spell_proc_event` WHERE `entry` = 51525;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUES
(51525, 11, 16777232, 131076);

-- Elemental Overload
DELETE FROM `spell_proc_event` WHERE `entry` = 77222;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(77222, 11, 1+2, 4096);

-- Glyph of Healing Wave
DELETE FROM `spell_proc_event` WHERE `entry` = 55440;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(55440, 11, 64);

-- Glyph of Grounding Totem
DELETE FROM `spell_proc_event` WHERE `entry` IN (89523);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUES
(89523, 126, 2048);

-- Glyph of Prayer of Healing
DELETE FROM `spell_proc_event` WHERE `entry` = 55680;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(55680, 6, 512);

-- Glyph of Dispel Magic
DELETE FROM `spell_proc_event` WHERE `entry` = 55677;

-- Glyph of Spirit Tap
DELETE FROM `spell_proc_event` WHERE `entry` = 63237;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(63237, 6, 2, 2, 100);

-- Item - Shaman T12 Restoration 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99190;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`, `procEx`) VALUES
(99190, 11, 16, 262144);

-- Item - Shaman T12 Elemental 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99204;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(99204, 11, 1);

-- Item - Shaman T13 Enhancement 4P Bonus (Feral Spirits)
DELETE FROM `spell_pet_auras` WHERE `spell` = 105872; 
INSERT INTO `spell_pet_auras` (`spell`, `effectId`, `pet`, `aura`) VALUE
(105872, 0, 29264, 105873);

### Priest ###

-- Vengeance
DELETE FROM `spell_proc_event` WHERE `entry` = 84839;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(84839, 127);

-- Vengeance
DELETE FROM `spell_proc_event` WHERE `entry` = 93098;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(93098, 127);

-- Sanctuary
DELETE FROM `spell_proc_event` WHERE `entry` = 20911;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(20911, 127, 80);

-- Protector of the Innocent
DELETE FROM `spell_proc_event` WHERE `entry` = 20138;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(20138, 127);

-- Speed of Light
DELETE FROM `spell_proc_event` WHERE `entry` = 85495;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUE
(85495, 10, 256);

-- Daybreak
DELETE FROM `spell_proc_event` WHERE `entry` = 88819;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(88819, 524288);

-- Daybreak
DELETE FROM `spell_proc_event` WHERE `entry` = 88820;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`) VALUE
(88820, 10, 3221225472, 1024);

-- Tower of Radiance
DELETE FROM `spell_proc_event` WHERE `entry` = 84800;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`, `procFlags`, `CustomChance`) VALUE
(84800, 10, 1073741824, 1024, 16384, 100);

-- Illuminated Healing
DELETE FROM `spell_proc_event` WHERE `entry` = 76669;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUE
(76669, 10, 2147483648+1073741824, 65536, 1024+16384+512);

-- Judgements of the Wise
DELETE FROM `spell_proc_event` WHERE `entry` = 31878;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(31878, 10, 8388608);

-- Divine Purpose
DELETE FROM `spell_proc_event` WHERE `entry` IN (85117, 86172);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`, `CustomChance`) VALUE
(85117, 10, 8388608, 2+131072+2097152+128, 32768+8192, 65536+16+16384, 100),
(86172, 10, 8388608, 2+131072+2097152+128, 32768+8192, 65536+16+16384, 100);

-- Divine Purpose proc
DELETE FROM `spell_proc_event` WHERE `entry` = 90174;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUE
(90174, 65536+16+16384, 524288, 100);

-- Grand Crusader
DELETE FROM `spell_proc_event` WHERE `entry` = 75806;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(75806, 10, 262144+32768);

-- Eye for an Eye
DELETE FROM `spell_proc_event` WHERE `entry` = 25988;
DELETE FROM `spell_proc_event` WHERE `entry` = 9799;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `CustomChance`) VALUE
(9799, 126, 0);

-- Pursuit of Justice
DELETE FROM `spell_proc_event` WHERE `entry` = 26022;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`, `Cooldown`) VALUE
(26022, 127, 131072+8192, 65536, 8);

-- Seals of Command
DELETE FROM `spell_proc_event` WHERE `entry` = 85126;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procEx`) VALUE
(85126, 10, 536872960, 65536, 0);

-- Seal of Righteousness proc
DELETE FROM `spell_proc_event` WHERE `entry` = 20154;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`) VALUE
(20154, 127, 4);

-- Seal of Justice proc
DELETE FROM `spell_proc_event` WHERE `entry` = 20164;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `ppmRate`, `procFlags`) VALUE
(20164, 127, 0, 4); -- no ppm rate in cata?

-- Sacred Shield
DELETE FROM `spell_proc_event` WHERE `entry` = 85285;
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUE
(85285, 60);

-- Selfless Healer
DELETE FROM `spell_proc_event` WHERE `entry` = 85803;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC1`) VALUE
(85803, 10, 16384);

-- Judgements of the Bold
DELETE FROM `spell_proc_event` WHERE `entry` = 89901;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(89901, 10, 8388608);

-- Hand of Light
DELETE FROM `spell_proc_event` WHERE `entry` = 76672;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procFlags`) VALUE
(76672, 10, 131072+32768, 8192, 16+4096);

-- Item - Priest T11 Healer 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 89911;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(89911, 6, 65536, 16384, 100);

-- Item - Priest T12 Healer 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99134;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(99134, 6, 2048+4096+1024, 32);

### Paladin ###

-- Seal of Truth
DELETE FROM `spell_proc_event` WHERE `entry` = 31801;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(31801, 1);

-- Seal of Insight
DELETE FROM `spell_proc_event` WHERE `entry` = 20165;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `ppmRate`) VALUE
(20165, 127, 20);

-- Item - Paladin T12 Holy 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99067;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(99067, 10, 65536);

-- Item - Paladin T12 Protection 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99074;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(99074, 10, 1048576);

-- Item - Paladin T12 Retribution 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99093;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(99093, 10, 32768);

-- Item - Paladin T13 Protection 2P Bonus (Judgement)
DELETE FROM `spell_proc_event` WHERE `entry` = 105800;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUE
(105800, 10, 1024, 4194304, 8);

### WARLOCK ###

-- Vigilance
DELETE FROM `spell_proc_event` WHERE `entry` = 50720;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(50720, 127);

-- Aftermath
DELETE FROM `spell_proc_event` WHERE `entry` = 85113;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procFlags`) VALUE
(85113, 5, 32, 8388608, 4096+65536);

-- Soul Fire!
DELETE FROM `spell_proc_event` WHERE `entry` = 61189;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(61189, 524288);

-- Improved Soul Fire
DELETE FROM `spell_proc_event` WHERE `entry` IN (18119, 18120);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUE
(18119, 5, 128, 65536, 100),
(18120, 5, 128, 65536, 100);

-- Burning Embers
DELETE FROM `spell_proc_event` WHERE `entry` = 91986;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(91986, 5, 4096, 128);

-- Soul Leech
DELETE FROM `spell_proc_event` WHERE `entry` = 30293;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procEx`) VALUE
(30293, 5, 128, 128+131072, 3);

-- Nether Protection
DELETE FROM `spell_proc_event` WHERE `entry` IN (30299, 30301);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`, `CustomChance`) VALUE
(30299, 127, 664232, 1024, 100),
(30301, 127, 664232, 1024, 100);

-- Empowered Imp (passive)
DELETE FROM `spell_proc_event` WHERE `entry` = 54278;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(54278, 5, 4096);

-- Empowered Imp (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 47283;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUE
(47283, 65536, 524288, 100);

-- Bane of Havoc
DELETE FROM `spell_proc_event` WHERE `entry` IN (85466, 85468);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`) VALUE
(85466, 127, 332116),
(85468, 127, 332116);

-- Jinx
DELETE FROM `spell_proc_event` WHERE `entry` = 18179;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`) VALUE
(18179, 5, 32768);

-- Everlasting Affliction
DELETE FROM `spell_proc_event` WHERE `entry` = 47201;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(47201, 5, 16384+8, 262144);

-- Siphon Life
DELETE FROM `spell_proc_event` WHERE `entry` = 63108;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(63108, 5, 2);

-- Pandemic
DELETE FROM `spell_proc_event` WHERE `entry` = 85099;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `procFlags`, `CustomChance`) VALUES
(85099, 5, 16384, 262144, 100);

-- Demonic Rebirth
DELETE FROM `spell_proc_event` WHERE `entry` = 88448;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(88448, 524288);

-- Decimation
DELETE FROM `spell_proc_event` WHERE `entry` IN (63165, 63167);
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUE
(63165, 65536, 524288, 100),
(63167, 65536, 524288, 100);

-- Cremation
DELETE FROM `spell_proc_event` WHERE `entry` = 85103;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(85103, 5, 2097152);

-- Demonic Soul
DELETE FROM `spell_proc_event` WHERE `entry` = 61595;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(61595, 524288);

-- Soulburn
DELETE FROM `spell_proc_event` WHERE `entry` = 74434;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SchoolMask`, `procFlags`, `CustomChance`, procEx) VALUE
(74434, 0, 127, 16384 | 65536, 100, 0x0010000);

-- Dark Intent
DELETE FROM `spell_proc_event` WHERE `entry` IN (85767, 85768);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`) VALUE
(85767, 127, 0x40000, 0x0010001),
(85768, 127, 0x40000, 0x0010001);

-- Fel Armor
DELETE FROM `spell_proc_event` WHERE `entry` = 28176;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(28176, 127);

-- Glyph of Drain Soul
DELETE FROM `spell_proc_event` WHERE `entry` = 58070;

-- Item - Warlock T13 4P Bonus (Soulburn)
DELETE FROM `spell_proc_event` WHERE `entry` = 105787;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUE
(105787, 5, 33554432);

### Mage ###

-- Ring of Frost
DELETE FROM `creature_template_addon` WHERE `entry` = 44199;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `auras`) VALUE
(44199, 1, '91264');

-- Item - Mage T13 2P Bonus (Haste Rating)
DELETE FROM `spell_proc_event` WHERE `entry` = 105788;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUES
(105788, 3, 536870912+1+32, 4096, 4096);

### Warrior ###

-- Sudden Death
DELETE FROM `spell_proc_event` WHERE `entry` = 29723;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(29723, 127);

-- Blitz
DELETE FROM `spell_proc_event` WHERE `entry` = 80976;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUE
(80976, 4, 1, 65536, 100);

-- Improved Hamstring
DELETE FROM `spell_proc_event` WHERE `entry` = 12289;

-- Lambs to the Slaughter
DELETE FROM `spell_proc_event` WHERE `entry` = 84583;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(84583, 4, 33554432);

-- Juggernaut proc
DELETE FROM `spell_proc_event` WHERE `entry` = 65156;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(65156, 4, 33554432 | 2097152);

-- Juggernaut
DELETE FROM `spell_proc_event` WHERE `entry` = 64976;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`) VALUE
(64976, 4, 1 | 1073741824, 65536);

-- Blood Craze
DELETE FROM `spell_proc_event` WHERE `entry` = 16487;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(16487, 127);

-- Bloodthirst
DELETE FROM `spell_proc_event` WHERE `entry` = 23885;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(23885, 127, 0x0080000);

-- Enrage
DELETE FROM `spell_proc_event` WHERE `entry` = 12317;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(12317, 127);

-- Die By The Sword
DELETE FROM `spell_proc_event` WHERE `entry` = 81913;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Cooldown`) VALUE
(81913, 127, 120);

-- Incite
DELETE FROM `spell_proc_event` WHERE `entry` = 50685;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `procEx`) VALUE
(50685, 4, 64, 524288+2);

-- Incite proc
DELETE FROM `spell_proc_event` WHERE `entry` = 86627;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUE
(86627, 524288);

-- Shield Specialization
DELETE FROM `spell_proc_event` WHERE `entry` = 12298;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`) VALUE
(12298, 127, 0x202A8, 64 + 2048);

-- Bastion of Defense
DELETE FROM `spell_proc_event` WHERE `entry` = 29593;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(29593, 127, 112);

-- Item - Warrior T11 DPS 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 90295;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(90295, 4, 4, 8192);

-- Item - Warrior T12 DPS 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99234;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(99234, 4, 65536, 128);

-- Item - Warrior T13 Arms and Fury 2P Bonus (Inner Rage)
DELETE FROM `spell_proc_event` WHERE `entry` = 105797;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUE
(105797, 4, 536870912);

-- Item - Warrior T13 Arms and Fury 4P Bonus (Colossus Smash)
DELETE FROM `spell_proc_event` WHERE `entry` = 105907;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(105907, 4, 33554432, 1024);

-- Item - Warrior T13 Protection 2P Bonus (Revenge)
DELETE FROM `spell_proc_event` WHERE `entry` = 105908;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(105908, 4, 1024);

### Rogue ###

-- Waylay
DELETE FROM `spell_proc_event` WHERE `entry` = 51692;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(51692, 8, 516);

-- Find Weakness
DELETE FROM `spell_proc_event` WHERE `entry` = 51632;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(51632, 8, 0x700);

-- Honor Among Thieves
DELETE FROM `spell_proc_event` WHERE `entry` IN (51698, 51700, 51701);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`, `Cooldown`) VALUES
(51698, 127, 2, 4),
(51700, 127, 2, 3),
(51701, 127, 2, 2);

-- Revealing Strike
DELETE FROM `spell_proc_event` WHERE `entry` = 84617;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA2`) VALUES
(84617, 8, 0xBA0000);

-- Main Gauche
DELETE FROM `spell_proc_event` WHERE `entry` = 76806;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(76806, 127);

-- Bandit's Guile
DELETE FROM `spell_proc_event` WHERE `entry` = 84652;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(84652, 8, 2, 0x10000000);

-- Restless Blades
DELETE FROM `spell_proc_event` WHERE `entry` = 79095;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(79095, 8, 0x920000, 1);

-- Combat Readiness
DELETE FROM `spell_proc_event` WHERE `entry` = 74001;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(74001, 127);

-- Combat Potency
DELETE FROM `spell_proc_event` WHERE `entry` = 35541;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUES
(35541, 8, 2);

-- Blade Twisting
DELETE FROM `spell_proc_event` WHERE `entry` = 31124;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(31124, 127);

-- Deadly Momentum
DELETE FROM `spell_proc_event` WHERE `entry` = 79121;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Cooldown`) VALUES
(79121, 127, 1);

-- Deadly Momentum (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 84590;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUE
(84590, 524288);

-- Seal Fate
DELETE FROM `spell_proc_event` WHERE `entry` = 14186;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procEx`) VALUES
(14186, 8, 1082131720, 2, 2);

-- Murderous Intent
DELETE FROM `spell_proc_event` WHERE `entry` = 14158;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(14158, 8, 4, 0x10, 100);

-- Cut to the Chase
DELETE FROM `spell_proc_event` WHERE `entry` = 51664;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(51664, 8, 131072, 4);

-- Venomous Wounds
DELETE FROM `spell_proc_event` WHERE `entry` = 79133;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, CustomChance) VALUES
(79133, 8, 0x00100100, 0);

-- Glyph of Hemorrhage
DELETE FROM `spell_proc_event` WHERE `entry` = 56807;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(56807, 8, 33554432);

-- Glyph of Blind
DELETE FROM `spell_proc_event` WHERE `entry` = 91299;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(91299, 8, 16777216, 256, 100);

-- Item - Rogue T12 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99174;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUES
(99174, 127, 2);

-- Item - Rogue T12 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99175;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(99175, 8, 131072);

-- Item - Rogue T13 2P Bonus (Tricks of the Trade)
DELETE FROM `spell_proc_event` WHERE `entry` = 105849;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(105849, 8, 131072, 17424, 100);

### Death Knight ###

-- Dark Simulacrum
DELETE FROM `spell_proc_event` WHERE `entry` = 77606;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(77606, 127, 65536);

-- Dark Simulacrum (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 77616;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(77616, 127, 65536);

-- Runic Empowerment
DELETE FROM `spell_proc_event` WHERE `entry` = 81229;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUE
(81229, 15, 536870912+4, 1);

-- DELETE FROM `spell_proc_event` WHERE `entry` = 81229;
-- INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `CustomChance`) VALUE
-- (81229, 127, 100);

-- Glyph of Dark Succor
DELETE FROM `spell_proc_event` WHERE `entry` = 96279;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(96279, 127);

-- Bone Shield
DELETE FROM `spell_proc_event` WHERE `entry` = 49222;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Cooldown`) VALUE
(49222, 127, 3);

-- Will of the Necropolis
DELETE FROM `spell_proc_event` WHERE `entry` = 52284;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Cooldown`) VALUE
(52284, 127, 45);

-- Will of the Necropolis (blood tap aura)
DELETE FROM `spell_proc_event` WHERE `entry` = 96171;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUE
(96171, 524288);

-- Might of the Frozen Wastes
DELETE FROM `spell_proc_event` WHERE `entry` = 81330;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(81330, 127);

-- Crimson Scourge
DELETE FROM `spell_proc_event` WHERE `entry` = 81135;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(81135, 127);

-- Rime
DELETE FROM `spell_proc_event` WHERE `entry` = 49188;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procEx`) VALUE
(49188, 15, 131072, 0);

-- Rime (buff)
DELETE FROM `spell_proc_event` WHERE `entry` = 59052;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUE
(59052, 15, 2, 2);

-- Glyph of Howling Blast
DELETE FROM `spell_proc_event` WHERE `entry` = 63335;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(63335, 15, 2);

-- Desecration
DELETE FROM `spell_proc_event` WHERE `entry` = 55666;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`) VALUE
(55666, 15, 1, 134217728, 8192);

-- Pestilence dot reducer
DELETE FROM `spell_proc_event` WHERE `entry` = 76243;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `procEx`) VALUE
(76243, 15, 65536, 65536, 524288);

-- Shadow Infusion
DELETE FROM `spell_proc_event` WHERE `entry` = 48965;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`) VALUE
(48965, 15, 2147483648, 1);

-- Unholy Blight
DELETE FROM `spell_proc_event` WHERE `entry` = 49194;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUE
(49194, 15, 1);

-- Sudden Doom
DELETE FROM `spell_proc_event` WHERE `entry` = 81340;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUE
(81340, 524288);

-- Sudden Doom
DELETE FROM `spell_proc_event` WHERE `entry` IN (49018, 49529, 49530);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `ppmRate`) VALUE
(49018, 127, 1.76),
(49529, 127, 3.37),
(49530, 127, 4.96);

-- Ebon Plaguebringer
DELETE FROM `spell_proc_event` WHERE `entry` = 51099;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`) VALUE
(51099, 15, 1+2+4, 4096);

-- Rune Strike passive
DELETE FROM `spell_proc_event` WHERE `entry` = 56816;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `ppmRate`) VALUE
(56816, 127, 48);

-- Rune Strike enabler
DELETE FROM `spell_proc_event` WHERE `entry` = 56817;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyMaskB0`) VALUE
(56817, 15, 536870912);

-- Item - Death Knight T12 Blood 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 98956;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(98956, 127);

-- Item - Death Knight T12 DPS 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 98970;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(98970, 15, 1073741824);

-- Item - Death Knight T12 DPS 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 98996;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUE
(98996, 15, 131072+134217728);

-- Item - Death Knight T13 Blood 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 105552;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Cooldown`) VALUE
(105552, 127, 45);

### Mage ###

-- Offensive State (DND)
DELETE FROM `spell_proc_event` WHERE `entry` = 79684;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `CustomChance`) VALUE
(79684, 126, 40);

-- Arcane Missiles
DELETE FROM `spell_proc_event` WHERE `entry` = 79683;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procEx`) VALUE
(79683, 3, 2048, 0x0080000);

-- Nether Vortex
DELETE FROM `spell_proc_event` WHERE `entry` = 86181;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(86181, 3, 536870912);

-- Nether Vortex (buff)
DELETE FROM `spell_proc_event` WHERE `entry` = 86262;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`) VALUE
(86262, 3, 65536, 256, 256);

-- Arcane Potency
DELETE FROM `spell_proc_event` WHERE `entry` = 31571;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`, `procFlags`, `CustomChance`) VALUE
(31571, 3, 8, 16384, 100);

-- Arcane Potency
DELETE FROM `spell_proc_event` WHERE `entry` = 57529;
DELETE FROM `spell_proc_event` WHERE `entry` = 57531;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(57529, 524288),
(57531, 524288);

-- Improved Mana Gem
DELETE FROM `spell_proc_event` WHERE `entry` = 31584;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUE
(31584, 3, 0x100, 16384, 100);

-- Master of Elements
DELETE FROM `spell_proc_event` WHERE `entry` = 29074;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(29074, 126, 2);

-- Ignite
DELETE FROM `spell_proc_event` WHERE `entry` = 11119;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(11119, 4, 2);

-- Hot Streak
DELETE FROM `spell_proc_event` WHERE `entry` = 44445;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procEx`) VALUE
(44445, 3, 1 + 16 + 2, 4096, 4096, 2);

-- Improved Hot Streak
DELETE FROM `spell_proc_event` WHERE `entry` = 44446;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procEx`) VALUE
(44446, 3, 1 + 16 + 2, 4096, 4096, 0); -- < 0 here

-- Hot Streak!
DELETE FROM `spell_proc_event` WHERE `entry` = 48108;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`) VALUE
(48108, 3, 4194304, 65536, 524288);

-- Firestarter
DELETE FROM `spell_proc_event` WHERE `entry` = 54741;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES
(54741, 65536, 524288, 100);

-- Impact
DELETE FROM `spell_proc_event` WHERE `entry` = 11103;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `CustomChance`) VALUE
(11103, 126, 1);

-- Impact
DELETE FROM `spell_proc_event` WHERE `entry` = 64343;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(64343, 3, 2);

-- Early Frost
DELETE FROM `spell_proc_event` WHERE `entry` = 83049;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`, `CustomChance`) VALUES
(83049, 3, 32, 65536, 524288, 100);

-- Piercing Chill
DELETE FROM `spell_proc_event` WHERE `entry` = 83156;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`, `CustomChance`) VALUES
(83156, 3, 32, 65536, 2, 100);

-- Permafrost
DELETE FROM `spell_proc_event` WHERE `entry` = 11175;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(11175, 126);

-- Ice Shards
DELETE FROM `spell_proc_event` WHERE `entry` = 11185;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUE
(11185, 3, 128, 327680, 100);

-- Finger of Frost
DELETE FROM `spell_proc_event` WHERE `entry` IN (44543, 44545);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(44543, 3, 34603680, 4096);

-- Finger of Frost proc
DELETE FROM `spell_proc_event` WHERE `entry` = 44544;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procFlags`) VALUES
(44544, 3, 131072, 1048576, 0x10000);

-- Brain Freeze
DELETE FROM `spell_proc_event` WHERE `entry` = 44546;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(44546, 3, 33555104);

-- Brain Freeze proc
DELETE FROM `spell_proc_event` WHERE `entry` = 57761;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES
(57761, 65536, 524288, 100);

-- Early Frost
DELETE FROM `spell_proc_event` WHERE `entry` = 83049;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`, `CustomChance`) VALUES
(83049, 3, 32, 65536, 524288, 100);

-- Reactive Barrier
DELETE FROM `spell_proc_event` WHERE `entry` = 86347;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`) VALUES
(86347, 3, 1, 16384);

### Druid ###

-- Stampede
DELETE FROM `spell_proc_event` WHERE `entry` = 78892;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `procFlags`, `CustomChance`) VALUES
(78892, 7, 16, 32+2048, 65536+16384, 100);

-- Leader of the Pack
DELETE FROM `spell_proc_event` WHERE `entry` = 24932;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `procEx`, `Cooldown`, `CustomChance`) VALUES
(24932, 127, 0x00001154, 2, 6, 100);

-- Primal Madness
DELETE FROM `spell_proc_event` WHERE `entry` = 80316;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`) VALUES
(80316, 7, 524288, 2147483712);

-- Blood in the Water
DELETE FROM `spell_proc_event` WHERE `entry` IN (80318, 80319);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(80318, 7, 8388608, 16, 50),
(80319, 7, 8388608, 16, 100);

-- Berserk
DELETE FROM `spell_proc_event` WHERE `entry` = 93622;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(93622, 524288);

-- Nature's Grace
DELETE FROM `spell_proc_event` WHERE `entry` = 16880;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `Cooldown`) VALUES
(16880, 7, 2097152 + 2 + 64, 60);

-- Eclipse Mastery Driver Passive
DELETE FROM `spell_proc_event` WHERE `entry` = 79577;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`, `SpellFamilyMaskA1`, `SpellFamilyMaskC1`) VALUES
(79577, 7, 5 + 2, 33554432, 5 + 2, 33554432);

-- Shooting Stars
DELETE FROM `spell_proc_event` WHERE `entry` = 93398;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(93398, 7, 2097152 + 2);

-- Shooting Stars (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 93400;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES
(93400, 65536, 524288, 100);

-- Lunar Shower
DELETE FROM `spell_proc_event` WHERE `entry` = 33603;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(33603, 7, 2);

-- Fury of Stormrage
DELETE FROM `spell_proc_event` WHERE `entry` = 17104;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(17104, 7, 1);

-- Fury of Stormrage (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 81093;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES
(81093, 65536, 524288, 100);

-- Revitalize
DELETE FROM `spell_proc_event` WHERE `entry` = 48539;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procEx`, `Cooldown`) VALUES
(48539, 7, 16, 16, 262144, 12);

-- Empowered Touch
DELETE FROM `spell_proc_event` WHERE `entry` = 33879;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `SpellFamilyMaskB1`, `procFlags`, `CustomChance`) VALUES
(33879, 7, 32+64, 33554432, 16384, 100);

-- Nature's Ward
DELETE FROM `spell_proc_event` WHERE `entry` = 33881;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUES
(33881, 127);

-- Efflorescence
DELETE FROM `spell_proc_event` WHERE `entry` = 34151;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(34151, 7, 2);

-- Gift of the Earthmother
DELETE FROM `spell_proc_event` WHERE `entry` = 51179;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA1`, `procFlags`, `CustomChance`) VALUES
(51179, 7, 16, 16384, 100);

-- Harmony
DELETE FROM `spell_proc_event` WHERE `entry` = 77495;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(77495, 7, 32 + 64, 2 + 33554432, 16384, 100);

-- Savage Defense
DELETE FROM `spell_proc_event` WHERE `entry` = 62600;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUES
(62600, 127, 2);

-- Berserk (rage cost buff)
DELETE FROM `spell_proc_event` WHERE `entry` = 93622;
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES
(93622, 524288);

-- Glyph of Healing Touch
DELETE FROM `spell_proc_event` WHERE `entry` = 54825;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(54825, 7, 32);

-- Glyph of Bloodletting
DELETE FROM `spell_proc_event` WHERE `entry` = 54743;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`, `CustomChance`) VALUES
(54743, 7, 64, 262144, 262144, 100);

-- Glyph of Blodletting
DELETE FROM `spell_proc_event` WHERE `entry` = 54815;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(54815, 7, 32768, 1024, 16, 100);

-- Glyph of Starsurge
DELETE FROM `spell_proc_event` WHERE `entry` = 62971;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskC0`) VALUES
(62971, 7, 33554432);

-- Item - Druid T11 Balance 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 90164;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUES
(90164, 127, 2);

-- Item - Druid T11 Feral 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 90165;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(90165, 7, 1024);

-- Item - Druid T12 Feral 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99001;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`) VALUES
(99001, 7, 2048+32768, 1024+64);

-- Item - Druid T12 Restoration 2P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99013;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(99013, 7, 16);

-- Item - Druid T12 Restoration 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry` = 99015;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(99015, 7, 2);

-- Item - Druid T13 Feral 4P Bonus (Frenzied Regeneration and Stampede)
DELETE FROM `spell_proc_event` WHERE `entry` = 105735;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB1`) VALUES
(105735, 7, 1073741824);

### Hunter ###

-- Aspect of the Fox
DELETE FROM `spell_proc_event` WHERE `entry` = 82661;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(82661, 127);

-- Improved Steady Shot
DELETE FROM `spell_proc_event` WHERE `entry` = 53220;

-- Cobra Strikes (proc)
DELETE FROM `spell_proc_event` WHERE `entry` = 53257;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `procEx`) VALUES
(53257, 9, 0x10, 0x0080000);

-- Cobra Strikes
DELETE FROM `spell_proc_event` WHERE `entry` = 53256;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUES
(53256, 9, 2048);

-- Trap Launcher
DELETE FROM `spell_proc_event` WHERE `entry` = 77769;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`) VALUE
(77769, 9, 128);

-- Invigoration
DELETE FROM `spell_proc_event` WHERE `entry` = 53397;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procEx`) VALUE
(53397, 127, 2);

-- Killing Streak
DELETE FROM `spell_proc_event` WHERE `entry` = 82748;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `CustomChance`) VALUES
(82748, 9, 2048, 16, 100);

-- Sic 'Em!
DELETE FROM `spell_proc_event` WHERE `entry` = 83340;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `procEx`) VALUES
(83340, 9, 2048 + 131072, 2147483648, 2);

-- Resistance if Futile
DELETE FROM `spell_proc_event` WHERE `entry` = 82897;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`, `procFlags`, `procEx`) VALUES
(82897, 9, 2048, 16, 65536);

-- Rapid Recuperation
DELETE FROM `spell_proc_event` WHERE `entry` = 53228;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB1`) VALUES
(53228, 9, 32, 16777216);

-- Wild Quiver
DELETE FROM `spell_proc_event` WHERE `entry` = 76659;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`) VALUE
(76659, 127);

-- Master Marksman
DELETE FROM `spell_proc_event` WHERE `entry` = 34485;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB0`) VALUES
(34485, 9, 1);

-- Posthaste
DELETE FROM `spell_proc_event` WHERE `entry` = 83558;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskB1`, `procFlags`, `CustomChance`) VALUES
(83558, 9, 16384, 16384, 100);

-- Marked for Death
DELETE FROM `spell_proc_event` WHERE `entry` = 53241;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskC0`, `procFlags`, `CustomChance`) VALUES
(53241, 9, 2048, 1, 256, 100);

-- Improved Serpent Sting
DELETE FROM `spell_proc_event` WHERE `entry` = 19464;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `procEx`, `CustomChance`) VALUES
(19464, 9, 16384, 256, 0, 100);

-- Thrill of he Hunt
DELETE FROM `spell_proc_event` WHERE `entry` = 34497;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `CustomChance`) VALUES
(34497, 9, 2048, 2147483648 + 134217728, 100);

-- Lock and Load
DELETE FROM `spell_proc_event` WHERE `entry` = 56342;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskB0`, `SpellFamilyMaskC0`, `procEx`) VALUES
(56342, 9, 24, 134217728, 131072 + 16384, 65536);

### Generic spells ###

-- Fulmination
DELETE FROM `spell_proc_event` WHERE `entry` = 95774;
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMaskA0`, `procFlags`, `CustomChance`) VALUES
(95774, 11, 1048576, 65536, 100);

