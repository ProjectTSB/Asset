#> asset:mob/0205.skull_soldier/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/205/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
# バランス調整の都合で斧と弓でダメージを変える
    execute if data storage asset:context Attack{Type:"vanilla_melee"} run data modify storage api: Argument.Damage set value 4.5f
    execute if data storage asset:context Attack{Type:"vanilla_projectile"} run data modify storage api: Argument.Damage set value 2.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって,"with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..60] run function api:damage/
    function api:damage/reset
