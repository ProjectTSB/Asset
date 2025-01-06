#> asset:artifact/0920.dal_i_thalion/trigger/5.effect_clear
#
# デバフを解除する
#
# @within function asset:artifact/0920.dal_i_thalion/trigger/4.schedule

# Lv1デバフを全て解除する
    data modify storage api: Argument.ClearLv set value 1
    data modify storage api: Argument.ClearType set value "bad"
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset

# タグ消す
    tag @s remove PK.EffectClear
