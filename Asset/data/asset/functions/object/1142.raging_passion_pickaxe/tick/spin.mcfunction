#> asset:object/1142.raging_passion_pickaxe/tick/spin
#
#
#
# @within function asset:object/1142.raging_passion_pickaxe/tick/

# start_interpolation
    data modify entity @s start_interpolation set value 0

# 回転
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin
    execute if data storage asset:context this{Spin:3} run data modify entity @s transformation.left_rotation set value [0.4999f,0.4999f,0.4999f,0.4999f]
    execute if data storage asset:context this{Spin:2} run data modify entity @s transformation.left_rotation set value [0.7071f,0.0f,0.7071f,0.0f]
    execute if data storage asset:context this{Spin:1} run data modify entity @s transformation.left_rotation set value [-0.499f,0.499f,-0.499f,0.499f]
    execute if data storage asset:context this{Spin:0} run data modify entity @s transformation.left_rotation set value [0.0f,0.7071f,0.0f,0.7071f]
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
