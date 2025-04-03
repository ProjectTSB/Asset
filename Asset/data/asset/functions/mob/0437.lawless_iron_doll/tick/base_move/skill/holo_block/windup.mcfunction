#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/holo_block/windup
#
# 最初の動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/holo_block/

# パターン決定
    execute store result score @s Temporary run random value 0..2
    execute if score @s Temporary matches 0 run tag @s add C5.HoloBlock.1
    execute if score @s Temporary matches 1 run tag @s add C5.HoloBlock.2
    execute if score @s Temporary matches 2 run tag @s add C5.HoloBlock.3
    scoreboard players reset @s Temporary

# アニメーション
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_2_left/tween {to_frame: 0, duration: 1}

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item_display,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20508}
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item_display,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20508}
