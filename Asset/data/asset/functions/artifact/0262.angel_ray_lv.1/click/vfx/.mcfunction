#> asset:artifact/0262.angel_ray_lv.1/click/vfx/
#
#
#
# @within function asset:artifact/0262.angel_ray_lv.1/click/ray

execute if score @s 7A.AngelRay matches 1..5 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/line
execute if score @s 7A.AngelRay matches 2..4 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/line
execute if score @s 7A.AngelRay matches 3..3 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/line_2
execute if score @s 7A.AngelRay matches 3..3 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/line_2

execute if score @s 7A.AngelRay matches 3..3 positioned ^ ^ ^3.0 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/ripple_small
execute if score @s 7A.AngelRay matches 3..3 positioned ^ ^ ^4.0 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/ripple_large
execute if score @s 7A.AngelRay matches 3..3 positioned ^ ^ ^5.0 run function asset:artifact/0262.angel_ray_lv.1/click/vfx/ripple_small