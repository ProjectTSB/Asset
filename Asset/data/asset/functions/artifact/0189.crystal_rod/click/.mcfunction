#> asset:artifact/0189.crystal_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/189/click/

# vfx
    execute at @a[distance=..15] run function asset:artifact/0189.crystal_rod/click/vfx

# Lv1のデバフを解除
# ハード以上で一つのみになる?(未確定なのでコメントアウト)
    data modify storage api: Argument.ClearLv set value 1
    data modify storage api: Argument.ClearType set value "bad"
    #execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.IsSingle set value true
    execute as @a[distance=..15] run function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
