#> asset:mob/1004.tultaria/tick/base_move/element_select/tags
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/element_select/only_one_element
#   asset:mob/1004.tultaria/tick/base_move/element_select/get.m

# デバッグ用処理: 属性を強制指定
# TODO: ちゃんと消すんだよ！
#    data modify storage asset:context this.Element.Get set value Water

# 属性チェンジじゃ！
    execute if data storage asset:context this.Element{Get:Fire} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/fire
    execute if data storage asset:context this.Element{Get:Thunder} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/thunder
    execute if data storage asset:context this.Element{Get:Water} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/water
    execute if data storage asset:context this.Element{Get:Light} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/light
