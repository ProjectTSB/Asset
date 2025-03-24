#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/windup
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_windup/tween {to_frame: 0, duration: 1}

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.right_item.child,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20507}
    item replace entity @e[type=item_display,tag=aj.frestchika.bone.left_item.child,sort=nearest,limit=1] container.0 with minecraft:air

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
