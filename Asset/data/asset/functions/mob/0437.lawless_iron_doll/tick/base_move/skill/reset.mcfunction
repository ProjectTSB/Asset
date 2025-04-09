#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/**
#   asset:mob/0437.lawless_iron_doll/hurt/active_50per

# スコアをセット
    scoreboard players set @s General.Mob.Tick -1

# ニュートラルポーズに戻る
#    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_2_activate/tween {to_frame: 0, duration: 1}

# 両手を空にする
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item_display,sort=nearest,limit=1] container.0 with minecraft:air
#    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item_display,sort=nearest,limit=1] container.0 with minecraft:air

# Tagを削除
    tag @s remove C5.Skill.HorizontalSlashShot
    tag @s remove C5.Skill.VerticalSlashShot
    tag @s remove C5.Skill.ChaserShot
    tag @s remove C5.Skill.ShockWave
    tag @s remove C5.Skill.LingeringLaser
    tag @s remove C5.Skill.Charge
    tag @s remove C5.Skill.Walk

    tag @s remove C5.Skill.SuperLaser
    tag @s remove C5.Skill.SuperSlam

    tag @s remove C5.InAction

# ヒットリストを削除
    data remove storage asset:context this.HitList
