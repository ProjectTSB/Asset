#> asset:artifact/1066.weight_stone/trigger/update_modifier
# @within function
#   asset:artifact/1066.weight_stone/trigger/dis_equip/main
#   asset:artifact/1066.weight_stone/trigger/3.main

# エフェクトをつける
    data modify storage api: Argument.ID set value 218
    execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1066}}}]
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
# リセット
    data remove storage api: Argument.Stack
