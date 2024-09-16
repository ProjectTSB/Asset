#> asset:mob/0235.orange_thrower/death/3.summon_artifact
#
# 神器を召喚
#
# @within function asset:mob/0235.orange_thrower/death/2.death

# ID:1104の神器を召喚
    data modify storage api: Argument.ID set value 1104
    function api:artifact/spawn/from_id
