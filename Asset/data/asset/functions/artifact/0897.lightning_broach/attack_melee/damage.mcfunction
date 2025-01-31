#> asset:artifact/0897.lightning_broach/attack_melee/damage
#
# ダメージ処理
#
# @within function asset:artifact/0897.lightning_broach/attack_melee/

# VFX
    execute at @s run particle dust 100000000 100000000 0 1 ~ ~1.5 ~ 0.05 1 0.05 0 150
    execute at @s run playsound entity.lightning_bolt.impact player @a

# ダメージ計算
# 雑魚の場合: $Damage(e2) = $Health(e-1) * (0.20 + 0.10 * $Count)(e3)
# ボスの場合: $Damage(e2) = $Health(e-1) * (0.01 + 0.005 * $Count)(e3)
    function api:mob/get_health
    execute store result score $Damage Temporary run data get storage api: Return.Health 0.1
    execute if entity @s[tag=!Enemy.Boss,tag=!Uninterferable] run scoreboard players operation $Damage Temporary *= $Multi.Normal Temporary
    execute if entity @s[tag= Enemy.Boss] run scoreboard players operation $Damage Temporary *= $Multi.Angel Temporary
# 攻撃
    execute store result storage api: Argument.Damage double 0.01 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.AttackType set value "Thunder"
    data modify storage api: Argument.FixedDamage set value true
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/

# リセット
    scoreboard players reset $Damage Temporary
    function api:damage/reset
