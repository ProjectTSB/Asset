#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/windup
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item.child,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20508}
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item.child,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20508}

# アニメ
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_2_right/tween {to_frame: 0, duration: 1}
