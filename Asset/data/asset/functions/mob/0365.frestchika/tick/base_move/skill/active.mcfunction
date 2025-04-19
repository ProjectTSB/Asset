#> asset:mob/0365.frestchika/tick/base_move/skill/active
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/

# 技リスト
    execute if entity @s[tag=A5.Skill.SideDashShot] run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/
    execute if entity @s[tag=A5.Skill.FrontDashSlash] run function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/
    execute if entity @s[tag=A5.Skill.HoloBlock] run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/
    execute if entity @s[tag=A5.Skill.OverHeat] run function asset:mob/0365.frestchika/tick/base_move/skill/overheat/

# フェイズ2でTick処理変わるやつ
    execute if entity @s[tag=A5.Skill.ChargeSlash,scores={A5.Phase=1}] run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/
    execute if entity @s[tag=A5.Skill.ChargeSlash,scores={A5.Phase=2..}] run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2
    execute if entity @s[tag=A5.Skill.RandomTeleportSlash,scores={A5.Phase=1}] run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/
    execute if entity @s[tag=A5.Skill.RandomTeleportSlash,scores={A5.Phase=2..}] run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/
    execute if entity @s[tag=A5.Skill.CordinateLaser,scores={A5.Phase=1}] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
    execute if entity @s[tag=A5.Skill.CordinateLaser,scores={A5.Phase=2..}] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2
