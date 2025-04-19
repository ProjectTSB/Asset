#> asset:mob/1005.illusion_of_loyalty/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1005/tick

# モデルにタグ付与
    tag @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] add RX.ModelRoot.Target

# Tick加算
    scoreboard players add @s[tag=RX.InAction] General.Mob.Tick 1

# スキル
    # エイミングレーザー
        execute if entity @s[tag=RX.Skill.AimingLaser] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
    # ソードスピン
        execute if entity @s[tag=RX.Skill.SwordSpin] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/
    # ホーミングショット
        execute if entity @s[tag=RX.Skill.HomingShot] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/homing_shot/
    # メテオレイン
        execute if entity @s[tag=RX.Skill.MeteorRain] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/
    # ブレイジングスラッシュ
        execute if entity @s[tag=RX.Skill.BlazingSlash] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/
    # サンダーレイ
        execute if entity @s[tag=RX.Skill.Thunder] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/

# テレポート
    execute if entity @s[tag=RX.Move.Teleport] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/

# 演出
    particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0 2

# 向きは変えないにしても、モデルは自分の場所に持ってくる
    execute at @s as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# モデルをプレイヤーに向ける
    execute at @s[tag=!RX.InAction] as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0

# リセット
    tag @e[type=item_display,tag=RX.ModelRoot.Target] remove RX.ModelRoot.Target

# super
    function asset:mob/super.tick
