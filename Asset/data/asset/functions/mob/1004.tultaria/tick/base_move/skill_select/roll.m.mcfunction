#> asset:mob/1004.tultaria/tick/base_move/skill_select/roll.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/

# ロール
    $execute store result storage asset:context this.Skill.Roll int 1 run random value 1..$(Count)

# ただし、自身が水モードかつ、これが最初の技の実行である場合、かならず剣設置に移行
    execute if entity @s[tag=RW.Mode.Water] if data storage asset:context this.Skill{List:[0,1,2]} run function asset:mob/1004.tultaria/tick/base_move/skill_select/start_with_sword

# 取得する
    execute unless entity @s[tag=RW.SkillSelected] run function asset:mob/1004.tultaria/tick/base_move/skill_select/get.m with storage asset:context this.Skill

# リセット
    data remove storage asset:context this.Skill.Count
    tag @s remove RW.SkillSelected
