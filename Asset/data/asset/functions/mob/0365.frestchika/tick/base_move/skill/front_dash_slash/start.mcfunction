#> asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/start
#
# 共通ダッシュ開始モーション
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_start/tween {to_frame: 0, duration: 2}

# 演出
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.7
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 2 1
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50

# 両手のアイテムを変更
    item replace entity @e[type=item_display,tag=A5.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20507}
    item replace entity @e[type=item_display,tag=A5.Model.LeftHandItem,sort=nearest,limit=1] container.0 with minecraft:air
