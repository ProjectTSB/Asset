#> asset:mob/0331.aurora_sorcerer/tick/backstep/check
#
#
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 自身のクールタイムが1以上でなら失敗
    execute if entity @s[scores={97.MotionCT=1..}] run return fail

# 浮いてたら失敗
    execute if block ~ ~-0.1 ~ #lib:no_collision/without_fluid run return fail

# 周囲にプレイヤーがいない
    execute unless entity @p[gamemode=!spectator,distance=..5] run return fail

# 足場Objectが近くにいるなら失敗
    execute align xyz positioned ~-2 ~-2 ~-2 if entity @e[type=marker,scores={ObjectID=2221},dx=3,dy=3,dz=3] run return fail

# 成功
    return 1
