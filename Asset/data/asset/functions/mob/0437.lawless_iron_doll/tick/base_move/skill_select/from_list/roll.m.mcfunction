#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/roll.m
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/

# ロール
    $execute store result storage asset:context this.Skill.Roll int 1 run random value 1..$(Count)

# 取得する
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/from_list/get.m with storage asset:context this.Skill

# リセット
    data remove storage asset:context this.Skill.Count
