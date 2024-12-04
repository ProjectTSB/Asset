#> asset:artifact/0772.dolphin_amulet/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/772/tick/

# 演出
    particle dolphin ~ ~ ~ 1 1 1 0 140 normal @a

# 確率で音
    execute if predicate lib:random_pass_per/15 run playsound entity.dolphin.ambient_water neutral @s ~ ~ ~ 0.4 1 0

# エフェクト
    effect give @s dolphins_grace 11 0 true
    effect give @s water_breathing 11 0 true
