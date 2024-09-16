#> asset:mob/0077.golden_watermelon/tick/1st_explosion
#
# 1回目の爆発
#
# @within function asset:mob/0077.golden_watermelon/tick/

# 演出
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1.6 1.7 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1.3 1 0
    particle dust 0.173 1 0.243 2 ~ ~ ~ 0.8 0.8 0.8 0 30 normal @a
    particle explosion ~ ~ ~ 1 1 1 0 5 normal @a

# ノーマル以上で鈍化を付与
    execute if predicate api:global_vars/difficulty/min/normal run effect give @a[tag=!PlayerShouldInvulnerable,distance=..2.5] slowness 1 1 true

# 水属性ダメージ
    data modify storage api: Argument.Damage set value 20
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの金色の爆発により消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発により生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 自身に二段目爆発のためのスコアを付与
    scoreboard players set @s 25.Tick 20
