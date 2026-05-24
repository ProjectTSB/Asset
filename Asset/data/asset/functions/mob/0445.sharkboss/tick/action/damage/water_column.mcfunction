#> asset:mob/0445.sharkboss/tick/action/damage/water_column
#
# 
#
# @within function asset:mob/0445.sharkboss/vfx/water_column

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.WaterColumn
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sはびしょびしょになってしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1] run function api:damage/
    function api:damage/reset
