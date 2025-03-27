#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.1.hg_normal
#
# 使用するスキルを決定する ハンドガン装備 ふつう・短めの攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg

# ランダム
    execute store result score $Random Temporary run random value 0..5

# 射撃 * 2
    execute if score $Random Temporary matches 0 run tag @s add 9F.Skill.Hg.Shot
    execute if score $Random Temporary matches 1 run tag @s add 9F.Skill.Hg.Shot
# 引き撃ち
    execute if score $Random Temporary matches 2 run tag @s add 9F.Skill.Hg.BackShot
# サイドステップ
    execute if score $Random Temporary matches 3 run tag @s add 9F.Skill.Hg.Step.Right
    execute if score $Random Temporary matches 4 run tag @s add 9F.Skill.Hg.Step.Left
# フルバースト（低確率）
    execute if score $Random Temporary matches 5 run tag @s add 9F.Skill.Hg.Fullburst.Start

# リセット
    scoreboard players reset $Random Temporary
