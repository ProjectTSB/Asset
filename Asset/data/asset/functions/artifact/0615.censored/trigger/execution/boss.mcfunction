#> asset:artifact/0615.censored/trigger/execution/boss
#
# ボス級の処刑
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..0.01,limit=1] anchored eyes positioned ^ ^ ^ run function asset:artifact/0615.censored/trigger/object_summon
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 666.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..0.01,limit=1] run function api:damage/
    function api:damage/reset

# 周囲のモブにダメージ
    data modify storage api: Argument.Damage set value 250.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Victim,tag=!Uninterferable,distance=..6] run function api:damage/
    function api:damage/reset
