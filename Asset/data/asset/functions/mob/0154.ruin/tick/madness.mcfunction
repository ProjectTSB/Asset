#> asset:mob/0154.ruin/tick/madness
#
# 形態変化後のtick処理
#
# @within function asset:mob/0154.ruin/tick/

# 演出
    particle dust 0.255 0.039 0.039 1 ~ ~1 ~ 0.3 0.3 0.3 1 10

# 難易度に応じて速度バフ
    execute if predicate api:global_vars/difficulty/max/2_hard run effect give @s speed 1 1 true
    execute if predicate api:global_vars/difficulty/min/3_blessless run effect give @s speed 1 2 true

# ハード以上で鈍足を無効化
    execute if predicate api:global_vars/difficulty/min/3_blessless run effect clear @s slowness

# 発狂して自滅
    execute if entity @s[scores={4A.MadnessTime=370..}] run function asset:mob/0154.ruin/tick/death
