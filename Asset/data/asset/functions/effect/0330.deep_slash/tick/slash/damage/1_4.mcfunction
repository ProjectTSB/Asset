#> asset:effect/0330.deep_slash/tick/slash/damage/1_4
#
#
#
# @within function asset:effect/0330.deep_slash/tick/slash/*

# ダメージ判定
# 前方に強めの判定
    execute positioned ^ ^ ^8 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..8] add 330.Target

# ダメージ
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=330.Target,distance=..4.2] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=330.Target,distance=..16] remove 330.Target
