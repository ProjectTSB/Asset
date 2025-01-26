#> asset:mob/0311.blazing_inferno/tick/base_move/skill_select/only_one_skill
#
# 残りのスキルが１個ならマクロを使う必要もあるまい
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_select/

# Element.Listの要素を番号で指定
    data modify storage asset:context this.Skill.Get set from storage asset:context this.Skill.List[0]

# 技を選択
    function asset:mob/0311.blazing_inferno/tick/base_move/skill_select/tags

# 残った最後の要素を削除
    data remove storage asset:context this.Skill.List[0]

# リセット
    data remove storage asset:context this.Skill.Roll
