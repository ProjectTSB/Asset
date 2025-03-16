#> asset:mob/0436.landmine/tick/detonate/damage
#
# 
#
# @within function asset:mob/0436.landmine/tick/detonate/detonate

# ダメージ
    data modify storage api: Argument.Damage set value 5f
    data modify storage api: Argument.AttackType set value "Physical"
    execute as @e[type=slime,tag=this,distance=..1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
