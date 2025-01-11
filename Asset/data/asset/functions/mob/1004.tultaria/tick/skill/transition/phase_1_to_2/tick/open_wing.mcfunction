#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/open_wing
#
# 翼を出す演出
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# バリアント適用
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/variants/winged/apply

# パーティクル
    particle dust 0.5 0 0 2 ~ ~1 ~ 0.5 0.5 0.5 1 25

# 演出
    playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 0.5
