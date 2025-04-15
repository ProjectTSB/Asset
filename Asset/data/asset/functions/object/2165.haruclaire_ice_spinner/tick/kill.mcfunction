#> asset:object/2165.haruclaire_ice_spinner/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2165.haruclaire_ice_spinner/tick/

# 演出
    particle firework ~ ~ ~ 0 0 0 0.5 30
    particle firework ~ ~ ~ 0 0 0 0.1 10
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.8

# 消滅
    kill @s
