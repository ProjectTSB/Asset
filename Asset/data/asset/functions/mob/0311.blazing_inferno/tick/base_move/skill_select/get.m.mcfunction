#> asset:mob/0311.blazing_inferno/tick/base_move/skill_select/get.m
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_select/roll.m

# Skill.Listの要素を番号で指定
    $data modify storage asset:context this.Skill.Get set from storage asset:context this.Skill.List[-$(Roll)]

# 技を選択
    function asset:mob/0311.blazing_inferno/tick/base_move/skill_select/tags

# 要素を番号で指定して削除
    $data remove storage asset:context this.Skill.List[-$(Roll)]

# リセット
    data remove storage asset:context this.Skill.Roll
    data remove storage asset:context this.Skill.Get
