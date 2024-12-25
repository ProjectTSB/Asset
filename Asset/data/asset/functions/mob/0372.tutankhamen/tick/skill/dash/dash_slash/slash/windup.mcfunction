#> asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/slash/windup
#
# 斬撃前には構えるものだ
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/

# アニメ
    execute as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_dash_1/tween {to_frame: 0, duration: 5}

# プレイヤーのほうを向く
    execute facing entity @p[distance=..16] feet run tp @s ~ ~ ~ ~ ~

# 演出
    playsound minecraft:entity.breeze.charge hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
