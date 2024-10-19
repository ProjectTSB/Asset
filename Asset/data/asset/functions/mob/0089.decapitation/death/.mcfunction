#> asset:mob/0089.decapitation/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/89/death

# 骨をばらまく
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.0,0.5,-0.4],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.4],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[0.4,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}
    summon item ~ ~ ~ {Motion:[-0.4,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}
