#> asset:artifact/0609.lunar_flare/click/summon_laser_pos
#
#
#
# @within function asset:artifact/0609.lunar_flare/click/find_target_entity

# レーザー照射位置
    summon marker ~ ~ ~ {Tags:["GX.LaserPos","GX.LaserPosFirst","Projectile"]}

# タグ付与
    tag @s add GX.RecursiveEnd