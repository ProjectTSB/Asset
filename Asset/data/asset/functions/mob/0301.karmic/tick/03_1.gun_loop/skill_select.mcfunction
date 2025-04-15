#> asset:mob/0301.karmic/tick/03_1.gun_loop/skill_select
#
#
#
# @within function asset:mob/0301.karmic/tick/03_1.gun_loop/main

# ループするor終わるはランダムで決める
    execute store result score $Random Temporary run random value 0..1

# 1が出たら、次のスキル、0ならループ
    execute if score $Random Temporary matches 1 run tag @s add 8D.SkillGunEnd
    execute if score $Random Temporary matches 1 run tag @s remove 8D.SkillGunLoop

# リセット
    scoreboard players reset $Random Temporary

# スキップタグ付与
    tag @s add 8D.SkipSkillSelect

# スコア設定
    scoreboard players set @s General.Mob.Tick -1
