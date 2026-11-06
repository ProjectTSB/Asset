#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop
#
# 銃発射 ループ処理
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop

# 弾丸はブロックを破壊します！
    execute unless block ^ ^ ^0.5 #lib:air unless block ^ ^ ^0.5 #lib:unbreakable run setblock ^ ^ ^0.5 air destroy

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add AX.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add AX.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add AX.Temp.Target

# 演出
    particle dust 1 0.925 0.2 2 ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 2 force @a[distance=..32]
    execute if predicate lib:random_pass_per/5 run particle end_rod ~ ~ ~ 0.15 0.15 0.15 0 1

# スコア上昇
    scoreboard players add $AX.Loop Temporary 1

# 着弾
    execute if entity @s[tag=AX.Landing] run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/damage

# 再起
    execute if score $AX.Loop Temporary matches ..100 unless entity @s[tag=AX.Landing] positioned ^ ^ ^0.5 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/loop
