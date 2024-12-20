#> asset:mob/0311.blazing_inferno/tick/base_move/reset
#
#
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/**
#   asset:mob/0311.blazing_inferno/hurt/active_50per

# スコアリセット
    scoreboard players reset @s General.Mob.Tick

# タグ削除
    tag @s remove 8N.InAction
    tag @s remove 8N.Skill.Fireball
    tag @s remove 8N.Skill.DashPunch
    tag @s remove 8N.Skill.FireBomb
    tag @s remove 8N.Skill.OraOra
    tag @s remove 8N.Skill.Summon
    tag @s remove 8N.Skill.GroundSlam

# 回転スピードもとに戻す
    tag @s remove 8N.Turn.HighSpeed

