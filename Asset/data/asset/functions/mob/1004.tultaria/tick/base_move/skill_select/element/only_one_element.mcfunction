#> asset:mob/1004.tultaria/tick/base_move/skill_select/element/only_one_element
#
# 要素数が一個のとき
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/element/select

# Element.Listの要素を番号で指定
    data modify storage rw_storage: Element.Get set from storage rw_storage: Element.List[0]

# 属性チェンジじゃ！
    execute if data storage rw_storage: Element{Get:Fire} run say 火じゃ！
    execute if data storage rw_storage: Element{Get:Thunder} run say イカヅチじゃ！
    execute if data storage rw_storage: Element{Get:Water} run say 水じゃあ！

# 残った最後の要素を削除
    data remove storage rw_storage: Element.List[0]

# リセット
    data remove storage rw_storage: Element.Roll
