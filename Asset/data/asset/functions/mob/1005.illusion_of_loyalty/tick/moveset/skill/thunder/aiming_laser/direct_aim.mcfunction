#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/direct_aim
#
# 自機狙い
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/

# 直接狙う
    # マーカー設置
        execute if score @s General.Mob.Tick matches 0 at @p[gamemode=!spectator,distance=..30] anchored eyes rotated ~ 0 positioned ^ ^-1 ^ run summon marker ~ ~ ~ {Tags:["RX.Marker.Aim"]}
    # 警告
        execute if score @s General.Mob.Tick matches 0..5 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/alert
    # エイム射撃
        execute if score @s General.Mob.Tick matches 5..10 positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1] eyes run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/laser/shoot
    # マーカーキル
        execute if score @s General.Mob.Tick matches 10 run kill @e[type=marker,tag=RX.Marker.Aim,sort=nearest,limit=1]
