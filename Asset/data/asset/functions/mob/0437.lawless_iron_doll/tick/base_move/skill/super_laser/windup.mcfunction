#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/windup
#
# 予備動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_2_windup/tween {to_frame: 0, duration: 1}

# サウンド
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:block.portal.trigger hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 1.2

# パーティクル
    particle minecraft:portal ~ ~1.5 ~ 0 0 0 5 1000 force @a[distance=..64]
    particle minecraft:dust 0.8 0 1 2 ~ ~1.5 ~ 1 1 1 1 100 force @a[distance=..64]
