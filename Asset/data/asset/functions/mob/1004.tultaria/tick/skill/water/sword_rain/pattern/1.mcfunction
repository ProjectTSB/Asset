#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/1
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick


# 拡散設置
    execute if score @s RW.Tick matches 0 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 5 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 10 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 15 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s RW.Tick matches 20 at @p[distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker

# 剣を破壊
#    execute if score @s RW.Tick matches 200 as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# リセット
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
