#> asset:artifact/1066.weight_stone/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1066.weight_stone/trigger/dis_equip/

# 演出
    playsound block.gravel.break player @a[distance=..5] ~ ~ ~ 1 1.7
    playsound block.gravel.break player @a[distance=..5] ~ ~ ~ 1 1.7

# エフェクトを消す
    function asset:artifact/1066.weight_stone/trigger/update_modifier
