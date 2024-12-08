#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# 射撃モードの決定
#    execute if score @s General.Mob.Tick matches 0 store result score @s Temporary run random value 0..1
#    execute if score @s General.Mob.Tick matches 0 if score @s Temporary matches 0 run tag @s add RX.Skill.AimingLaser.Direct
#    execute if score @s General.Mob.Tick matches 0 if score @s Temporary matches 1 run tag @s add RX.Skill.AimingLaser.Advance

# マーカー設置
    # 直接エイム
        execute if entity @s[tag=RX.Skill.AimingLaser.Direct] if score @s General.Mob.Tick matches 0 at @p[distance=..30] anchored eyes rotated ~ 0 positioned ^ ^-1 ^ run summon marker ~ ~ ~ {Tags:["RX.Marker.Aim"]}
    # 偏差エイム
        execute if entity @s[tag=RX.Skill.AimingLaser.Advance] if score @s General.Mob.Tick matches 0 facing entity @p eyes run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/aim/
# 警告
    execute if score @s General.Mob.Tick matches 0..10 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
# エイム射撃
    execute if score @s General.Mob.Tick matches 10..15 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot
# マーカーキル: なんでか知らないけどマーカーが余るので全部消したいが、リミットなしは危険かなって
    execute if score @s General.Mob.Tick matches 15 run kill @e[type=marker,tag=RX.Marker.Aim,distance=..64,sort=nearest,limit=10]
# リセット
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset

# Tick加算
    scoreboard players add @s General.Mob.Tick 1
