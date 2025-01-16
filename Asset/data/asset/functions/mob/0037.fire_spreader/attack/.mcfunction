#> asset:mob/0037.fire_spreader/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/37/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..6] run particle flame ~ ~1.5 ~ 0.5 0.5 0.5 0.1 40 normal @a
    execute at @p[tag=Victim,distance=..6] run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.4 1.2 0

# 延焼能力
    execute if predicate api:area/is_breakable at @p[tag=Victim,distance=..6] run fill ~1.5 ~1.5 ~1.5 ~-1.5 ~-1.5 ~-1.5 fire replace #lib:air

# ダメージ
    data modify storage lib: Argument.Damage set value 8.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって炎の中で燃え尽きた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの炎の延焼で灰となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function lib:damage/modifier
    execute at @p[tag=Victim,distance=..6] as @a[gamemode=!spectator,predicate=lib:is_burning,distance=..4.0] run function lib:damage/
    function lib:damage/reset
