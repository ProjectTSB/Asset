#> asset:artifact/0139.soma/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/139/use_item/


# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    data modify storage api: Argument.Fluctuation set value 30
    function api:mp/fluctuation

# HP回復
    data modify storage lib: Argument.Heal set value 6
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset
