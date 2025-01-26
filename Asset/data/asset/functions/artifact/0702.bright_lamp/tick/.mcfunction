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
    effect give @a[distance=..8] night_vision 26 0 true

# 暗闇を解除
    data modify storage api: Argument.ID set value 124
    execute as @a[distance=..8] run function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
