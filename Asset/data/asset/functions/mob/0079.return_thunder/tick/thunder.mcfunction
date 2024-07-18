#> asset:mob/0079.return_thunder/tick/thunder
#
# 雷
#
# @within function asset:mob/0079.return_thunder/tick/

# 演出
    particle dust 1 1 0 1 ~ ~4 ~ 0.2 3 0.2 0 120
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.2 5
    execute positioned ~ ~0.2 ~ run function asset:mob/0079.return_thunder/tick/vfx
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.35 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.35 0 0

# ダメージ
# ハードでダメージ上昇
# ハードでは弾速が上がり、連続ヒットしにくくなっているため
    data modify storage api: Argument.Damage set value 18.0f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.Damage set value 25.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset

# イージーならヒット時点で消滅
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..2] if predicate api:global_vars/difficulty/easy run kill @s
