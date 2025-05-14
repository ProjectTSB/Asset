#> asset:mob/0393.labyria_first/ai/animation/100_0_opening/
#
# オープニング攻撃
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 透明アニメーション
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/16_0_invisible/play

# 範囲外にワープする
    execute if score @s AX.AnimationTick matches 1 run tp @s ~ ~50 ~ ~ ~

# 雷神無双を召喚して攻撃
    execute if score @s AX.AnimationTick matches 10 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 25 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 40 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 55 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 70 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 83 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/

# 一定間隔
    execute if score @s AX.AnimationTick matches 94 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 102 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 110 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 118 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 126 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 134 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 142 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 150 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 158 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AX.AnimationTick matches 166 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/

# Hard用
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 106 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 114 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 122 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 130 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 138 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 146 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 154 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 162 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/

# ノヴァ配置
    execute if score @s AX.AnimationTick matches 15 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 25 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 35 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 45 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 55 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 65 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 75 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 85 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 95 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 105 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 115 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 125 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 135 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/

# ノヴァ配置 ハード
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 30 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 40 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 50 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 60 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 70 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 90 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 100 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 110 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 120 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 130 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/

# 範囲外からワープして戻って来る
    execute if score @s AX.AnimationTick matches 204 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end1
    execute if score @s AX.AnimationTick matches 205 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end2

# アニメーション再生
    execute if score @s AX.AnimationTick matches 205 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/2_2_sw_move_end/play

# 終了処理
    execute if score @s AX.AnimationTick matches 230 run function asset:mob/0393.labyria_first/ai/animation/100_0_opening/end
