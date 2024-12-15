#> asset:mob/0410.heiloang/tick/event/sweep/text_start
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/sweep/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 演出用AEC召喚
    data modify storage api: Argument.ID set value 2122
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run function api:object/summon
