#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.2.hg_move
#
# 使用するスキルを決定する ハンドガン装備 移動を伴う攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg

# ランダム
    execute store result score $Random Temporary run random value 0..7

# 引き撃ち
    execute if score $Random Temporary matches 0 run tag @s add 9F.Skill.Hg.BackShot
# ライダーキック
    execute if score $Random Temporary matches 1 run tag @s add 9F.Skill.Hg.Riderkick
# 各種ステップ
    execute if score $Random Temporary matches 2 run tag @s add 9F.Skill.Hg.Step.Right
    execute if score $Random Temporary matches 3 run tag @s add 9F.Skill.Hg.Step.Left
    execute if score $Random Temporary matches 4 run tag @s add 9F.Skill.Hg.Step.Right2Left
    execute if score $Random Temporary matches 5 run tag @s add 9F.Skill.Hg.Step.Left2Right
    execute if score $Random Temporary matches 6 run tag @s add 9F.Skill.Hg.Step.Back
# ワープポイント設置
    execute if score $Random Temporary matches 7 run tag @s add 9F.Skill.Hg.Warp.Shot

# リセット
    scoreboard players reset $Random Temporary
