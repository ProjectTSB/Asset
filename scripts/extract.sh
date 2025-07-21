######################### コンテナ #########################

sqlite3 -csv in_source/sqlite.db "\
  SELECT\
  id, substr(world, 11), x, y, z,\
  CASE WHEN (facing == 'NORTH' AND chest_type == 'RIGHT') OR (facing == 'SOUTH' AND chest_type ==  'LEFT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing == 'NORTH' AND chest_type ==  'LEFT') OR (facing == 'SOUTH' AND chest_type == 'RIGHT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing ==  'EAST' AND chest_type == 'RIGHT') OR (facing ==  'WEST' AND chest_type ==  'LEFT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing ==  'EAST' AND chest_type ==  'LEFT') OR (facing ==  'WEST' AND chest_type == 'RIGHT') THEN 1 ELSE 0 END\
  FROM loot_asset_containers\
  WHERE (world == 'minecraft:overworld' AND (ABS(x) + ABS(z)) <= 1500) OR (world == 'minecraft:the_end');" > input/containers.csv
sqlite3 -csv in_source/sqlite.db "\
  SELECT\
  id, substr(world, 11), x, y, z,\
  CASE WHEN (facing == 'NORTH' AND chest_type == 'RIGHT') OR (facing == 'SOUTH' AND chest_type ==  'LEFT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing == 'NORTH' AND chest_type ==  'LEFT') OR (facing == 'SOUTH' AND chest_type == 'RIGHT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing ==  'EAST' AND chest_type == 'RIGHT') OR (facing ==  'WEST' AND chest_type ==  'LEFT') THEN 1 ELSE 0 END,\
  CASE WHEN (facing ==  'EAST' AND chest_type ==  'LEFT') OR (facing ==  'WEST' AND chest_type == 'RIGHT') THEN 1 ELSE 0 END\
  FROM loot_asset_containers\
  WHERE (world == 'minecraft:overworld' AND (ABS(x) + ABS(z)) >  1500) OR (world == 'minecraft:the_nether');" > input/container-outliers.csv


######################### 島 #########################

sqlite3 in_source/islands.db "\
  CREATE TABLE islands (\
    id                        INTEGER  PRIMARY KEY,\
    name                      TEXT     NOT NULL,\
    difficulty                TEXT     NOT NULL,\
    dimension                 TEXT     NOT NULL,\
    x                         INTEGER  NOT NULL,\
    y                         INTEGER  NOT NULL,\
    z                         INTEGER  NOT NULL,\
    tp_command                TEXT     NOT NULL,\
    ca_tp_command             TEXT,\
    ca_pos                    TEXT,\
    ca_x                      INTEGER,\
    ca_y                      INTEGER,\
    ca_z                      INTEGER,\
    ca_rotation               INTEGER,\
    is_spawner_placed         BOOLEAN  NOT NULL,\
    is_spawner_content_setted BOOLEAN  NOT NULL,\
    angel_name                TEXT,\
    angel_id                  INTEGER,\
    angel_datapack            TEXT,\
    is_container_placed       BOOLEAN  NOT NULL,\
    note                      TEXT,\
    distance_from_origin      REAL     NOT NULL,\
    biome                     TEXT\
  );"

sed -n '1p' "in_source/The SkyBlessing - 島.csv" | grep -q '^ID' && sed '1d' "in_source/The SkyBlessing - 島.csv" > tmp && mv tmp "in_source/The SkyBlessing - 島.csv"
sed '/^,\|^[0-9]\+,,/d' "in_source/The SkyBlessing - 島.csv" > tmp && mv tmp "in_source/The SkyBlessing - 島.csv"

sqlite3 -separator , in_source/islands.db ".import \"in_source/The SkyBlessing - 島.csv\" islands"
sqlite3 -csv in_source/islands.db "SELECT id, dimension, ca_x, ca_y, ca_z FROM islands WHERE (ca_x != '' AND ca_y != '' AND ca_z != '') AND ((dimension == 'overworld' AND (ABS(ca_x) + ABS(ca_z)) <= 1500) OR (dimension ==    'the_end'));" > input/islands.csv
sqlite3 -csv in_source/islands.db "SELECT id, dimension, ca_x, ca_y, ca_z FROM islands WHERE (ca_x != '' AND ca_y != '' AND ca_z != '') AND ((dimension == 'overworld' AND (ABS(ca_x) + ABS(ca_z)) >  1500) OR (dimension == 'the_nether'));" > input/island-outliers.csv

rm in_source/islands.db


######################### スポナー #########################

