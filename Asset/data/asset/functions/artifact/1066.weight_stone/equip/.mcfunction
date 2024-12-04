#> asset:artifact/1066.weight_stone/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1066/equip/


# 演出
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.stone.break player @a[distance=..5] ~ ~ ~ 1 0
    playsound block.gravel.break player @a[distance=..5] ~ ~ ~ 0.8 0 0
    particle block stone ~ ~0.2 ~ 0.4 0 0.4 0 30 normal

# エフェクトを更新
    function asset:artifact/1066.weight_stone/equip/update_modifier
