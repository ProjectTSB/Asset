#> asset:artifact/0266.angel_ray_lv.5/click/ray
#
#
#
# @within function
#   asset:artifact/0266.angel_ray_lv.5/click/
#   asset:artifact/0266.angel_ray_lv.5/click/recursive

# 経過tickの加算
    scoreboard players add @s 7E.HolySymbol 1
# VFX
    function asset:artifact/0266.angel_ray_lv.5/click/vfx/
# 10tickで消える
    execute if score @s 7E.HolySymbol matches 8.. run kill @s