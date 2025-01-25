#> asset:artifact/0382.haru_urara/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/382/attack_melee/


# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle dust 0.965 0.745 0.973 1 ~ ~0.3 ~ 0.4 8 0.4 0 400 force @a[distance=..30]
    playsound minecraft:entity.ender_dragon.flap player @a[distance=..15] ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 45f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value false
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 吹っ飛び効果
# 天使には無効
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 31
    data modify storage api: Argument.Duration set value 20
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..10] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
