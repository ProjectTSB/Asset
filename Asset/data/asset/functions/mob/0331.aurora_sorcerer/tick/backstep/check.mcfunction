#> asset:mob/0331.aurora_sorcerer/tick/backstep/check
#
#
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 自身のクールタイムが1以上でなら失敗
    execute if entity @s[scores={97.MotionCT=1..}] run return fail

# 周囲にプレイヤーがいない
    execute unless entity @p[gamemode=!spectator,distance=..5] run return fail

# 足場Objectが近くにいるなら失敗
    execute align xyz positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=marker,scores={ObjectID=2221},dx=2,dy=2,dz=2] run return fail

# 成功
    return 1
