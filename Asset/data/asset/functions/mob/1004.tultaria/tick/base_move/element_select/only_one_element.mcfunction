#> asset:mob/1004.tultaria/tick/base_move/element_select/only_one_element
#
# 要素数が一個のとき
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/

# Element.Listの要素を番号で指定
    data modify storage asset:context this.Element.Get set from storage asset:context this.Element.List[0]

# 属性チェンジじゃ！
    execute if data storage asset:context this.Element{Get:Fire} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/fire
    execute if data storage asset:context this.Element{Get:Thunder} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/fire
    execute if data storage asset:context this.Element{Get:Water} run function asset:mob/1004.tultaria/tick/base_move/element_select/change/fire

# 残った最後の要素を削除
    data remove storage asset:context this.Element.List[0]

# リセット
    data remove storage asset:context this.Element.Roll
