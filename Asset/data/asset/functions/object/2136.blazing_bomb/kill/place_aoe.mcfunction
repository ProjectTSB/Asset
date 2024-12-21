#> asset:object/2136.blazing_bomb/kill/place_aoe
#
#
#
# @within function asset:object/2136.blazing_bomb/kill/

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2137
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    function api:object/summon

# 燃える！！
    execute if predicate api:area/is_breakable run fill ~3 ~ ~3 ~-3 ~ ~-3 fire[age=4] replace air
