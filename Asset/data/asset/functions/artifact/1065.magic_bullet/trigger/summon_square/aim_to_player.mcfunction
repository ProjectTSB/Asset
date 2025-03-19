#> asset:artifact/1065.magic_bullet/trigger/summon_square/aim_to_player
#
# プレイヤーを狙う際の処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

#> Private
# @private
    #declare tag TL.TargetPlayer

# ランダムなプレイヤーを指定
    tag @r[tag=!PlayerShouldInvulnerable,distance=..100] add TL.TargetPlayer

# 1個目の魔法陣にIDを持たせる
    execute store result storage api: Argument.FieldOverride.ID int 1 run scoreboard players get $Random Temporary

# ターゲットの真後ろに魔法陣を4つ召喚
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^-5.45 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[0.9d,0.9d,0.01d],Delay:2,Interpolation:2,LeftRotate:false}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^-5.30 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[1.8d,1.8d,0.01d],Delay:4,Interpolation:4,LeftRotate:true}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^-5.15 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[1.2d,1.2d,0.01d],Delay:8,Interpolation:2,LeftRotate:false}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^-5.00 run function asset:artifact/1065.magic_bullet/trigger/summon_square/m {Scale:[0.7d,0.7d,0.01d],Delay:10,Interpolation:2,LeftRotate:true}

# リセット
    tag @p[tag=TL.TargetPlayer] remove TL.TargetPlayer
