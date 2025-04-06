#> asset:object/2247.lawless_iron_giant_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2247/init

# Animated Javaのリグを召喚する
    execute at @s rotated ~ 0 run function animated_java:lawless_iron_doll/summon {args: {animation: 'death', start_animation: true}}
