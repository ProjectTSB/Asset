#> asset:mob/0330.aurora_reaper/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0330.aurora_reaper/tick/1.trigger

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.3 0 0.235 1 ~ ~1.7 ~ 0.1 0.1 0.1 0 2 normal @a

# motionCTの処理
    execute if entity @s[scores={96.MotionCT=0..}] run scoreboard players remove @s 96.MotionCT 1

# ハード以上で鈍足の無効化
    execute if predicate api:global_vars/difficulty/min/hard run effect clear @s slowness