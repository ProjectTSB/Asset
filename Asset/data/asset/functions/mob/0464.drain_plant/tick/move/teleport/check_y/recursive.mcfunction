#> asset:mob/0464.drain_plant/tick/move/teleport/check_y/recursive
#
#
#
# @within function
#   asset:mob/0464.drain_plant/tick/move/teleport/check_y/
#   asset:mob/0464.drain_plant/tick/move/teleport/check_y/recursive

# デクリメント
    execute store result storage asset:temp RecursiveLimit2 int 0.9999999999 run data get storage asset:temp RecursiveLimit2

# 現座標と1ブロック上が空気、1ブロック下が地面ならtp
    execute if block ~ ~ ~ #lib:no_collision/without_fluid if block ~ ~1 ~ #lib:no_collision/without_fluid unless block ~ ~-1 ~ #lib:no_collision/ run data modify storage asset:temp Success set value true
    execute if data storage asset:temp {Success:true} run return run tp @s ~ ~ ~ ~ ~

# 再帰
    execute unless data storage asset:temp {RecursiveLimit2:0} positioned ~ ~-1 ~ run function asset:mob/0464.drain_plant/tick/move/teleport/check_y/recursive
