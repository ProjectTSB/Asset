#> asset:mob/0410.heiloang/tick/event/sweep/attack_loop
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/sweep/attack
# @within asset:mob/0410.heiloang/tick/event/sweep/attack_loop

# 演出 + ヒット判定
    scoreboard players remove @s BE.Dummy 1
    execute if predicate lib:random_pass_per/30 run particle flame ~ ~ ~ 1 1 1 0.1 1 force
    execute if predicate lib:random_pass_per/30 run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
    execute if predicate lib:random_pass_per/30 run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
    execute if predicate lib:random_pass_per/20 run particle lava ~ ~ ~ 1 1 1 0.1 1 force
    execute if predicate lib:random_pass_per/5 run particle explosion ~ ~ ~ 1 1 1 0.1 1 force
    # execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.4] add BE.Temp.HitFlame
    # execute positioned ^-2 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.4] add BE.Temp.HitFlame
    # execute positioned ^2 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.4] add BE.Temp.HitFlame
    execute if score @s BE.Dummy matches 1.. positioned ^ ^ ^1.5 run function asset:mob/0410.heiloang/tick/event/sweep/attack_loop
