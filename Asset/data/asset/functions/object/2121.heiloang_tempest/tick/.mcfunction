#> asset:object/2121.heiloang_tempest/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2121/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if entity @s[tag=2121.Attack] run scoreboard players add @s 2121.AttackTick 1

# 攻撃
    execute if entity @s[tag=!2121.Attack,scores={General.Object.Tick=144}] run tag @s add 2121.StartAttack
    execute if entity @s[tag=!2121.Attack,scores={General.Object.Tick=145..}] run particle gust ~ ~ ~ 0.3 0.3 0.3 0.1 1
    execute if entity @s[tag=!2121.Attack,scores={General.Object.Tick=145..}] run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 3
    execute if entity @s[tag=!2121.Attack,scores={General.Object.Tick=145..}] if predicate lib:random_pass_per/10 run particle explosion ~ ~0.5 ~ 0.3 0.3 0.3 0.5 1
    execute if entity @s[tag=!2121.Attack,scores={General.Object.Tick=145..}] if entity @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function asset:object/2121.heiloang_tempest/tick/attack
    execute if entity @s[scores={2121.AttackTick=2}] run function asset:object/2121.heiloang_tempest/tick/effect

# 竜巻演出
    execute at @s run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={2121.AttackTick=1..69}] on passengers at @s run tp @s ~ ~ ~ ~-30 ~
    execute if entity @s[scores={2121.AttackTick=2..29}] run particle explosion ~ ~4 ~ 4 10 4 0.1 5 force
    # Prediction
        execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,1.0f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
        execute if entity @s[scores={General.Object.Tick=4}] run data merge entity @s {interpolation_duration:20,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[4f,0.5f,4f]}}
        execute if entity @s[scores={General.Object.Tick=40}] run data merge entity @s {interpolation_duration:20,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[3f,0.8f,3f]}}
        execute if entity @s[scores={General.Object.Tick=80}] run data merge entity @s {interpolation_duration:20,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[4f,0.5f,4f]}}
        execute if entity @s[scores={General.Object.Tick=130}] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,0.0f,0f]}}
        execute if entity @s[scores={General.Object.Tick=140}] run data merge entity @s {interpolation_duration:8,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,1f,4f]}}
    # Main
        execute if entity @s[scores={2121.AttackTick=1}] run data merge entity @s {interpolation_duration:2,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,1f,3f]}}
        execute if entity @s[scores={2121.AttackTick=3}] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,18f,0f],scale:[12f,13f,12f]}}
        execute if entity @s[scores={2121.AttackTick=25}] run data merge entity @s {interpolation_duration:4,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,25f,0f],scale:[0f,26f,0f]}}
    # Append
        execute if entity @s[scores={2121.AttackTick=1}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[25f,-1f,25f]}}
        execute if entity @s[scores={2121.AttackTick=11}] on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:19,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[40f,0f,40f]}}
        execute if entity @s[scores={2121.AttackTick=30}] on passengers if entity @s[type=item_display] run kill @s
    # Text
        execute if entity @s[scores={2121.AttackTick=1}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:5,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,18f,0f],scale:[12f,13f,12f]}}
        execute if entity @s[scores={2121.AttackTick=19}] on passengers if entity @s[type=text_display] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,26f,0f],scale:[0f,26f,0f]}}
        execute if entity @s[scores={2121.AttackTick=29}] on passengers if entity @s[type=text_display] run kill @s
    execute if entity @s[scores={2121.AttackTick=29}] run data modify entity @s item set value {id:"minecraft:air",Count:1b}

# 消滅処理
    kill @s[scores={General.Object.Tick=800..}]
    kill @s[scores={2121.AttackTick=31..}]
