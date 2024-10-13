#> asset:object/2048.wave_magic/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set value 32f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってオーロラの魔法の中に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# ノーマル以上ならデバフを付与
    execute if predicate api:global_vars/difficulty/min/normal as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function asset:object/2048.wave_magic/hit_entity/debuff

# 消滅
    function asset:object/call.m {method:kill}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
