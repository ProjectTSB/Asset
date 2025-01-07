#> asset:artifact/1032.life_charm/trigger/add_modifier
#
# 補正を追加する
#
# @within function
#   asset:artifact/1032.life_charm/trigger/3.main
#   asset:artifact/1032.life_charm/trigger/dis_equip/main

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,1032,7]
    function api:modifier/max_health/remove

# 所持数が0ならreturn
    execute unless data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1032}}}] run return 0

# 最大体力+(個数*10%)
    data modify storage api: Argument.UUID set value [I;1,1,1032,7]
    execute store result storage api: Argument.Amount float 0.1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1032}}}]
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add
