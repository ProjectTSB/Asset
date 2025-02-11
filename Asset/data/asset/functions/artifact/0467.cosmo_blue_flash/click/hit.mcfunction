#> asset:artifact/0467.cosmo_blue_flash/click/hit
#
# 着弾処理
#
# @within function asset:artifact/0467.cosmo_blue_flash/click/

# 演出
    particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force
    playsound block.bubble_column.upwards_inside player @a ~ ~ ~ 1.0 1.0
    particle minecraft:scrape ~ ~1 ~ 0 0 0 10 100

# ダメージ
    data modify storage api: Argument.Damage set value 1250f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=this] run function api:damage/modifier
    execute positioned ~-1.4 ~-1.4 ~-1.4 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1.8,dy=1.8,dz=1.8] run function api:damage/

# リセット
    function api:damage/reset
    tag @s remove CZ.HitEntity
