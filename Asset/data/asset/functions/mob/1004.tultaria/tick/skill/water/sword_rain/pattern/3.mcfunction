#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/3
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

#> Private
# @private
    #declare tag TargetMarker

# だれか対象の位置にマーカーを置く
    execute if score @s RW.Tick matches 20 at @r[distance=..64] run summon marker ~ ~ ~ {Tags:["TargetMarker"]}

# 拡散設置
    execute if score @s RW.Tick matches 20 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~ 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 21 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~45 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 22 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~90 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 23 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~135 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 24 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~180 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 25 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~225 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 26 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~270 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon
    execute if score @s RW.Tick matches 27 at @e[type=marker,tag=TargetMarker,limit=1] rotated ~315 0 positioned ^ ^5 ^10 run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/summon

# マーカーキル
    execute if score @s RW.Tick matches 100 run kill @e[type=marker,tag=TargetMarker]

# 剣を破壊
    execute if score @s RW.Tick matches 200 as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 200 run scoreboard players set @s RW.Tick -10

# リセット
#    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
