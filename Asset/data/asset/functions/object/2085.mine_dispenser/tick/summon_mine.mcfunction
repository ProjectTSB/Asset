#> asset:object/2085.mine_dispenser/tick/summon_mine
#
# 
#
# @within function asset:object/2085.mine_dispenser/tick/scatter

    data modify storage api: Argument.ID set value 436
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID 
    function api:mob/summon
