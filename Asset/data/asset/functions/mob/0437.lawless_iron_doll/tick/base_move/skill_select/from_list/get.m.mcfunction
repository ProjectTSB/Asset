#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/get.m
#
# @input args:
#    Roll : int
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/roll.m

# Skill.Listの要素を番号で指定
    $data modify storage asset:context this.Skill.Get set from storage asset:context this.Skill.List[-$(Roll)]

# 技を選択
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/tags

# 要素を番号で指定して削除
    $data remove storage asset:context this.Skill.List[-$(Roll)]

# リセット
    data remove storage asset:context this.Skill.Roll
    data remove storage asset:context this.Skill.Get

# 最後の一個だった場合、サイクルリセット
    execute if data storage asset:context this.Skill{List:[]} run tag @s add C5.CycleReset
