#> asset:mob/1005.illusion_of_loyalty/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1005/death

# モデルを消す
    execute as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/remove/this

# 演出
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.7
    particle minecraft:end_rod ~ ~1 ~ 0.2 0.5 0.2 0.1 25

# super
    function asset:mob/super.death
