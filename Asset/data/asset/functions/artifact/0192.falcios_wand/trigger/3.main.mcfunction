#> asset:artifact/0192.falcios_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0192.falcios_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @a[distance=..8] run particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @a[distance=..16]
    playsound minecraft:entity.arrow.hit_player player @a[distance=..8] ~ ~ ~ 20 1
    execute positioned ~ ~4 ~ run function asset:artifact/0192.falcios_wand/trigger/vfx/

# 回復
    data modify storage api: Argument.Heal set value 15.0f
    function api:heal/modifier
    execute as @a[distance=..8] run function api:heal/
    function api:heal/reset

# 再生
    data modify storage api: Argument.ID set value 301
    data modify storage api: Argument.Stack set value 3
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Heal set value 3.0f
    execute as @a[distance=..8] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
