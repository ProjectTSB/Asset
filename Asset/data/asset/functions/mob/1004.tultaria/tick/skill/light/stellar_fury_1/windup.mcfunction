#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# アニメ停止
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/pause_all

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/play
