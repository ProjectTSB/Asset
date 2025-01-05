#> asset:effect/0230.farothdal/modify/remove
#
#
#
# @within function
#   asset:effect/0230.farothdal/end/
#   asset:effect/0230.farothdal/remove/
# 移動速度戻す
    attribute @s minecraft:generic.movement_speed modifier remove 00000001-0000-0003-0000-00e600000000
# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    function api:modifier/attack/base/remove
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    function api:modifier/defense/base/remove