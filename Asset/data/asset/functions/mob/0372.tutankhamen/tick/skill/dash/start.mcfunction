#> asset:mob/0372.tutankhamen/tick/skill/dash/start
#
# 共通ダッシュ開始モーション
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/**

# アニメ開始
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash/tween {to_frame: 0, duration: 1}

# 演出
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.7
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 2 1
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50
