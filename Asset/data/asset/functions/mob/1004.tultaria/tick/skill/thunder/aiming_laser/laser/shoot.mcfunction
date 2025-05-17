#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick
#   asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/shoot

#> Private
# @private
    #declare tag SpreadMarker

# サウンド
    execute positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete2 hostile @a ~ ~ ~ 0.7 1.5
    execute positioned ^ ^ ^1 run playsound tsb_sounds:blaster2 hostile @a ~ ~ ~ 0.7 1.5

# 拡散させて実行
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 2
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # その位置から実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] rotated as @s rotated ~ ~90 run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/ring
        execute at @e[type=marker,tag=SpreadMarker,limit=1] rotated as @s run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/
        execute at @e[type=marker,tag=SpreadMarker,limit=1] rotated as @s run function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/laser/visual_laser
    # リセット
        kill @e[type=marker,tag=SpreadMarker]
