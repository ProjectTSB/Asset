#> asset:mob/0321.mini_guardian/tick/event/laser/damage
#
# レーザーのダメージ
#
# @within function asset:mob/0321.mini_guardian/tick/event/laser/green

# ダメージ設定
    data modify storage api: Argument.Damage set value 5.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @e[type=zombie,tag=this,distance=..40,sort=nearest,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
