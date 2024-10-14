#> asset:mob/1004.tultaria/tick/base_move/skill_select/element/get.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/element/roll.m

# Element.Listの要素を番号で指定
    $data modify storage rw_storage: Element.Get set from storage rw_storage: Element.List[-$(Roll)]

# 属性チェンジじゃ！
    execute if data storage rw_storage: Element{Get:Fire} run say 火じゃ！
    execute if data storage rw_storage: Element{Get:Thunder} run say イカヅチじゃ！
    execute if data storage rw_storage: Element{Get:Water} run say 水じゃあ！

# 要素を番号で指定して削除
    $data remove storage rw_storage: Element.List[-$(Roll)]

# リセット
    data remove storage rw_storage: Element.Roll
    data remove storage rw_storage: Element.Get
