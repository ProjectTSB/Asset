#> asset:object/2117.heiloang_tornado/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2117/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2117.heiloang_tornado/tick/prediction

# 吸引
    execute if entity @s[scores={General.Object.Tick=..38}] run function asset:object/2117.heiloang_tornado/tick/move_0
    execute if entity @s[scores={General.Object.Tick=39..60}] if predicate api:global_vars/difficulty/max/normal run function asset:object/2117.heiloang_tornado/tick/move_0
    execute if entity @s[scores={General.Object.Tick=39..60}] if predicate api:global_vars/difficulty/min/3_blessless run function asset:object/2117.heiloang_tornado/tick/move_1
# ダメージ
    execute if entity @s[scores={General.Object.Tick=61}] run function asset:object/2117.heiloang_tornado/tick/attack

# 竜巻演出
    execute if entity @s[scores={General.Object.Tick=22..179}] run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=62..179}] on passengers at @s run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=62..79}] run particle explosion ~ ~4 ~ 3 10 3 0.1 3 force
    # Main
        execute if entity @s[scores={General.Object.Tick=22}] run data merge entity @s {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,1.0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
        execute if entity @s[scores={General.Object.Tick=23}] run data merge entity @s {interpolation_duration:20,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[12f,2.5f,12f]}}
        execute if entity @s[scores={General.Object.Tick=43}] run data merge entity @s {interpolation_duration:16,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,1f,12f]}}
        execute if entity @s[scores={General.Object.Tick=59}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]}}
        execute if entity @s[scores={General.Object.Tick=63}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,18f,0f],scale:[12f,13f,12f]}}
        execute if entity @s[scores={General.Object.Tick=75}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,29f,0f],scale:[0f,26f,0f]}}
    # Append
        execute if entity @s[scores={General.Object.Tick=63}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[20f,-1f,20f]}}
        execute if entity @s[scores={General.Object.Tick=69}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:21,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[50f,0f,50f]}}
        execute if entity @s[scores={General.Object.Tick=90}] on passengers if entity @s[type=item_display] run kill @s
        # execute if entity @s[scores={General.Object.Tick=90}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3f,0f],scale:[-50f,0f,-50f]}}
        # execute if entity @s[scores={General.Object.Tick=95}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:20,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3f,0f],scale:[-50f,30f,-50f]}}
        # execute if entity @s[scores={General.Object.Tick=165}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-3f,0f],scale:[-50f,0f,-50f]}}
        # execute if entity @s[scores={General.Object.Tick=175}] on passengers if entity @s[type=item_display] run kill @s
    # Text
        execute if entity @s[scores={General.Object.Tick=63}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[6f,6f,6f]}}
        execute if entity @s[scores={General.Object.Tick=69}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[0f,6f,0f]}}
        execute if entity @s[scores={General.Object.Tick=79}] on passengers if entity @s[type=text_display] run kill @s
    execute if entity @s[scores={General.Object.Tick=79}] run data modify entity @s item set value {id:"minecraft:air",Count:1b}

# 浮遊演出
    execute if entity @s[scores={General.Object.Tick=75..179}] run function asset:object/2117.heiloang_tornado/tick/particle
    execute if entity @s[scores={General.Object.Tick=62}] run function asset:object/2117.heiloang_tornado/tick/particle_ring
    execute if entity @s[scores={General.Object.Tick=64}] run function asset:object/2117.heiloang_tornado/tick/particle_ring
    execute if entity @s[scores={General.Object.Tick=66}] run function asset:object/2117.heiloang_tornado/tick/particle_ring

# 消滅処理
    kill @s[scores={General.Object.Tick=180..}]
