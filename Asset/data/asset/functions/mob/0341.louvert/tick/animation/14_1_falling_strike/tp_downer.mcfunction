#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer
#
# TPで落下する
#
# @within function
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/
#   asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/

# ループ処理
    scoreboard players set $9H.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.25 ~ #lib:no_collision/ run scoreboard players set $9H.Temp Temporary -100
    execute if score $9H.Temp Temporary matches 1.. run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer_loop

# リセット
    scoreboard players reset $9H.Temp Temporary
