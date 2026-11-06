#> asset:object/2178.tiamat_icicledive/tick/effect
#
# Objectのtick時の処理
#
# @within asset:object/2178.tiamat_icicledive/tick/damage

# 地面が無ければ消す
    execute if block ~ ~ ~ #lib:no_collision/ if block ~ ~-1 ~ #lib:no_collision/ if block ~ ~-2 ~ #lib:no_collision/ run return run kill @s

# 演出
    particle cloud ~ ~1 ~ 2 2 2 0.1 6
    particle explosion ~ ~1 ~ 2 0.5 2 0 4
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [4f, 4f, 4f]
    execute positioned ^ ^0.2 ^ run function api:object/summon

# 終了
    kill @s
