#> asset:mob/0380.haruclaire_v3/tick/event/press/attack_1
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/press/

# ダメージ
    data modify storage api: Argument.Damage set value 55.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは ハトクレアに おしつぶされた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.7
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.6
    playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
    particle block packed_ice ~ ~0.2 ~ 3 0 3 0 50
    particle explosion ~ ~0.2 ~ 3 0 3 0 8
    # 円 1
    execute rotated ~00 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~10 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~20 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~30 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~40 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~50 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~60 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~70 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~80 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~90 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~100 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~110 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~120 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~130 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~140 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~150 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~160 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~170 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~180 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~190 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~200 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~210 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~220 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~230 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~240 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~250 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~260 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~270 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~280 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~290 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~300 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~310 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~320 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~330 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~340 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
    execute rotated ~350 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0

# 攻撃位置召喚
    summon area_effect_cloud ~ ~2 ~ {Tags:["AK.Temp.AttackRotation"],Duration:1}
# 弾召喚
    scoreboard players operation @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,sort=nearest,limit=1] MobUUID = @s MobUUID
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,sort=nearest,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/press/attack_piece
