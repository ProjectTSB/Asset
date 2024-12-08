#> asset:mob/0410.heiloang/tick/event/sweep/attack_loop
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/sweep/attack
# @within asset:mob/0410.heiloang/tick/event/sweep/attack_loop

# 演出 + ヒット判定
    scoreboard players remove @s BE.Dummy 1
    particle flame ~ ~ ~ 1 1 1 0.1 10 force
    particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
    execute if predicate lib:random_pass_per/30 run particle lava ~ ~ ~ 0.5 0.1 0.5 0.1 1 force
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add BE.Temp.Hit
    execute positioned ^-3 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add BE.Temp.Hit
    execute positioned ^3 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add BE.Temp.Hit
    execute if score @s BE.Dummy matches 1.. positioned ^ ^ ^1.5 run function asset:mob/0410.heiloang/tick/event/sweep/attack_loop
