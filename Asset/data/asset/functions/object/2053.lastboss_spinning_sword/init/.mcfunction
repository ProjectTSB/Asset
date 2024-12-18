#> asset:object/2053.lastboss_spinning_sword/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2053/init

# 向きの調整
    execute if data storage asset:context this{Rotation:1} run tp @s ~ ~ ~ 0 ~
    execute if data storage asset:context this{Rotation:2} run tp @s ~ ~ ~ 90 ~
    execute if data storage asset:context this{Rotation:3} run tp @s ~ ~ ~ 180 ~
    execute if data storage asset:context this{Rotation:4} run tp @s ~ ~ ~ 270 ~

    execute if data storage asset:context this{Rotation:5} run tp @s ~ ~ ~ 45 ~
    execute if data storage asset:context this{Rotation:6} run tp @s ~ ~ ~ 135 ~
    execute if data storage asset:context this{Rotation:7} run tp @s ~ ~ ~ 225 ~
    execute if data storage asset:context this{Rotation:8} run tp @s ~ ~ ~ 315 ~

# 逆向き指定されてたら逆に回る
    execute if data storage asset:context this{Reverse:true} run tag @s add 2053.Reverse
