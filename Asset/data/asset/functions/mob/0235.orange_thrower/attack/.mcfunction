#> asset:mob/0235.orange_thrower/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/235/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..6] run particle block orange_concrete ~ ~1.2 ~ 0.5 0.5 0.5 0 100 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.item.pickup hostile @a ~ ~ ~ 1 0.5 0
    execute at @p[tag=Victim,distance=..6] run playsound entity.generic.explode hostile @a ~ ~ ~ 0.3 1 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって橙色になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってみかんを食わされ窒息した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# バフデバフ
# バフの扱いはどうするかは未来に託す
    effect give @p[tag=Victim,distance=..6] saturation 3 0 true

# 移動速度低下
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
