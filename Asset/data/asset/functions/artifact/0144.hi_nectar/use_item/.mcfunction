#> asset:artifact/0144.hi_nectar/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/144/use_item/

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    data modify storage lib: Argument.Heal set value 20
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset
