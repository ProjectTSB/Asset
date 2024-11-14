#> asset:mob/0254.headless/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/254/death

# 演出
    playsound minecraft:entity.creeper.hurt hostile @a ~ ~ ~ 1 0.5
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.3 50
