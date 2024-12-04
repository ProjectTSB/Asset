#> asset:artifact/0262.angel_ray_lv.1/click/ray
#
#
#
# @within function
#   asset:artifact/0262.angel_ray_lv.1/click/
#   asset:artifact/0262.angel_ray_lv.1/click/recursive

# 経過tickの加算
    scoreboard players add @s 7A.AngelRay 1
# VFX
    function asset:artifact/0262.angel_ray_lv.1/click/vfx/
# 10tickで消える
    execute if score @s 7A.AngelRay matches 8.. run kill @s