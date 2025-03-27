#> asset:mob/0327.eclael/tick/app.1_5.select_skill_latter_attack_far
#
# 使用するスキルを決定する・後半戦・通常攻撃・遠距離用
#
# @within function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..2

# 居合斬り
    execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.Iai
# 射撃
    execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Shot
# 電光石火
    execute if score $Random Temporary matches 2 run tag @s add 93.Skill.Latter.Move

# リセット
    scoreboard players reset $Random Temporary
