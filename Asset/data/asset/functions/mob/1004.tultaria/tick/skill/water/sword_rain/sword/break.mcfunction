#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break
#
# 剣を破壊する
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/**
#   asset:mob/1004.tultaria/tick/base_move/element_select/

# 演出
    particle minecraft:block light_blue_stained_glass ~ ~1.5 ~ 0.2 0.5 0.2 0.1 25
    playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 1.2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 0.7

# キル
    kill @s
