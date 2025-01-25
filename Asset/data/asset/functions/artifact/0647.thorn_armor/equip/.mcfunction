#> asset:artifact/0647.thorn_armor/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/647/equip/


# 本来ならここにフルセット被ダメージ時の処理を置いて置くべきだと思うけど、流石に装備だし...となっているので
# 被ダメージ時トリガーは別に使っています ダメなようならレビューしてください

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,647,5]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,647,5]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 演出
    particle dust 0 0.2 0 1 ~ ~1.3 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound minecraft:block.sweet_berry_bush.place player @a ~ ~ ~ 1 1 0

# フルセット
    execute if data storage asset:context id.all{head:646,chest:647,legs:648,feet:649} run function asset:artifact/0647.thorn_armor/equip/4.fullset
