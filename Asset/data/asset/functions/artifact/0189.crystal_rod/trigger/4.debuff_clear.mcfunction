#> asset:artifact/0189.crystal_rod/trigger/4.debuff_clear
#
# デバフを解除する
#
# @within function asset:artifact/0189.crystal_rod/trigger/3.main

# EffectAssetのLv1のデバフを解除
# ハード以上で一つのみになる
    data modify storage api: Argument.ClearLv set value 1
    data modify storage api: Argument.ClearType set value "bad"
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.IsSingle set value true
    function api:entity/mob/effect/remove/from_level

# バニラデバフを削除
    effect clear @s blindness
    effect clear @s hunger
    effect clear @s mining_fatigue
    effect clear @s nausea
    effect clear @s poison
    effect clear @s slowness
    effect clear @s weakness
    effect clear @s wither