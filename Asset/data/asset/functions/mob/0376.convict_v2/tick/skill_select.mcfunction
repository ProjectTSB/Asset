#> asset:mob/0376.convict_v2/tick/skill_select
#
#
#
# @within function asset:mob/0376.convict_v2/tick/


# スキルを+1する。稀に確率でスキルをスキップする
    scoreboard players add @s AG.Skill 1
    execute if predicate lib:random_pass_per/40 run scoreboard players add @s AG.Skill 1

# スキルが超えたら戻す
    execute if score @s AG.Skill matches 8.. run scoreboard players set @s AG.Skill 1

# デバッグスキル固定
    #scoreboard players set @s AG.Skill 7

# スキル選択
    execute if score @s AG.Skill matches 1 run tag @s add AG.SkillAxe1
    execute if score @s AG.Skill matches 2 run tag @s add AG.SkillAxe2
    execute if score @s AG.Skill matches 3 run tag @s add AG.SkillAxe3
    execute if score @s AG.Skill matches 4 run tag @s add AG.SkillAxe4
    execute if score @s AG.Skill matches 5 run tag @s add AG.SkillAxe5
    execute if score @s AG.Skill matches 6 run tag @s add AG.SkillAxe6
    execute if score @s AG.Skill matches 7 run tag @s add AG.SkillAxe7
