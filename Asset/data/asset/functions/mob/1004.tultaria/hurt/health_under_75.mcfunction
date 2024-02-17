#> asset:mob/1004.tultaria/hurt/health_under_75
#
# 75%切ったときの処理
#
# @within function
#   asset:mob/1004.tultaria/hurt/3.check_health
#   asset:mob/1004.tultaria/hurt/test_hp75

# Tick初期化
    scoreboard players set @s RW.Tick -1

# タグ付与
    tag @s add RW.HPless75per
    tag @s add RW.Skill.Deadly1
