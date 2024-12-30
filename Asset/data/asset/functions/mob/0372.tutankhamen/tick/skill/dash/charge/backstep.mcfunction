#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/backstep
#
# バックステップ
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/charge/

# プレイヤーのほうを向く
    execute facing entity @p[distance=..64] feet run tp @s ~ ~ ~ ~ 0

# アニメ開始
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash_end/tween {to_frame: 3, duration: 3}

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 1
