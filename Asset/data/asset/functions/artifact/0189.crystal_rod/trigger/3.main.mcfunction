#> asset:artifact/0189.crystal_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0189.crystal_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# vfx
    execute at @a[distance=..15] run function asset:artifact/0189.crystal_rod/trigger/vfx

# Lv1のデバフを解除
# ハード以上で一つのみになる?(未確定なのでコメントアウト)
    data modify storage api: Argument.ClearLv set value 1
    data modify storage api: Argument.ClearType set value "bad"
    #execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.IsSingle set value true
    execute as @a[distance=..15] run function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
