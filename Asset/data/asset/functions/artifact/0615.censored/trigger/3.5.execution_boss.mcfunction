#> asset:artifact/0615.censored/trigger/3.5.execution_boss
#
# ボス級の処刑
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute positioned ~ ~-0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~ ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.2 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.4 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.6 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    execute positioned ~ ~0.8 ~ run function asset:artifact/0615.censored/trigger/3.1.censored_object
    function asset:artifact/0615.censored/trigger/3.2.censored_object2
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 666.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim] run function api:damage/
    function api:damage/reset
