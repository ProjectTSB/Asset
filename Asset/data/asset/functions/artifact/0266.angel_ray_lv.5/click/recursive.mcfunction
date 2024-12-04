#> asset:artifact/0266.angel_ray_lv.5/click/recursive
#
#
#
# @within function
#   asset:artifact/0266.angel_ray_lv.5/click/
#   asset:artifact/0266.angel_ray_lv.5/click/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7E.HolySymbol] at @s run function asset:artifact/0266.angel_ray_lv.5/click/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7E.HolySymbol,limit=1] run schedule function asset:artifact/0266.angel_ray_lv.5/click/recursive 1t