#> asset:object/1197.celestial_starfield/tick/chime/play.m
#
# 指定した音量と高さでチャイムを鳴らす
#
# @input args
#   Volume : float
#   Pitch : float
# @within function asset:object/1197.celestial_starfield/tick/chime/

    $playsound block.note_block.chime player @a ~ ~ ~ $(Volume) $(Pitch)
