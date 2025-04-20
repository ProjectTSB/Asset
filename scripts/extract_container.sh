sqlite3 -csv input/sqlite.db "SELECT id, world, x, y, z, facing, chest_type FROM loot_asset_containers;" > output.csv
