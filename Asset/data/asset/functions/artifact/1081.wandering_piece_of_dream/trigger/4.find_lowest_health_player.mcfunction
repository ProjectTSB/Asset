#> asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player
#
# 現在体力の低いプレイヤーを検索する
#
# @within function asset:artifact/1081.wandering_piece_of_dream/trigger/3.main

# 検索対象：Effect付与対象ではなく最も現在体力割合の低いプレイヤー

# 検索対象にTagを付与
    tag @a[tag=!U1.EffectTarget,distance=..20] add SearchTarget

# 各プレイヤーの現在体力をスコアへ代入
    execute as @a[tag=SearchTarget] store result score @s Temporary run function asset:artifact/1081.wandering_piece_of_dream/trigger/5.get_health

# $LowestHealthの初期値化
    scoreboard players set $LowestHealth Temporary 0

# 全員の体力と比較する
    execute as @a[tag=SearchTarget] run scoreboard players operation $LowestHealth Temporary < @s Temporary

# 最大値のプレイヤーに仮ターゲットtagを付与
    execute as @a[tag=SearchTarget] if score @s Temporary = $LowestHealth Temporary run tag @s add TempTarget

# 仮ターゲットの中で近いプレイヤーにターゲットtagを付与
    tag @p[tag=TempTarget] add U1.EffectTarget

# リセット
    scoreboard players reset $LowestHealth Temporary
    scoreboard players reset @a[tag=SearchTarget] Temporary
    tag @a[tag=SearchTarget] remove SearchTarget
    tag @a[tag=TempTarget] remove TempTarget
