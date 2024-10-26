#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/4
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 拡散設置
    execute if score @s RW.Tick matches 0 rotated ~22.5 0 positioned ^ ^5 ^7 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 5 rotated ~22.5 0 positioned ^ ^5 ^14 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 10 rotated ~22.5 0 positioned ^ ^5 ^21 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 15 rotated ~22.5 0 positioned ^ ^5 ^28 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 20 rotated ~22.5 0 positioned ^ ^5 ^35 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
# 拡散設置
    execute if score @s RW.Tick matches 0 rotated ~-22.5 0 positioned ^ ^5 ^7 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 5 rotated ~-22.5 0 positioned ^ ^5 ^14 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 10 rotated ~-22.5 0 positioned ^ ^5 ^21 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 15 rotated ~-22.5 0 positioned ^ ^5 ^28 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 20 rotated ~-22.5 0 positioned ^ ^5 ^35 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# リセット
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/base_move/reset
