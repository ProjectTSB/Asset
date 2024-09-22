#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/
#
# 雷神無双
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/7_0_sw_lightning_fast_start/play

# 範囲外にワープする
    execute if score @s AZ.AnimationTick matches 57 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/start

# 雷神無双を召喚して攻撃
    execute if score @s AZ.AnimationTick matches 75 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 90 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 105 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 120 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 135 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 148 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    
# 一定間隔
    execute if score @s AZ.AnimationTick matches 159 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 167 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 175 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 183 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 191 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 199 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 207 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 215 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 223 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if score @s AZ.AnimationTick matches 231 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/

# Hard用

    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 171 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 179 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 187 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 195 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 203 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 211 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 219 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 227 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/summon/


# 範囲外からワープして戻って来る
    execute if score @s AZ.AnimationTick matches 274 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end1
    execute if score @s AZ.AnimationTick matches 275 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end2

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 275 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/2_2_sw_move_end/play

# 終了処理
    execute if score @s AZ.AnimationTick matches 300 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/end
