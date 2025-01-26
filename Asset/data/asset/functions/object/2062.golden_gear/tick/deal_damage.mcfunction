#> asset:object/2062.golden_gear/tick/deal_damage
#
#
#
# @within function asset:object/2062.golden_gear/tick/

#> Val
# @private
#declare tag Target

# 対象にタグ付与
    execute positioned ~ ~0 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
    execute positioned ~ ~1 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
    execute positioned ~ ~2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
    execute positioned ~ ~3 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
    execute positioned ~ ~4 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
    execute positioned ~ ~5 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add Target
# パラメータ設定
    data modify storage api: Argument.Damage set value 21
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの黄金の歯車により時空の狭間へ送られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function api:damage/modifier_manual
# 与
    execute as @a[tag=Target,distance=..10] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=Target,distance=..10] remove Target
