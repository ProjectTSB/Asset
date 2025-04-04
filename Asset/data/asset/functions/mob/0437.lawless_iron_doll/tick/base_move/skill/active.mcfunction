#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# 技リスト
    execute if entity @s[tag=C5.Skill.HorizontalSlashShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick
    execute if entity @s[tag=C5.Skill.Charge] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick
    execute if entity @s[tag=C5.Skill.VerticalSlashShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick
    execute if entity @s[tag=C5.Skill.ChaserShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick
    execute if entity @s[tag=C5.Skill.MistShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/mist_shot/tick


# フェイズ2でTick処理変わるやつ
#    execute if entity @s[tag=C5.Skill.ChargeSlash,scores={C5.Phase=1}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/
#    execute if entity @s[tag=C5.Skill.ChargeSlash,scores={C5.Phase=2..}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/phase2
#    execute if entity @s[tag=C5.Skill.RandomTeleportSlash,scores={C5.Phase=1}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/random_teleport_slash/
#    execute if entity @s[tag=C5.Skill.RandomTeleportSlash,scores={C5.Phase=2..}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/random_teleport_slash/phase2/
#    execute if entity @s[tag=C5.Skill.CordinateLaser,scores={C5.Phase=1}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/cordinate_laser/
#    execute if entity @s[tag=C5.Skill.CordinateLaser,scores={C5.Phase=2..}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/cordinate_laser/phase2
