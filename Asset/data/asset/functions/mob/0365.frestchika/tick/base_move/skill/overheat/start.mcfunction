#> asset:mob/0365.frestchika/tick/base_move/skill/overheat/start
#
# 最初。モクモクする。
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/overheat/

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/break/tween {to_frame: 0, duration: 1}

# 演出
    playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 2 1
