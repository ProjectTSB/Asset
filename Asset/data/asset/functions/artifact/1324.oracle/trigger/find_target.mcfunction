#> asset:artifact/1324.oracle/trigger/find_target
#
#
#
# @within function asset:artifact/1324.oracle/trigger/3.main

# 範囲内の対象の現在体力を取得
# 検索対象：最も現在体力が高いプレイヤー1名, 最も現在体力の低いプレイヤー1名

# 検索対象にTagを付与
    tag @a[tag=!PlayerShouldInvulnerable,distance=..20] add 10S.SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=10S.SearchTarget] store result score @s Temporary run function asset:artifact/1324.oracle/trigger/get_health

# $HighestHealth, $LowestHealthの初期化
    scoreboard players set $10S.HighestHealth Temporary 0
    scoreboard players set $10S.LowestHealth Temporary 2147483647

# 全員の体力と比較する
    execute as @a[tag=10S.SearchTarget] run scoreboard players operation $10S.HighestHealth Temporary > @s Temporary
    execute as @a[tag=10S.SearchTarget] run scoreboard players operation $10S.LowestHealth Temporary < @s Temporary

# 特定したプレイヤーにTagを付与
    execute as @a[tag=10S.SearchTarget] if score @s Temporary = $10S.HighestHealth Temporary run tag @s add 10S.HighestHealth
    execute as @a[tag=10S.SearchTarget] if score @s Temporary = $10S.LowestHealth Temporary run tag @s add 10S.LowestHealth

# リセット
    scoreboard players reset @a[tag=10S.SearchTarget] Temporary
    tag @a[tag=10S.SearchTarget] remove 10S.SearchTarget
    scoreboard players reset $10S.HighestHealth Temporary
    scoreboard players reset $10S.LowestHealth Temporary
