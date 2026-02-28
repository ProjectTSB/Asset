#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/attack_sword
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_attack

# ヒット判定
    # 円範囲
        tag @a[tag=!PlayerShouldInvulnerable,distance=..20] add DXYZ

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.HalfBeamSword.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.HalfBeamSword.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.HalfBeamSword.Element
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 斬撃オブジェクト
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:9484241,Scale:[40f,40f,7f],Transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] positioned ^3 ^4 ^-4 rotated ~ -82 run function api:object/summon
    execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] positioned ^3 ^4 ^4 rotated ~ 82 run function api:object/summon
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:9484241,Scale:[40f,40f,7f],Transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] positioned ^-3 ^4 ^4 rotated ~180 -82 run function api:object/summon
    execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] positioned ^-3 ^4 ^-4 rotated ~180 82 run function api:object/summon

# 効果音
    playsound item.trident.throw hostile @a ~ ~ ~ 3 0.7
    playsound item.trident.throw hostile @a ~ ~ ~ 3 0.6
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.6

# パーティクル
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~10 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~20 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~30 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~40 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~50 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~60 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~70 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~80 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~90 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~100 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~110 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~120 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~130 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~140 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~150 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~160 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~170 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~180 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~190 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~200 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~210 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~220 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~230 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~240 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~250 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~260 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~270 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~280 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~290 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~300 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~310 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~320 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~330 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~340 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
        execute rotated ~350 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000015 0
    # 円型ベクトルパーティクル
        execute rotated ~00 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~10 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~20 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~30 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~40 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~50 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~60 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~70 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~80 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~90 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~100 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~110 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~120 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~130 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~140 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~150 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~160 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~170 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~180 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~190 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~200 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~210 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~220 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~230 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~240 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~250 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~260 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~270 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~280 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~290 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~300 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~310 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~320 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~330 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~340 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0
        execute rotated ~350 0 positioned ^ ^6 ^ run particle cloud ~ ~ ~ ^ ^-15000000 ^100000000 0.000000025 0

# 終了
    tag @a[tag=DXYZ] remove DXYZ
