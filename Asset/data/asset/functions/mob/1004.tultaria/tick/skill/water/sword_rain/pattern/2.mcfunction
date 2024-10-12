#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/2
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 拡散設置
    execute if score @s RW.Tick matches 20 rotated ~22.5 0 positioned ^ ^5 ^7 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 25 rotated ~22.5 0 positioned ^ ^5 ^14 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 30 rotated ~22.5 0 positioned ^ ^5 ^21 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 35 rotated ~22.5 0 positioned ^ ^5 ^28 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 40 rotated ~22.5 0 positioned ^ ^5 ^35 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
# 拡散設置
    execute if score @s RW.Tick matches 20 rotated ~-22.5 0 positioned ^ ^5 ^7 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 25 rotated ~-22.5 0 positioned ^ ^5 ^14 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 30 rotated ~-22.5 0 positioned ^ ^5 ^21 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 35 rotated ~-22.5 0 positioned ^ ^5 ^28 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 40 rotated ~-22.5 0 positioned ^ ^5 ^35 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# 剣を破壊
    execute if score @s RW.Tick matches 200 as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# デバッグ用、この行動をループする
#    execute if score @s RW.Tick matches 200 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 200 run function asset:mob/1004.tultaria/tick/base_move/reset
