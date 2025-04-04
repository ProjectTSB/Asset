#> asset:mob/0287.burning_stomper/tick/event/jump
#
#
#
# @within function asset:mob/0287.burning_stomper/tick/

# 演出
    particle minecraft:poof ~ ~0.2 ~ 0.25 0 0.25 0 20
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 0.7 1
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 0.7 1

# こっちを向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20210}

# こっちに対してMotionで飛ぶ 近いやつを優先
    execute if entity @a[distance=14..30] run data modify storage lib: Argument.VectorMagnitude set value 2
    execute if entity @a[distance=7..14] run data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute if entity @a[distance=..7] run data modify storage lib: Argument.VectorMagnitude set value 0.7
    execute facing entity @p feet run function lib:motion/
    data remove storage lib: Argument

# 最後に上方向に飛ぶ
    data modify entity @s Motion[1] set value 1.0d
