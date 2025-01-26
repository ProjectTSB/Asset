#> asset:mob/0055.hetukedah/tick/skill/charge/hit
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/move_forward

# ダメージ
# HurtTime:0sならダメージを与える
    data modify storage api: Argument.Damage set value 7.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:data_get/hurt_time
    execute as @e[type=zombie,tag=this,distance=..3,sort=nearest,limit=1] run function api:damage/modifier
    execute if data storage api: {HurtTime:0s} run function api:damage/
    function api:damage/reset
