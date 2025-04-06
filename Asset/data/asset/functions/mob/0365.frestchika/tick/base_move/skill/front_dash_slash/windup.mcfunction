#> asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/windup
#
# 予備動作
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/

# プレイヤーのほうを向く
    execute facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ 0

# アニメ開始
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..0.1,sort=nearest,limit=1] run function animated_java:frestchika/animations/dash_windup/tween {to_frame: 3, duration: 3}
