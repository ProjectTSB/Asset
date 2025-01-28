#> asset:effect/0230.farothdal/modifier/remove
#
#
#
# @within function asset:effect/0230.farothdal/tick/

# 補正を削除
    attribute @s minecraft:generic.movement_speed modifier remove 00000001-0000-0003-0000-00e600000000
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    function api:modifier/attack/base/remove
    data modify storage api: Argument.UUID set value [I;1,3,230,0]
    function api:modifier/defense/base/remove

# フラグ
    data modify storage asset:context this.Sprint set value false
