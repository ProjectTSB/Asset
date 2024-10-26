#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/2
#
# マップ中心に落とす
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick


# 拡散設置
    execute if score @s RW.Tick matches 20 rotated ~ 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 21 rotated ~45 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 22 rotated ~90 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 23 rotated ~135 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 24 rotated ~180 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 25 rotated ~225 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 26 rotated ~270 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 27 rotated ~315 0 positioned ^ ^5 ^13 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# 剣を破壊
#    execute if score @s RW.Tick matches 60 as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# デバッグ用、この行動をループする
#    execute if score @s RW.Tick matches 200 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 60.. run function asset:mob/1004.tultaria/tick/base_move/reset
