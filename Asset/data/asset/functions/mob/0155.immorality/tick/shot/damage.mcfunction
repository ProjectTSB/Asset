#> asset:mob/0155.immorality/tick/shot/damage
#
# ダメージ等を与える 実行者はプレイヤー
#
# @within function asset:mob/0155.immorality/tick/shot/shoot

# 演出
    particle minecraft:soul ~ ~ ~ 0 0 0 0.2 10

# ダメージ
    data modify storage api: Argument.Damage set value 28.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに精神を破壊された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに魂を撃ち抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..25,sort=nearest,limit=1] run function api:damage/modifier
    execute unless entity @s[gamemode=creative] run function api:damage/
    function api:damage/reset

# 衰弱Lv2
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:80,Duration:160}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 着弾タグを消す
    tag @s remove LandingTarget
