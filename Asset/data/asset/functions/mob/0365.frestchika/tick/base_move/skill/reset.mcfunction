#> asset:mob/0365.frestchika/tick/base_move/skill/reset
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/**
#   asset:mob/0365.frestchika/hurt/active_50per

# スコアをセット
    scoreboard players set @s General.Mob.Tick -1

# アニメ再生しておく
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# 両手を空にする
#    item replace entity @e[type=item_display,tag=A5.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:air
#    item replace entity @e[type=item_display,tag=A5.Model.LeftHandItem,sort=nearest,limit=1] container.0 with minecraft:air

# Tagを削除
    tag @s remove A5.Skill.FrontDashSlash
    tag @s remove A5.Skill.HoloBlock
    tag @s remove A5.Skill.SideDashShot
    tag @s remove A5.Skill.ChargeSlash
    tag @s remove A5.Skill.CordinateLaser
    tag @s remove A5.Skill.RandomTeleportSlash

    tag @s remove A5.Skill.OverHeat

    tag @s remove A5.Dash.Left
    tag @s remove A5.Dash.Right

    tag @s remove A5.DashSkill.DelayLaser
    tag @s remove A5.DashSkill.RapidLaser

    tag @s remove A5.HoloBlock.1
    tag @s remove A5.HoloBlock.2
    tag @s remove A5.HoloBlock.3

    tag @s remove A5.InAction
