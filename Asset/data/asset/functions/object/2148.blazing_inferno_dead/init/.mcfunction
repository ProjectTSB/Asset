#> asset:object/2148.blazing_inferno_dead/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2148/init

# Animated Javaのリグを召喚する
    execute at @s rotated ~ 0 run function animated_java:blazing_inferno/summon {args: {animation: 'death_loop', start_animation: true}}
