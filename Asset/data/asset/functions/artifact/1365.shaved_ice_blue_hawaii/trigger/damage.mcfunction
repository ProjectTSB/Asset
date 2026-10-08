#> asset:artifact/1365.shaved_ice_blue_hawaii/trigger/damage
#
#
#
# @within function asset:artifact/1365.shaved_ice_blue_hawaii/trigger/3.main

# 演出
    playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは頭がキーンとした","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
