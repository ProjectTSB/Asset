#> asset:effect/0277.the_world/end/remove_tag
#
#
#
# @input args
#   UserID: int
# @within function asset:effect/0277.the_world/end/

$tag @e[type=item_display,tag=1066.API.TimeStop,scores={ObjectID=1066,1066.API.UserID=$(UserID)}] remove 1066.API.TimeStop
