#> asset:mob/0175.queen_bee/tick/skill_select
#
#
#
# @within function asset:mob/0175.queen_bee/tick/


# スキルを+1する。稀に確率でスキルをスキップする
    scoreboard players add @s 4V.Skill 1
    execute if predicate lib:random_pass_per/40 run scoreboard players add @s 4V.Skill 1

# スキルが超えたら戻す
    execute if score @s 4V.Skill matches 7.. run scoreboard players set @s 4V.Skill 1

# デバッグスキル固定
    # scoreboard players set @s 4V.Skill 5

    execute if score @s 4V.Skill matches 1 run tag @s add 4V.SkillTackle
    execute if score @s 4V.Skill matches 2 run tag @s add 4V.SkillSummon
    execute if score @s 4V.Skill matches 3 run tag @s add 4V.SkillNeedle
    execute if score @s 4V.Skill matches 4 run tag @s add 4V.SkillGrandSlam
    execute if score @s 4V.Skill matches 5 run tag @s add 4V.SkillTackleFormation
    execute if score @s 4V.Skill matches 6 run tag @s add 4V.SkillBeeBomb
