#> asset:artifact/0140.hi_soma/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/140/use_item/

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    data modify storage api: Argument.Fluctuation set value 75
    function api:mp/fluctuation

# HP回復
    data modify storage api: Argument.Heal set value 15
    function api:heal/modifier
    function api:heal/

# リセット
    function api:heal/reset
