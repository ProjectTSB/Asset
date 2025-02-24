#> asset:mob/1004.tultaria/tick/base_move/break/recovery
#
# ブレイク状態から復帰
#
# @within function asset:mob/1004.tultaria/tick/base_move/break/tick

# タグリセット
    tag @s remove RW.Break

# エフェクト付与
    data modify storage api: Argument.ID set value 621
    data modify storage api: Argument.Stack set value 1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/base_move/reset
