#> asset:effect/0374.charge_plasma/end/attack/3/
#
# 攻撃3: 貫通レーザー
#
# @within function asset:effect/0374.charge_plasma/end/**

#> Private
# @within function asset:effect/0374.charge_plasma/end/attack/3/**
    #declare tag Hit
    #declare tag HitTarget

# 再帰処理
    execute anchored eyes positioned ^ ^ ^ run function asset:effect/0374.charge_plasma/end/attack/3/rec
    tag @s remove Hit
    tag @e[type=#lib:living_without_player,tag=HitTarget,distance=..20] remove HitTarget

# 演出
    playsound ogg:block.vault.open_shutter player @a ~ ~ ~ 2 2
    playsound ogg:block.vault.break player @a ~ ~ ~ 1 1
