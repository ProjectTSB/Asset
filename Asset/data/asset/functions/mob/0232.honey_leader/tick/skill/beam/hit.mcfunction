#> asset:mob/0232.honey_leader/tick/skill/beam/hit
#
# ヒット処理
#
# @within function asset:mob/0232.honey_leader/tick/skill/beam/shoot_and_reset

# 演出
    playsound entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5 0
    playsound block.honey_block.hit hostile @a ~ ~ ~ 1 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 40f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに全身べとべとにされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにハチの巣の材料にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=skeleton,tag=this,distance=..32] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# デバフ
    effect give @s mining_fatigue 3 1 true
    execute if predicate api:global_vars/difficulty/max/normal run effect give @s poison 3 1 true
    execute if predicate api:global_vars/difficulty/min/hard run effect give @s wither 3 1 true

# リセット処理
    tag @s remove LandingTarget
