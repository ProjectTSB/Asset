#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/play

# 演出
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge2 hostile @a ~ ~ ~ 2 2
    playsound minecraft:block.portal.travel hostile @a ~ ~ ~ 0.5 2
