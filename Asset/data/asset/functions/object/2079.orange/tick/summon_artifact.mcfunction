#> asset:object/2079.orange/tick/summon_artifact
#
# 神器を召喚
#
# @within function asset:object/2079.orange/tick/boom

# ID:1104の神器を召喚
    data modify storage api: Argument.ID set value 1104
    function api:artifact/spawn/from_id
