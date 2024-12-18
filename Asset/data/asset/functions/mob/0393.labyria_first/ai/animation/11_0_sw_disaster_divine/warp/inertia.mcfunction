#> asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/inertia
#
# 慣性
#
# @within function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/

# 慣性
    execute if score @s AX.AnimationTick matches 47 run scoreboard players set $AX.Loop Temporary 20
    execute if score @s AX.AnimationTick matches 48 run scoreboard players set $AX.Loop Temporary 15
    execute if score @s AX.AnimationTick matches 49 run scoreboard players set $AX.Loop Temporary 10
    execute if score @s AX.AnimationTick matches 50 run scoreboard players set $AX.Loop Temporary 5
    execute if score @s AX.AnimationTick matches 51 run scoreboard players set $AX.Loop Temporary 2

# スコアリセット
    scoreboard players reset $AX.Loop Temporary
