#> asset:object/2261.gem_yeeter_drone/tick/remove
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/

# モデル消去
    execute as @e[type=item_display,tag=2261.Model.Target,distance=..30,sort=nearest,limit=1] run function animated_java:gem_tnt_drone/remove/this

# 自身を消去
    kill @s
