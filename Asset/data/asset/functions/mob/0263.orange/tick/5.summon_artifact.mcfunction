#> asset:mob/0263.orange/tick/5.summon_artifact
#
# 神器を召喚する
#
# @within function asset:mob/0263.orange/tick/4.boom

# ID:1104の神器を召喚
    data modify storage api: Argument.ID set value 1104
    function api:artifact/spawn/from_id
