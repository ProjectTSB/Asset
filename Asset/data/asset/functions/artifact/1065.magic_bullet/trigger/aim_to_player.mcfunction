#> asset:artifact/1065.magic_bullet/trigger/aim_to_player
#
# プレイヤーを狙う際の処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

#> Private
# @private
    #declare tag TL.TargetPlayer

# ランダムなプレイヤーを指定
    tag @r[distance=..100] add TL.TargetPlayer

# ターゲットの真後ろに魔方陣を4つ召喚
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.45 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[0.9d,0.9d,0.01d],Delay:2}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.30 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[1.8d,1.8d,0.01d],Delay:4}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.15 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[1.2d,1.2d,1.2d],Delay:8}
    execute at @p[tag=TL.TargetPlayer] rotated ~ 0 anchored eyes positioned ^ ^-0.1 ^ positioned ^ ^ ^-5.00 run function asset:artifact/1065.magic_bullet/trigger/summon_square.m {Scale:[0.7d,0.7d,0.7d],Delay:10}

# リセット
    tag @p[tag=TL.TargetPlayer] remove TL.TargetPlayer
