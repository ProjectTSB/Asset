#> asset:artifact/0899.flame_ring/trigger/add_modifier
#
#
#
# @within function asset:artifact/0899.flame_ring/trigger/**main

#> 個数
# @private
#declare score_holder $Count

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,899,7]
    function api:modifier/attack/base/remove
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:899}}}]

    data modify storage api: Argument.UUID set value [I;1,1,899,7]
    execute store result storage api: Argument.Amount double 0.03 run scoreboard players get $Count Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add

# リセット
    scoreboard players reset $Count Temporary
