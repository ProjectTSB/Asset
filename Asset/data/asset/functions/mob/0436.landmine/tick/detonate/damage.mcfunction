#> asset:mob/0436.landmine/tick/detonate/damage
#
# 
#
# @within function asset:mob/0436.landmine/tick/detonate/detonate

# ダメージ
    data modify storage api: Argument.Damage set value 5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの空中散布地雷によって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset
