#> asset:mob/0263.shulker_bullet/explode/
#
# 爆発処理
#
# @within function asset:mob/alias/263/explode

# 爆発タグを付与
    tag @s add 7B.Exploded

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.shulker_bullet.hit neutral @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.OwnerUUID
    function api:damage/modifier_manual
    execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run function api:damage/
    function api:damage/reset

# 浮遊
    data modify storage api: Argument.ID set value 25
    data modify storage api: Argument.Duration set value 60
    data modify storage api: Argument.Stack set value 2
    execute positioned ~-0.4 ~-0.4 ~-0.4 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
