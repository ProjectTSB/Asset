#> asset:mob/0464.drain_plant/tick/move/teleport/check_y/
#
#
#
# @within function asset:mob/0464.drain_plant/tick/move/teleport/try

# 1ブロック上から再帰で判定する
    data modify storage asset:temp RecursiveLimit2 set value 5
    execute positioned ~ ~1 ~ run function asset:mob/0464.drain_plant/tick/move/teleport/check_y/recursive
    data remove storage asset:temp RecursiveLimit2

# 再帰で安全だと判断できたなら調整しておく
    execute if data storage asset:temp {Success:true} at @s facing entity @p[tag=TargetPlayer,distance=..10] feet run tp @s ~ ~-1.4 ~ ~-90 0

# リセット
    # data remove storage asset:temp Success
