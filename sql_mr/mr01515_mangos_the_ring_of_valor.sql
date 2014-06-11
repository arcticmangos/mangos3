-- The Ring of Valor

-- gameobject initial guid
SET @GAMEOBJECT := 541000;

UPDATE gameobject_template SET faction='114', flags='32' WHERE entry IN (192704, 192705, 192388, 192387, 192393, 192394, 192389, 192390);

DELETE FROM `gameobject` WHERE map = '618';
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GAMEOBJECT AND @GAMEOBJECT+15;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- buffs
(@GAMEOBJECT,'184663','618','1','1','735.551819','-284.794678','28.276682','0.034906','0','0','1','0','-120','100','1'),
(@GAMEOBJECT+1,'184664','618','1','1','791.224487','-284.794464','28.276682','2.600535','0','0','1','0','-120','100','1'),
-- elevators
(@GAMEOBJECT+2,'194582','618','1','1','763.536377','-294.535767','0.505383','3.141593','0','0','1','0','120','100','1'),
(@GAMEOBJECT+3,'194586','618','1','1','763.506348','-273.873352','0.505383','0','0','0','1','0','120','100','1'),
-- fire
(@GAMEOBJECT+4,'192704','618','1','1','743.543457','-283.799469','28.286655','0','0','0','1','0','120','100','1'),
(@GAMEOBJECT+5,'192705','618','1','1','782.971802','-283.799469','28.286655','0','0','0','1','0','120','100','1'),
(@GAMEOBJECT+6,'192388','618','1','1','743.711060','-284.099609','27.542587','3.141593','0','0','1','0','120','100','1'),
(@GAMEOBJECT+7,'192387','618','1','1','783.221252','-284.133362','27.535686','0','0','0','1','0','120','100','1'),
-- gears
(@GAMEOBJECT+8,'192393','618','1','1','763.664551','-261.872986','26.686588','0','0','0','1','0','120','100','1'),
(@GAMEOBJECT+9,'192394','618','1','1','763.578979','-306.146149','26.665222','3.141593','0','0','1','0','120','100','1'),
-- pillars
(@GAMEOBJECT+10,'194583','618','1','1','763.632385','-306.162384','25.909504','3.141593','0','0','1','0','120','100','1'),
(@GAMEOBJECT+11,'194584','618','1','1','723.644287','-284.493256','24.648525','3.141593','0','0','1','0','120','100','1'),
(@GAMEOBJECT+12,'194585','618','1','1','763.611145','-261.856750','25.909504','0','0','0','1','0','120','100','1'),
(@GAMEOBJECT+13,'194587','618','1','1','802.211609','-284.493256','24.648525','0','0','0','1','0','120','100','1'),
-- pulley
(@GAMEOBJECT+14,'192389','618','1','1','700.722290','-283.990662','39.517582','3.141593','0','0','1','0','120','100','1'),
(@GAMEOBJECT+15,'192390','618','1','1','826.303833','-283.996429','39.517582','0','0','0','1','0','120','100','1');

DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE `map` = 618);
INSERT INTO gameobject_battleground (guid, event1, event2) VALUES
-- buffs
(@GAMEOBJECT,   253, 0),
(@GAMEOBJECT+1, 253, 0),
-- elevators
(@GAMEOBJECT+2, 254, 0),
(@GAMEOBJECT+3, 254, 0),
-- gears
(@GAMEOBJECT+8,   7, 0),
(@GAMEOBJECT+9,   7, 0),
-- pillars
(@GAMEOBJECT+10,  6, 0),
(@GAMEOBJECT+11,  6, 0),
(@GAMEOBJECT+12,  6, 0),
(@GAMEOBJECT+13,  6, 0),
-- static go
(@GAMEOBJECT+14,  5, 0),
(@GAMEOBJECT+15,  5, 0);

DELETE FROM battleground_events WHERE `map` = '618';
INSERT INTO battleground_events (map, event1, event2, description) VALUES
(618, 253, 0, 'buffs'),
(618, 254, 0, 'doors'),
(618, 5, 0, 'spawn static go'),
(618, 6, 0, 'spawn pillars'),
(618, 7, 0, 'spawn gears');
