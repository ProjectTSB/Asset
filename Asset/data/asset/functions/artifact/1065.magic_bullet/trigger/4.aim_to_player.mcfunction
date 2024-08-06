#> asset:artifact/1065.magic_bullet/trigger/4.aim_to_player
#
# プレイヤーを狙う際の処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

#> Private
# @private
    #declare tag TL.TargetPlayer
    #declare tag RotationMarker

# ランダムなプレイヤーを指定
    tag @r[distance=..100] add TL.TargetPlayer

# ターゲットの後ろにRotationのデータを用意するためのマーカーを召喚
# 2個目のコマンドの最初にat @p[]があるのはdistanceの範囲を狭めるため
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["RotationMarker"]}
    execute at @p[tag=TL.TargetPlayer] as @e[type=marker,tag=RotationMarker,distance=..5,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=TL.TargetPlayer,limit=1] eyes

# マーカーのRotationをストレージへ
    execute at @p[tag=TL.TargetPlayer] as @e[type=marker,tag=RotationMarker,distance=..5] at @s run data modify storage asset:temp TL.Rotation set from entity @s Rotation

# ターゲットの真後ろに魔方陣を4つ召喚
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.45 run function asset:artifact/1065.magic_bullet/trigger/6.summon_square.m with storage asset:temp TL
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.30 run function asset:artifact/1065.magic_bullet/trigger/6.summon_square.m with storage asset:temp TL
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.15 run function asset:artifact/1065.magic_bullet/trigger/6.summon_square.m with storage asset:temp TL
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.00 run function asset:artifact/1065.magic_bullet/trigger/6.summon_square.m with storage asset:temp TL

# リセット
    tag @e[tag=TL.TargetPlayer] remove TL.TargetPlayer
    kill @e[type=marker,tag=RotationMarker]
