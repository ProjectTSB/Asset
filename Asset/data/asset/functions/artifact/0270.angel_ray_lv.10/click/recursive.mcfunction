#> asset:artifact/0270.angel_ray_lv.10/click/recursive
#
#
#
# @within function
#   asset:artifact/0270.angel_ray_lv.10/click/
#   asset:artifact/0270.angel_ray_lv.10/click/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7I.AngelRay] at @s run function asset:artifact/0270.angel_ray_lv.10/click/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7I.AngelRay,limit=1] run schedule function asset:artifact/0270.angel_ray_lv.10/click/recursive 1t