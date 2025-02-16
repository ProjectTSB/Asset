#> asset:mob/1004.tultaria/tick/base_move/break/recovery
#
# ブレイク状態から復帰
#
# @within function asset:mob/1004.tultaria/tick/base_move/break/tick

# タグリセット
    tag @s remove RW.Break

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/base_move/reset
