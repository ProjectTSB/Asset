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

# 暗視を付与
    data modify storage api: Argument set value {ID:191,Duration:420}
    execute as @a[distance=..8] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 暗闇を解除
    data modify storage api: Argument.ID set value 24
    execute as @a[distance=..8] run function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

    data modify storage api: Argument.ID set value 74
    execute as @a[distance=..8] run function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
