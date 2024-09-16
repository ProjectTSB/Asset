#> asset:artifact/0189.crystal_rod/trigger/4.debuff_clear
#
# デバフを解除する
#
# @within function asset:artifact/0189.crystal_rod/trigger/3.main

# 演出
    particle minecraft:end_rod ~ ~1.2 ~ 0.3 0.5 0.3 0.3 15 normal @a
    particle minecraft:firework ~ ~1.2 ~ 0.3 0.5 0.3 0.3 15 normal @a
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1.5
    playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 2 2

# Lv1のデバフを解除
# ハード以上で一つのみになる?(未確定なのでコメントアウト)
    data modify storage api: Argument.ClearLv set value 1
    data modify storage api: Argument.ClearType set value "bad"
    #execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level
