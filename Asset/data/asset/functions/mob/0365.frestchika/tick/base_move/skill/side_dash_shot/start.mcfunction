#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/start
#
# 共通ダッシュ開始モーション
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=A5.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20509}
    item replace entity @e[type=item_display,tag=A5.Model.LeftHandItem,sort=nearest,limit=1] container.0 with minecraft:air

# 左右のどっちか選択
    execute store result score @s Temporary run random value 0..1
    execute if score @s Temporary matches 0 run tag @s add A5.Dash.Left
    execute if score @s Temporary matches 1 run tag @s add A5.Dash.Right
    scoreboard players reset @s Temporary

# 移動中に何するか選択
    execute store result score @s Temporary run random value 0..1
    execute if score @s Temporary matches 0 run tag @s add A5.DashSkill.DelayLaser
    execute if score @s Temporary matches 1 run tag @s add A5.DashSkill.RapidLaser
    scoreboard players reset @s Temporary

# アニメーション
    execute if entity @s[tag=A5.Dash.Left,tag=A5.DashSkill.DelayLaser] as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_left_gun/tween {to_frame: 0, duration: 2}
    execute if entity @s[tag=A5.Dash.Right,tag=A5.DashSkill.DelayLaser] as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_right_gun/tween {to_frame: 0, duration: 2}
    execute if entity @s[tag=A5.Dash.Left,tag=A5.DashSkill.RapidLaser] as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_left/tween {to_frame: 0, duration: 2}
    execute if entity @s[tag=A5.Dash.Right,tag=A5.DashSkill.RapidLaser] as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_right/tween {to_frame: 0, duration: 2}

# 演出
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.7
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 2 1
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50
