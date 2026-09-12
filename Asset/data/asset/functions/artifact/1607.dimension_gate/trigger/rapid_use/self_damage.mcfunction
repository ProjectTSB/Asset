#> asset:artifact/1607.dimension_gate/trigger/rapid_use/self_damage
#
#
#
# @within function asset:artifact/1607.dimension_gate/trigger/rapid_use/check

# 演出
    playsound tsb_sounds: player @a ~ ~ ~ 1 0.8
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 1 1.8
    
# ダメージ
    execute store result storage api: Argument.Damage double 0.2 run attribute @s generic.max_health get
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは次元の狭間に取り残された","with":[{"selector":"@s"}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは未知の次元に落ちてしまった","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
