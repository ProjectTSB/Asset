#> asset:object/2187.heiloang_ff_main/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2187/init

# 背景用AJ召喚、初期化
    execute positioned as @e[type=marker,tag=BE.CenterPosition] positioned ^ ^24 ^-30 run function animated_java:heiloang_flare_aj/summon {args: {animation: 'spin', start_animation: true}}
    execute as @e[tag=2187.BackGround] on passengers run function asset:object/2187.heiloang_ff_main/init/aj
