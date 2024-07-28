#> asset:mob/1004.tultaria/tick/skill/aiming_laser/laser/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/aiming_laser/tick

# サウンド
    execute positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1.5 1.5
    execute positioned ^ ^ ^1 run playsound tsb_sounds:blaster2 player @a ~ ~ ~ 1 1.5

# 拡散させて実行
    # 拡散させるEntityを召喚する
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1.2
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    # その位置から実行
        execute at @e[type=marker,tag=SpreadMarker,limit=1] facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes rotated ~ ~90 run function asset:mob/1004.tultaria/tick/skill/aiming_laser/laser/ring
        execute at @e[type=marker,tag=SpreadMarker,limit=1] facing entity @e[type=marker,tag=RW.AimMarker,sort=nearest,limit=1] eyes run function asset:mob/1004.tultaria/tick/skill/aiming_laser/laser/main
    # リセット
        kill @e[type=marker,tag=SpreadMarker]