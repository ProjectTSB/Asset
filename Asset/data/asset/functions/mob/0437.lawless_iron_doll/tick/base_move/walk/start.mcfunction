#> asset:mob/0437.lawless_iron_doll/tick/base_move/walk/start
#
# 歩行開始の処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/run/tween {to_frame: 0, duration: 5}
