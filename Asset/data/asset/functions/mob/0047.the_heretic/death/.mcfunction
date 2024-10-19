#> asset:mob/0047.the_heretic/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/47/death

# 演出
 particle minecraft:poof ~ ~1 ~ 0 0 0 0.3 50
 playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.4
