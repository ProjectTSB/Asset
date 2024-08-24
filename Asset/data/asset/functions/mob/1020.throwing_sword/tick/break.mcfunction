#> asset:mob/1020.throwing_sword/tick/break
#
# 消えるときの処理
#
# @within function asset:mob/1020.throwing_sword/tick/2.tick

# 演出
    playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 2 1
    particle minecraft:firework ~ ~ ~ 0 0 0 0.2 25

# キル
    kill @s