#> asset:mob/0370.prominence_magic/tick/4.1st_blast
#
# 1回目の爆発
#
# @within function asset:mob/0370.prominence_magic/tick/3.on_ground

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
    particle lava ~ ~ ~ 0.4 0 0.4 0 10 normal @a
    particle dust 0.922 0.318 0.133 1.8 ~ ~0.5 ~ 0.4 0 0.4 0 20 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 0.9 0

# ダメージ
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# デバフ



#
