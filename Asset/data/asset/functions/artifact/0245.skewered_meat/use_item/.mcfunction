#> asset:artifact/0245.skewered_meat/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/245/use_item/


# 回復
    data modify storage lib: Argument.Heal set value 30f
    function lib:heal/modifier
    function lib:heal/
    function lib:heal/reset

# 演出
    tellraw @s {"text":"─── んまいっ！","bold":true}
    particle minecraft:heart ~ ~1.3 ~ 0.25 0.25 0.25 1 7