#> asset:mob/1004.tultaria/tick/base_move/element_select/get.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/roll.m

# Element.Listの要素を番号で指定
    $data modify storage asset:context this.Element.Get set from storage asset:context this.Element.List[-$(Roll)]

# 属性チェンジじゃ！
    function asset:mob/1004.tultaria/tick/base_move/element_select/tags

# 要素を番号で指定して削除
    $data remove storage asset:context this.Element.List[-$(Roll)]

# リセット
    data remove storage asset:context this.Element.Roll
    data remove storage asset:context this.Element.Get
