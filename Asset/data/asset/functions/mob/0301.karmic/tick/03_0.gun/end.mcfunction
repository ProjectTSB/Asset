#> asset:mob/0301.karmic/tick/03_0.gun/end
#
#
#
# @within function asset:mob/0301.karmic/tick/03_0.gun/main

# 前のタグ消す
    tag @s remove 8D.SkillGun

# 次のタグ与える
    tag @s add 8D.SkillGunLoop

# スキップタグ付与
    tag @s add 8D.SkipSkillSelect

# スコア設定
    scoreboard players set @s General.Mob.Tick -1
