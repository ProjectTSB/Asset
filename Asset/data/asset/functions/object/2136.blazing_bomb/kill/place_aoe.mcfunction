#> asset:object/2136.blazing_bomb/kill/place_aoe
#
#
#
# @within function asset:object/2136.blazing_bomb/kill/


# オブジェクト召喚
    data modify storage api: Argument.ID set value 2137
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# 燃える！！
    fill ~3 ~ ~3 ~-3 ~ ~-3 fire[age=5] replace air
