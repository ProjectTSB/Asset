#> asset:object/2046.white_magic/tick/hit
#
# ヒット処理
#
# @within function asset:object/2046.white_magic/tick/

# MobのAttackトリガー起動用Metadata
    data modify storage api: Argument.Metadata set value "363.Debuff"

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
    function api:damage/reset
