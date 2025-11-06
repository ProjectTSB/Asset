#> asset:artifact/1324.mysterious_star/trigger/find_target
#
#
#
# @within function asset:artifact/1324.mysterious_star/trigger/3.main

# 範囲内の対象の現在MPを取得
# 検索対象：最も現在MPが高いプレイヤー1名, 最も現在MPの低いプレイヤー1名

# 検索対象にTagを付与
    tag @a[tag=!PlayerShouldInvulnerable,distance=..20] add 10S.SearchTarget

# 各プレイヤーの現在MPをスコアへ代入
    execute as @a[tag=10S.SearchTarget] store result score @s Temporary run function asset:artifact/1324.mysterious_star/trigger/get_mp

# $HighestMP, $LowestMPの初期化
    scoreboard players set $10S.HighestMP Temporary 0
    scoreboard players set $10S.LowestMP Temporary 2147483647

# 最も多い対象を探す
    execute as @a[tag=10S.SearchTarget] run scoreboard players operation $10S.HighestMP Temporary > @s Temporary
    execute as @a[tag=10S.SearchTarget] unless entity @p[tag=10S.HighestMP] if score @s Temporary = $10S.HighestMP Temporary run tag @s add 10S.HighestMP

# 最も少ない対象を探す
# 最も多い対象は検索から除外
    execute as @a[tag=10S.SearchTarget,tag=!10S.HighestMP] run scoreboard players operation $10S.LowestMP Temporary < @s Temporary
    execute as @a[tag=10S.SearchTarget,tag=!10S.HighestMP] unless entity @p[tag=10S.LowestMP] if score @s Temporary = $10S.LowestMP Temporary run tag @s add 10S.LowestMP

# リセット
    scoreboard players reset @a[tag=10S.SearchTarget] Temporary
    tag @a[tag=10S.SearchTarget] remove 10S.SearchTarget
    scoreboard players reset $10S.HighestMP Temporary
    scoreboard players reset $10S.LowestMP Temporary
