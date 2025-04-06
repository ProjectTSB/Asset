#> asset:object/1099.conviction_sword/tick/kill
#
# 消滅時の処理
#
# @within function asset:object/1099.conviction_sword/tick/

# 演出
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 4 1
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 0.7

# 弾を召喚
    execute rotated ~ 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~45 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~90 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~135 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~180 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~225 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~270 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon
    execute rotated ~315 0 positioned ^ ^1.3 ^2 run function asset:object/1099.conviction_sword/tick/shot_summon

# 消滅
    kill @s
