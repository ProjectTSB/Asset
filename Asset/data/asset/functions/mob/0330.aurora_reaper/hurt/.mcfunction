#> asset:mob/0330.aurora_reaper/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/330/hurt

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.3 0 0.235 1 ~ ~1.4 ~ 0.5 0.6 0.5 0 30 normal @a
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.3 1.4 0

# MotionCT中ならreturn
    execute unless data storage asset:context this{MotionCT:0} run return 0

# プレイヤーが近くにいるとき、確率でバックステップする
    execute if data storage asset:context Hurt{IsDoT:false} if entity @p[tag=Attacker,distance=..6] if predicate lib:random_pass_per/40 run function asset:mob/0330.aurora_reaper/hurt/step

# プレイヤーが離れている時、確率で前進する
    execute if data storage asset:context Hurt{IsDoT:false} unless entity @p[tag=Attacker,distance=..6] if predicate lib:random_pass_per/70 run function asset:mob/0330.aurora_reaper/hurt/forward_step
