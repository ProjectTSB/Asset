#> asset:mob/0224.pumpkin_ghost/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0224.pumpkin_ghost/hurt/1.trigger

# 割合ダメージ
    execute store result storage api: Argument.Damage float 0.020 run attribute @p[tag=Attacker,distance=..50] generic.max_health get 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは呪われてしまった！","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @p[tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

# 演出
    particle block_marker barrier ~ ~1.8 ~ 0 0 0 0 0
    particle dust 1 0.6 0 1.4 ~ ~1.8 ~ 0.7 0.7 0.7 0 120 normal @a
    particle dust 0.851 0 1 1.4 ~ ~1.8 ~ 0.7 0.7 0.7 0 120 normal @a
    playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.7

# 撤退
    tp ~ -1000 ~
    kill @s
