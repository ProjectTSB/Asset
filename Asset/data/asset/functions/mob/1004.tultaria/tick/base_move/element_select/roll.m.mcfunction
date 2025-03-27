#> asset:mob/1004.tultaria/tick/base_move/element_select/roll.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/

# ロール
    $execute store result storage asset:context this.Element.Roll int 1 run random value 1..$(Count)

# 取得する
    function asset:mob/1004.tultaria/tick/base_move/element_select/get.m with storage asset:context this.Element

# リセット
    data remove storage asset:context this.Element.Count
