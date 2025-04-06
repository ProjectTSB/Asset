#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# 技リスト
    execute if entity @s[tag=C5.Skill.HorizontalSlashShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick
    execute if entity @s[tag=C5.Skill.Charge] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick
    execute if entity @s[tag=C5.Skill.VerticalSlashShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/tick
    execute if entity @s[tag=C5.Skill.ShockWave] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick
    execute if entity @s[tag=C5.Skill.ChaserShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick
    execute if entity @s[tag=C5.Skill.MistShot] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/mist_shot/tick

    execute if entity @s[tag=C5.Skill.SuperSlam] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick
    execute if entity @s[tag=C5.Skill.SuperLaser] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

    execute if entity @s[tag=C5.Skill.Walk] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/breathing_walk/tick
