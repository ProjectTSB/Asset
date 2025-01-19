#> asset:artifact/0702.bright_lamp/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0702.bright_lamp/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    #playsound ogg:block.respawn_anchor.charge3 player @a ~ ~ ~ 0.25 2
    execute positioned ~ ~1 ~ run function asset:artifact/0702.bright_lamp/trigger/vfx
    scoreboard players reset $RecursiveLimit Temporary

# 暗視を付与
    effect give @a[distance=..8] night_vision 26 0 true

# 暗闇を解除
    data modify storage api: Argument.ID set value 124
    execute as @a[distance=..8] run function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
