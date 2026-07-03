#> asset:effect/374.charge_plasma/end/attack/3/
#
# 攻撃3: 貫通レーザー
#
# @within function asset:effect/374.charge_plasma/end/**

#> Private
# @within function asset:effect/374.charge_plasma/end/attack/3/**
    #declare tag Hit
    #declare tag HitTarget

# 再帰処理
    execute anchored eyes run function asset:effect/374.charge_plasma/end/attack/3/rec
    tag @s remove Hit
    tag @e[tag=HitTarget,distance=..20] remove HitTarget

# 演出
