#> asset:object/1055.elemental_fish/detect_hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1055/detect_hit_block

# 接触判定

# 下にブロック
    execute unless block ~ ~-1 ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute unless block ~ ~-1 ~ #lib:no_collision/ run tag @s add 1055.Upper

# 上にブロック
    execute unless block ~ ~1 ~ #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute unless block ~ ~1 ~ #lib:no_collision/ run tag @s add 1055.Lower

# 前方にブロック
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context IsHitBlock set value true
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add 1055.Forward
