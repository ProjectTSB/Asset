#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/1
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick


# 拡散設置
    execute if score @s RW.Tick matches 20 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 25 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 30 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 35 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 40 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker

# 剣を破壊
    execute if score @s RW.Tick matches 200 as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 200 run scoreboard players set @s RW.Tick -10

# リセット
#    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
