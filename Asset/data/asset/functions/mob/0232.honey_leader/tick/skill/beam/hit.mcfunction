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

# 難易度比例のデバフ
    function api:global_vars/get_difficulty

# 採掘速度低下
    data modify storage api: Argument set value {ID:26,Duration:60}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 毒
    data modify storage api: Argument set value {ID:29,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット処理
    tag @s remove LandingTarget
