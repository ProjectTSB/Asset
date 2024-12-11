#> asset:mob/1005.illusion_of_loyalty/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1005/tick

# モデルにタグ付与
    tag @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] add RX.ModelRoot.Target

# スキル
    # エイミングレーザー
        execute if entity @s[tag=RX.Skill.AimingLaser] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
    # ソードスピン
        execute if entity @s[tag=RX.Skill.SwordSpin] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/
    # ホーミングショット
        execute if entity @s[tag=RX.Skill.HomingShot] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/

# テレポート
    execute if entity @s[tag=RX.Move.Teleport] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/

# 演出
    particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0 2
    particle minecraft:electric_spark ~ ~3 ~ 0.2 0.2 0.2 0 2 force

# 最寄りのモデルのRootを自身の座標にもってくる
#    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] at @s run tp @s ~ ~ ~

# モデルをプレイヤーに向ける
    execute at @s as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# リセット
    tag @e[type=item_display,tag=RX.ModelRoot.Target] remove RX.ModelRoot.Target
