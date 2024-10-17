#> asset:mob/1004.tultaria/tick/base_move/element_select/get.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/roll.m

# Element.Listの要素を番号で指定
    $data modify storage asset:context this.Element.Get set from storage asset:context this.Element.List[-$(Roll)]

# デバッグ用処理: 属性を強制指定
# TODO: ちゃんと消すんだよ！
    data modify storage asset:context this.Element.Get set value Water

# 属性チェンジじゃ！
    execute if data storage asset:context this.Element{Get:Fire} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/fire
    execute if data storage asset:context this.Element{Get:Thunder} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/thunder
    execute if data storage asset:context this.Element{Get:Water} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/water

# 要素を番号で指定して削除
    $data remove storage asset:context this.Element.List[-$(Roll)]

# リセット
    data remove storage asset:context this.Element.Roll
    data remove storage asset:context this.Element.Get
