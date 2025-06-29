#> asset:mob/1004.tultaria/hurt/health_under_50
#
# 50%切ったときの処理
#
# @within function
#   asset:mob/1004.tultaria/hurt/check_health
#   asset:mob/1004.tultaria/hurt/test_hp50

# Tick初期化
    scoreboard players set @s General.Mob.Tick -1

# タグ付与
    tag @s add RW.Transition.Phase3

# お星さまを削除
    kill @e[type=item_display,scores={ObjectID=2030},distance=..128]

# リセット
    function asset:mob/1004.tultaria/tick/reset/skill_tag
