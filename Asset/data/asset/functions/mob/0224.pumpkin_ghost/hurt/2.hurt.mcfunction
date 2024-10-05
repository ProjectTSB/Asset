#> asset:mob/0224.pumpkin_ghost/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0224.pumpkin_ghost/hurt/1.trigger

# 攻撃者に割合ダメージ
    execute as @p[tag=Attacker] run function api:modifier/max_health/get
    execute store result storage api: Argument.Damage float 0.020 run data get storage api: Return.MaxHealth 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは呪われてしまった！","with":[{"selector":"@s"}]}]'
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
