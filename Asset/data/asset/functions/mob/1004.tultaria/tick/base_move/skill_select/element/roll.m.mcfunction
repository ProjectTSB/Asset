#> asset:mob/1004.tultaria/tick/base_move/skill_select/element/roll.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/element/select

# ロール
    $execute store result storage rw_storage: Element.Roll int 1 run random value 1..$(Count)

# 取得する
    function asset:mob/1004.tultaria/tick/base_move/skill_select/element/get.m with storage rw_storage: Element

# リセット
    data remove storage rw_storage: Element.Count
