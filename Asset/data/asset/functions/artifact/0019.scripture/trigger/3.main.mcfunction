#> asset:artifact/0019.scripture/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0019.scripture/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 15 run function asset:artifact/0019.scripture/trigger/vfx
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 -15 run function asset:artifact/0019.scripture/trigger/vfx
    playsound block.bell.resonate player @a ~ ~ ~ 1 2
    playsound ogg:random.levelup player @a ~ ~ ~ 1 1.8

# 体力回復
    data modify storage api: Argument.Heal set value 20f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# デバフを1つ解除(解除Lv2)
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.ClearCount set value 1
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
