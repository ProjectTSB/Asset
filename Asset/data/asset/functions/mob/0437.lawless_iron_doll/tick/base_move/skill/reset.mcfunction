#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/**
#   asset:mob/0437.lawless_iron_doll/hurt/active_50per

# スコアをセット
    scoreboard players set @s General.Mob.Tick -1

# アニメ再生しておく
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# 両手を空にする
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item_display,sort=nearest,limit=1] container.0 with minecraft:air
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item_display,sort=nearest,limit=1] container.0 with minecraft:air

# Tagを削除
    tag @s remove C5.Skill.FrontDashSlash
    tag @s remove C5.Skill.HoloBlock
    tag @s remove C5.Skill.SideDashShot
    tag @s remove C5.Skill.ChargeSlash
    tag @s remove C5.Skill.CordinateLaser
    tag @s remove C5.Skill.RandomTeleportSlash

    tag @s remove C5.Skill.OverHeat

    tag @s remove C5.Dash.Left
    tag @s remove C5.Dash.Right

    tag @s remove C5.DashSkill.DelayLaser
    tag @s remove C5.DashSkill.RapidLaser

    tag @s remove C5.HoloBlock.1
    tag @s remove C5.HoloBlock.2
    tag @s remove C5.HoloBlock.3

    tag @s remove C5.InAction
