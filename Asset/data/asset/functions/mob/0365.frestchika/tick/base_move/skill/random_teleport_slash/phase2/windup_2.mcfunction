#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/windup_2
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_2_windup/tween {to_frame: 0, duration: 1}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
