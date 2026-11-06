#> asset:mob/0412.tiamat/tick/event/hellwing/effect
#
# ヘルウィング
#
# @within
#    function asset:mob/0412.tiamat/tick/event/hellwing/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/

# 地面が無ければ消す
    execute if block ~ ~ ~ #lib:no_collision/ run return run kill @s

# 演出
    particle cloud ~ ~1 ~ 2 2 2 0.1 6
    particle explosion ~ ~1 ~ 2 0.5 2 0 4
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [7f, 5f, 7f]
    execute positioned ^ ^0.5 ^ run function api:object/summon

# 終了
    kill @s
