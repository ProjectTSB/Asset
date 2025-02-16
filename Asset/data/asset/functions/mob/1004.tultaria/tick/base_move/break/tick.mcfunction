#> asset:mob/1004.tultaria/tick/base_move/break/tick
#
# 防御が下がって無防備になる
#
# @within function asset:mob/1004.tultaria/tick/

# 演出
    particle minecraft:large_smoke ~ ~1 ~ 0.3 0.5 0.3 0 1

# 再召喚
    execute if score @s General.Mob.Tick matches 200 run function asset:mob/1004.tultaria/tick/base_move/break/summon_illusion/

# 復帰
    execute if score @s General.Mob.Tick matches 210 run function asset:mob/1004.tultaria/tick/base_move/break/recovery
