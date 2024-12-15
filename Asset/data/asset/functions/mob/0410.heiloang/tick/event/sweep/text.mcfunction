#> asset:mob/0410.heiloang/tick/event/sweep/text
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/sweep/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 移動
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run tp @e[type=text_display,tag=2122.Main] ~ ~ ~
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 10 force
    $execute positioned ^$(posx) ^$(posy) ^$(posz) run particle dust 0.875 0.267 0.114 2 ~ ~ ~ 0.5 0.5 0.5 0.1 5 force