sqlite3 in_source/spawners.db "\
  CREATE TABLE spawners (\
    id                        INTEGER  PRIMARY KEY,\
    island_id                 INTEGER  NOT NULL,\
    island_name               TEXT     NOT NULL,\
    difficulty                TEXT     NOT NULL,\
    dimension                 TEXT     NOT NULL,\
    pos                       TEXT     NOT NULL,\
    x                         INTEGER  NOT NULL,\
    y                         INTEGER  NOT NULL,\
    z                         INTEGER  NOT NULL,\
    tp_command                TEXT     NOT NULL,\
    note                      TEXT,\
    mob_id_1                  INTEGER  NOT NULL,\
    mob_name_1                TEXT     NOT NULL,\
    mob_weight_1              INTEGER  NOT NULL,\
    mob_id_2                  INTEGER,\
    mob_name_2                TEXT,\
    mob_weight_2              INTEGER,\
    mob_id_3                  INTEGER,\
    mob_name_3                TEXT,\
    mob_weight_3              INTEGER,\
    mob_id_4                  INTEGER,\
    mob_name_4                TEXT,\
    mob_weight_4              INTEGER,\
    hp                        INTEGER  NOT NULL,\
    spawn_count               INTEGER  NOT NULL,\
    spawn_range               INTEGER  NOT NULL,\
    spawn_delay               INTEGER  NOT NULL,\
    min_spawn_delay           INTEGER  NOT NULL,\
    max_spawn_delay           INTEGER  NOT NULL,\
    max_nearby_entities       INTEGER  NOT NULL,\
    required_player_range     INTEGER  NOT NULL\
  );"

sed -n '1p' "in_source/The SkyBlessing - スポナー.csv" | grep -q '^ID' && sed '1d' "in_source/The SkyBlessing - スポナー.csv" > tmp && mv tmp "in_source/The SkyBlessing - スポナー.csv"
sed '/^,\|^[0-9]\+,,/d' "in_source/The SkyBlessing - スポナー.csv" > tmp && mv tmp "in_source/The SkyBlessing - スポナー.csv"

sqlite3 -separator , in_source/spawners.db ".import \"in_source/The SkyBlessing - スポナー.csv\" spawners"
sqlite3 -csv in_source/spawners.db "SELECT id, dimension, x, y, z, required_player_range FROM spawners WHERE (dimension == 'overworld' AND (ABS(x) + ABS(z)) <= 1500) OR (dimension == 'the_end');" > input/spawners.csv
sqlite3 -csv in_source/spawners.db "SELECT id, dimension, x, y, z, required_player_range FROM spawners WHERE (dimension == 'overworld' AND (ABS(x) + ABS(z)) >  1500) OR (dimension == 'the_nether');" > input/spawner-outliers.csv

rm in_source/spawners.db


######################### テレポーター #########################

sqlite3 in_source/teleporters.db "\
  CREATE TABLE teleporters (\
    id                        INTEGER  PRIMARY KEY,\
    name                      TEXT     NOT NULL,\
    dimension                 TEXT     NOT NULL,\
    x                         INTEGER  NOT NULL,\
    y                         INTEGER  NOT NULL,\
    z                         INTEGER  NOT NULL,\
    default_state             TEXT     NOT NULL,\
    color_r                   INTEGER  NOT NULL,\
    color_g                   INTEGER  NOT NULL,\
    color_b                   INTEGER  NOT NULL,\
    group_name                TEXT     NOT NULL,\
    island_id                 INTEGER,\
    island_ca_x               INTEGER,\
    island_ca_y               INTEGER,\
    island_ca_z               INTEGER,\
    island_ca_relative_x      INTEGER,\
    island_ca_relative_y      INTEGER,\
    island_ca_relative_z      INTEGER,\
    tp_command                TEXT     NOT NULL\
  );"

sed -n '1p' "in_source/The SkyBlessing - テレポーター.csv" | grep -q '^ID' && sed '1d' "in_source/The SkyBlessing - テレポーター.csv" > tmp && mv tmp "in_source/The SkyBlessing - テレポーター.csv"
sed '/^,\|^[0-9]\+,,/d' "in_source/The SkyBlessing - テレポーター.csv" > tmp && mv tmp "in_source/The SkyBlessing - テレポーター.csv"

sqlite3 -separator , in_source/teleporters.db ".import \"in_source/The SkyBlessing - テレポーター.csv\" teleporters"
sqlite3 -csv in_source/teleporters.db "SELECT id, dimension, x, y, z FROM teleporters WHERE (dimension == 'overworld' AND (ABS(x) + ABS(z)) <= 1500) OR (dimension == 'the_end');" > input/teleporters.csv
sqlite3 -csv in_source/teleporters.db "SELECT id, dimension, x, y, z FROM teleporters WHERE (dimension == 'overworld' AND (ABS(x) + ABS(z)) >  1500) OR (dimension == 'the_nether');" > input/teleporter-outliers.csv

rm in_source/teleporters.db


######################### トレーダー #########################

./extract_trader.sh


######################### 木の生成 #########################

scala-cli project.scala rtree-packing.scala.sc
scala-cli project.scala outlier-packing.scala.sc


######################### 木の適用 #########################

./update_register.sh
