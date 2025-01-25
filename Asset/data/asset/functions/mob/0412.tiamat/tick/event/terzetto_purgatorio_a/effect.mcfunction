#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/effect
#
# テルツェット・プルガトリオ
#
# @within
#    function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_0
#    function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1

# 地面が無ければ消す
    # execute if block ~ ~ ~ #lib:no_collision run return run kill @s

# 演出
    particle cloud ~ ~1 ~ 1 1 1 0.1 6
    particle explosion ~ ~1 ~ 1 0.5 1 0 4
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [7f, 5f, 7f]
    execute if predicate lib:random_pass_per/30 run data modify storage api: Argument.FieldOverride.OverrideScale set value [8f, 6f, 8f]
    execute if predicate lib:random_pass_per/30 run data modify storage api: Argument.FieldOverride.OverrideScale set value [9f, 7f, 9f]
    execute positioned ^ ^ ^ run function api:object/summon

# 終了
    kill @s
