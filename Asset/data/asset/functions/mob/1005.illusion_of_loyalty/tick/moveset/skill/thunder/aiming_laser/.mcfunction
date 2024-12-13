#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# マーカー設置
    # 直接エイム
        execute if entity @s[tag=RX.Skill.AimingLaser.Direct] if score @s General.Mob.Tick matches 0 at @p[distance=..64] run summon marker ~ ~1.7 ~ {Tags:["RX.Marker.Aim"]}
    # 偏差エイム
        execute if entity @s[tag=RX.Skill.AimingLaser.Advance] if score @s General.Mob.Tick matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/aim/
    # マーカーの方を向く
        execute if score @s General.Mob.Tick matches 0 anchored eyes facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
        execute if score @s General.Mob.Tick matches 0 run kill @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1]
# 警告
    execute if score @s General.Mob.Tick matches 0..10 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
# エイム射撃
    execute if score @s General.Mob.Tick matches 10..15 positioned ~ ~1.5 ~ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot
# リセット
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/
