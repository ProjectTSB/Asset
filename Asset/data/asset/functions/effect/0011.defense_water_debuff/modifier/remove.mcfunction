#> asset:effect/0011.defense_water_debuff/modifier/remove
#
#
#
# @within function
#   asset:effect/0011.defense_water_debuff/end/
#   asset:effect/0011.defense_water_debuff/re-given/
#   asset:effect/0011.defense_water_debuff/remove/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,-1,0]
    data modify storage api: Argument.UUID[2] set from storage asset:context originID
    function api:modifier/defense/water/remove
