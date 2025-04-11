#> asset:object/2159.haruclaire_ic_capricorn/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2159.haruclaire_ic_capricorn/tick/

# ajモデル消去
    execute on passengers run function animated_java:ic_capri_aj/remove/this

# 自身を消去
    kill @s

# 演出
    particle block ice ~ ~1 ~ 1 1 1 0 40
    particle end_rod ~ ~1 ~ 1 1 1 0.3 10
    particle firework ~ ~1 ~ 1 1 1 0.3 10
    particle flash ~ ~2 ~ 0 0 0 0 1
    particle dust 0.902 0.902 1 3 ~ ~2 ~ 1 1 1 0 10
    particle dust 0.635 0.898 1 3 ~ ~1 ~ 1 1 1 0 10
    playsound block.glass.break hostile @a ~ ~ ~ 1 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.8
