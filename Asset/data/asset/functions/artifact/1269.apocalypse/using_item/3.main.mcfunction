#> asset:artifact/1269.apocalypse/using_item/3.main
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/2.check_condition

# チャージのチェック
    function asset:artifact/1269.apocalypse/using_item/check_charge

# 演出
    particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.4 1 0 1
    execute positioned ~ ~1 ~ run function asset:artifact/1269.apocalypse/using_item/vfx


# エフェクトのスタック更新など
    function asset:artifact/1269.apocalypse/using_item/update_stack
