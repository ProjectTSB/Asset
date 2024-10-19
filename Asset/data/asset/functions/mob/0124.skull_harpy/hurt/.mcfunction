#> asset:mob/0124.skull_harpy/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/124/hurt

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 20
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3

# プレイヤーから離れる
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p eyes rotated ~180 -10 run function lib:motion/

# リセット
    data remove storage lib: Argument
