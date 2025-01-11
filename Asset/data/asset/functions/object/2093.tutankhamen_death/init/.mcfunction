#> asset:object/2093.tutankhamen_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2093/init

# Animated Javaのリグを召喚する
    execute at @s rotated ~ 0 run function animated_java:tutankhamen/summon {args: {animation: 'death', start_animation: true}}

# 演出
    playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 0.5
