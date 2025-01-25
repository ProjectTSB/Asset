#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line.m
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/

# 対象ごとに実行
    $execute positioned ^$(posx) ^$(posy) ^$(posz) as @a[tag=BF.FlareTarget] run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line_obj

# 終了
    tag @e[type=item_display,tag=2181.Line,tag=2181.Line.End] remove 2181.Line.End
