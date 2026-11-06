#> asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast_loop
#
#
#
# @within function
#   asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast
#   asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast_loop

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove $9H.Temp Temporary 1
    execute positioned ~-1 ~-1 ~-1 run tag @e[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] add 9H.Landing
    particle sonic_boom ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]
    particle soul_fire_flame ^ ^ ^ 1 1 1 0.01 10 force @a[distance=..32]
    function asset:mob/0341.louvert/tick/general/1.teleport
    execute if score $9H.Temp Temporary matches 1.. positioned ^ ^ ^1.5 if block ~ ~ ~ #lib:no_collision/ run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast_loop
