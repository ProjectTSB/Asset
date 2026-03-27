#> asset:mob/0380.haruclaire_v3/tick/event/punch/attack_spear
#
# ぶんぶんぶん殴り
#
# @within asset:mob/0380.haruclaire_v3/tick/event/punch/

# ヒット判定
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AK.Temp.Hit
    execute positioned ^ ^ ^1.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add AK.Temp.Hit
    execute if entity @a[tag=AK.Temp.Hit] run playsound entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ 1 0.7

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Punch2
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに つらぬかれた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=AK.Temp.Hit] run function api:damage/
    function api:damage/reset
    tag @a[tag=AK.Temp.Hit] remove AK.Temp.Hit

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.5
    particle dust 1 1000000000 1000000000 1 ^ ^ ^2.5 0.2 0.2 0.2 1 10 normal @a
    particle dust 1 1000000000 1000000000 1.5 ^ ^ ^2 0.2 0.2 0.2 1 10 normal @a
    particle dust 1 1000000000 1000000000 1.5 ^ ^ ^1.5 0.2 0.2 0.2 1 10 normal @a
    particle dust 1 1000000000 1000000000 2 ^ ^ ^1 0.2 0.2 0.2 1 10 normal @a
    particle dust 1 1000000000 1000000000 2 ^ ^ ^0.5 0.2 0.2 0.2 1 10 normal @a
