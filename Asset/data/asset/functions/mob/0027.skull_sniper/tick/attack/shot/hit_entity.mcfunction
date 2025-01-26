#> asset:mob/0027.skull_sniper/tick/attack/shot/hit_entity
# @within function asset:mob/0027.skull_sniper/tick/attack/shot/rec

# 演出
    execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] at @s run function asset:mob/0027.skull_sniper/tick/attack/shot/vfx/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:temp Projectile.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function api:damage/

# リセット
    function api:damage/reset
    data remove storage asset:temp Projectile.IsHitEntity
