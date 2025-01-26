#> asset:object/2056.tultaria_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2056/init

# Animated Javaのリグを召喚する
    execute at @s rotated ~ 0 run function animated_java:tultaria/summon {args: {animation: 'death', variant: 'winged',start_animation: true}}

# AJは召喚時に複数のバリアントを設定できないので、顔のバリアントはここで設定
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/variants/face_eyeclose/apply
