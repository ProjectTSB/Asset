#> asset:object/2070.potion/kill/thunder/
#
# 雷
#
# @within function asset:object/2070.potion/kill/

# 演出
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 60 normal @a
    particle dust 1 1 0 1 ~ ~3 ~ 0.3 3 0.3 0 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 40
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.8 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.8 0
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.5 0

# 雷属性ダメージ
    data modify storage api: Argument.Damage set value 16.0
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷の薬品により感電死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# MPを減らす
# (難易度値 * 8)
# 先に難易度値を取得して、何度も取得処理を繰り返さないようにする
    function api:global_vars/get_difficulty
    execute store result storage asset:temp 2070.MPReduceVal int 1 run data get storage api: Return.Difficulty -8
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:object/2070.potion/kill/thunder/mp_reduce
    data remove storage asset:temp 2070.MPReduceVal
