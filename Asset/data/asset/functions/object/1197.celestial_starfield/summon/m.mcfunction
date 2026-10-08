#> asset:object/1197.celestial_starfield/summon/m
#
# 見えない表示を召喚し、指定した text_display を乗せる
#
# @input args
#   Parts : compound[]
# @within function asset:object/1197.celestial_starfield/summon/

    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],Passengers:$(Parts)}
