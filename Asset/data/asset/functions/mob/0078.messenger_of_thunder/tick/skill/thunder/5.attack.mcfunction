#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder/5.attack
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/1

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 250
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.8 0 0

# ダメージ
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# キル
    kill @e[type=area_effect_cloud,tag=26.SkillThunderMarker,distance=..0.01,sort=nearest,limit=1]
