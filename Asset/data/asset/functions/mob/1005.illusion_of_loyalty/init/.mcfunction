#> asset:mob/1005.illusion_of_loyalty/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1005/init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:illusion_of_loyalty/summon {args:{animation:neutral_air,start_animation:1b}}

# super
    function asset:mob/super.init
