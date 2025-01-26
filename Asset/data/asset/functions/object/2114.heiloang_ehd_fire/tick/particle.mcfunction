#> asset:object/2114.heiloang_ehd_fire/tick/particle
#
# Objectのtick時の処理
#
# @within asset:object/2114.heiloang_ehd_fire/tick/

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 2 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 2 0.8
    particle flame ~ ~1 ~ 3 1 3 0.1 30 force
    particle lava ~ ~1 ~ 3 1 3 0.1 10 force
    particle explosion ~ ~1 ~ 3 1 3 0.1 10 force
    particle flash ~ ~1 ~ 3 1 3 0.1 5 force

# 終了
    kill @s
