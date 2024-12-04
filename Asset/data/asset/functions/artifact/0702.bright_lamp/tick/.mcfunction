#> asset:artifact/0702.bright_lamp/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/702/tick/


# 演出
    #playsound ogg:block.respawn_anchor.charge3 player @a ~ ~ ~ 0.25 2
    execute positioned ~ ~1 ~ run function asset:artifact/0702.bright_lamp/tick/vfx
    scoreboard players reset $RecursiveLimit Temporary

# 暗視を付与
    effect give @a[distance=..8] night_vision 21 0 true

# 盲目とダークネスを解除
    effect clear @a[distance=..8] blindness
    effect clear @a[distance=..8] darkness
