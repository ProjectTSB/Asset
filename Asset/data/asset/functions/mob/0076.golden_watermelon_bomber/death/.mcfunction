#> asset:mob/0076.golden_watermelon_bomber/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/76/death

# 演出
    particle block melon ~ ~1.3 ~ 0.3 0.5 0.3 0 40 normal @a
    particle dust 1 0.941 0.141 1 ~ ~1.2 ~ 1 1 1 0 20 normal @a
    particle explosion ~ ~1.5 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1 0

# スイカ設置
    execute if predicate api:area/is_breakable run fill ~ ~ ~ ~ ~ ~ melon replace #lib:air
