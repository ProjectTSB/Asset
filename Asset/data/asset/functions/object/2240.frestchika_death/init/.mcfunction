#> asset:object/2240.frestchika_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2240/init

# Animated Javaのリグを召喚する
    execute at @s rotated ~ 0 run function animated_java:frestchika/summon {args: {animation: 'death', start_animation: true}}

# 演出
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 2 1.5
