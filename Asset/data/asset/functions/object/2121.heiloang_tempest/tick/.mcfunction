#> asset:object/2121.heiloang_tempest/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2121/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃範囲予告
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2121.heiloang_tempest/tick/prediction
# 攻撃
    execute if entity @s[scores={General.Object.Tick=23}] run function asset:object/2121.heiloang_tempest/tick/attack

# 竜巻演出
    execute if entity @s[scores={General.Object.Tick=12..69}] run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=12..69}] on passengers at @s run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={General.Object.Tick=22..49}] run particle explosion ~ ~4 ~ 3 10 3 0.1 3 force
    # Main
        execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,1.0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
        execute if entity @s[scores={General.Object.Tick=4}] run data merge entity @s {interpolation_duration:9,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[8f,2.5f,8f]}}
        execute if entity @s[scores={General.Object.Tick=14}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,1f,12f]}}
        execute if entity @s[scores={General.Object.Tick=19}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]}}
        execute if entity @s[scores={General.Object.Tick=23}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,14f,0f],scale:[8f,13f,8f]}}
        execute if entity @s[scores={General.Object.Tick=45}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,21f,0f],scale:[0f,26f,0f]}}
    # Append
        execute if entity @s[scores={General.Object.Tick=23}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[15f,-1f,15f]}}
        execute if entity @s[scores={General.Object.Tick=31}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:19,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[35f,0f,35f]}}
        execute if entity @s[scores={General.Object.Tick=50}] on passengers if entity @s[type=item_display] run kill @s
    # Text
        execute if entity @s[scores={General.Object.Tick=23}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[5f,6f,5f]}}
        execute if entity @s[scores={General.Object.Tick=39}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[0f,6f,0f]}}
        execute if entity @s[scores={General.Object.Tick=49}] on passengers if entity @s[type=text_display] run kill @s
    execute if entity @s[scores={General.Object.Tick=49}] run data modify entity @s item set value {id:"minecraft:air",Count:1b}

# 消滅処理
    kill @s[scores={General.Object.Tick=65..}]
