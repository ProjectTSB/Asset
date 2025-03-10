#> asset:mob/0301.karmic/tick/01_0.dash/dash_skill_select
#
#
#
# @within function asset:mob/0301.karmic/tick/01_0.dash/main

# ここに関してはランダムで決めちゃう
    execute store result score $Random Temporary run random value 0..1

# デバッグ
    #scoreboard players set $Random Temporary 1
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 8D.SkillDash1
    execute if score $Random Temporary matches 1 run tag @s add 8D.SkillDash2

# 未使用
    execute if score $Random Temporary matches 2 run tag @s add 8D.SkillDash3

# リセット
    scoreboard players reset $Random Temporary

# 前のタグ消す
    tag @s remove 8D.SkillDash

# スキップタグ付与
    tag @s add 8D.SkipSkillSelect

# スコア設定
    scoreboard players set @s General.Mob.Tick -1
