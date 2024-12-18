#> asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/loop
#
# ループしつつワープ
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/inertia
#   asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/forward
#   asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/loop

# TPする
    execute positioned ^ ^ ^0.1 run function asset:mob/0393.labyria_first/ai/general/1.teleport

# スコア減少
    scoreboard players remove $AX.Loop Temporary 1

# スコアが残っていたらループ
    execute if score $AX.Loop Temporary matches 1.. at @s run function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/loop
