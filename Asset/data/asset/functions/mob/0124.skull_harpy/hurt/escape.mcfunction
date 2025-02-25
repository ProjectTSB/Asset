#> asset:mob/0124.skull_harpy/hurt/escape
#
# 逃げる
#
# @within function asset:mob/0124.skull_harpy/hurt/

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 20
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3

# 最後に逃げたTickを保存
    execute store result score @s 3G.LatestEscapeTick run time query gametime

# プレイヤーから離れる
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[tag=Attacker] eyes rotated ~180 -10 run function lib:motion/

# リセット
    data remove storage lib: Argument
