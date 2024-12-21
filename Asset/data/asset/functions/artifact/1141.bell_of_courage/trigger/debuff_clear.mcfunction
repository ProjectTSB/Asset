#> asset:artifact/1141.bell_of_courage/trigger/debuff_clear
#
#
#
# @within function
#   asset:artifact/1141.bell_of_courage/trigger/schedule
#   asset:artifact/1141.bell_of_courage/trigger/rejoin_process

# デバフを1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset

# Tag削除
    tag @s remove VP.Schedule
