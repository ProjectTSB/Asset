#> asset:mob/1004.tultaria/tick/base_move/skill_select/only_one_skill
#
# 残りのスキルが１個ならマクロを使う必要もあるまい
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/

# Element.Listの要素を番号で指定
    data modify storage asset:context this.Element.Get set from storage asset:context this.Element.List[0]


# 残った最後の要素を削除
    data remove storage asset:context this.Element.List[0]

# リセット
    data remove storage asset:context this.Element.Roll
