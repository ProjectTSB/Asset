#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/windup
#
# 予備動作、というか開始時の動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_slam/tween {to_frame: 0, duration: 1}

# 落下地点となるマーカーを置く
    summon marker ~ ~ ~ {Tags:["C5.Marker","C5.Marker.SlamPoint"]}

# サウンド
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5
