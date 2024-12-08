#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/base

# Tick加算
    scoreboard players add @s General.Mob.Tick 1

# 射撃モードの決定
    execute if score @s General.Mob.Tick matches 0 store result score @s Temporary run random value 0..1
    execute if score @s General.Mob.Tick matches 0 if score @s Temporary matches 0 run tag @s add RX.Skill.AimingLasser.Direct
    execute if score @s General.Mob.Tick matches 0 if score @s Temporary matches 1 run tag @s add RX.Skill.AimingLasser.Advance

# マーカー設置
    # 直接エイム
        execute if entity @s[tag=RX.Skill.AimingLasser.Direct] if score @s General.Mob.Tick matches 0 at @p[distance=..30] anchored eyes rotated ~ 0 positioned ^ ^-1 ^ run summon marker ~ ~ ~ {Tags:["RX.Marker.Aim"]}
    # 偏差エイム
        execute if entity @s[tag=RX.Skill.AimingLasser.Advance] if score @s General.Mob.Tick matches 0 facing entity @p eyes run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/aim/
# 警告
    execute if score @s General.Mob.Tick matches 0..5 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
# エイム射撃
    execute if score @s General.Mob.Tick matches 5..10 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot
# マーカーキル
    execute if score @s General.Mob.Tick matches 10 run kill @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1]
# リセット
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset
