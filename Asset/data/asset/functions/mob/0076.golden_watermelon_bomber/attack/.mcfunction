#> asset:mob/0076.golden_watermelon_bomber/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/_/attack

# 演出
    execute at @p[tag=Victim,distance=..6] run playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim,distance=..6] run particle dust 1 0.941 0.141 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a
    execute at @p[tag=Victim,distance=..6] run particle dust 0.173 1 0.243 1 ~ ~1.2 ~ 1 1 1 0 10 normal @a

# Lv4の防具でLv4のMobの攻撃を受けたときと同じくらいのダメージに調整してある

# 水属性ダメージ
    data modify storage api: Argument.Damage set value 17.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの金色の輝きにより心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの電撃により死亡した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

#　雷属性ダメージ
    data modify storage api: Argument.Damage set value 17.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの金色の輝きにより心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの電撃により死亡した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
