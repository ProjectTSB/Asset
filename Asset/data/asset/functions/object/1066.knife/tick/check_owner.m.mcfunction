#> asset:object/1066.knife/tick/check_owner.m
#
#
#
# @input args
#   UserID: int
# @within function asset:object/1066.knife/tick/

$execute unless entity @p[scores={UserID=$(UserID)}] run tag @s remove 1066.API.TimeStop
