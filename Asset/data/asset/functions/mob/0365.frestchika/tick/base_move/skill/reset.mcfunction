#> asset:mob/0365.frestchika/tick/base_move/skill/reset
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

# スコアをセット
    scoreboard players set @s General.Mob.Tick -10

# Tagを削除
    tag @s remove A5.Skill.BackDashBomb
    tag @s remove A5.Skill.FrontDashSlash
    tag @s remove A5.Skill.HoloBlockThunder
    tag @s remove A5.Skill.SideDashShot

    tag @s remove A5.Dash.Left
    tag @s remove A5.Dash.Right

    tag @s remove A5.InAction
