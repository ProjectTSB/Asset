#> asset:object/2046.white_magic/tick/hit
#
# ヒット処理
#
# @within function asset:object/2046.white_magic/tick/

# ダメージ
    data modify storage api: Argument.Damage set value 30.0d
    data modify storage api: Argument.AttackType set value "Magic"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# ノーマル以上なら範囲内のプレイヤーにデバフを付与
    execute if predicate api:global_vars/difficulty/min/normal as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:object/2046.white_magic/tick/debuff
