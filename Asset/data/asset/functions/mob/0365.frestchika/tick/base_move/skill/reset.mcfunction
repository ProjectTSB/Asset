#> asset:mob/0365.frestchika/tick/base_move/skill/reset
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/**

# スコアをセット
    scoreboard players set @s General.Mob.Tick -10

# 両手を空にする
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item.child,sort=nearest,limit=1] container.0 with minecraft:air
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item.child,sort=nearest,limit=1] container.0 with minecraft:air

# Tagを削除
    tag @s remove A5.Skill.BackDashBomb
    tag @s remove A5.Skill.FrontDashSlash
    tag @s remove A5.Skill.HoloBlockThunder
    tag @s remove A5.Skill.SideDashShot

    tag @s remove A5.Dash.Left
    tag @s remove A5.Dash.Right

    tag @s remove A5.DashSkill.DelayLaser
    tag @s remove A5.DashSkill.RapidLaser
    tag @s remove A5.DashSkill.SlowShot

    tag @s remove A5.InAction
