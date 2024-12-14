#> asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/hit
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/flamethrower/flame/

# ダメージ
# HurtTime:0sの時のみダメージ
    data modify storage api: Argument.Damage set value 7f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:data_get/hurt_time
    execute as @e[type=zombie,tag=this,distance=..30,sort=nearest,limit=1] run function api:damage/modifier
    execute if data storage api: {HurtTime:0s} run function api:damage/
    function api:damage/reset
