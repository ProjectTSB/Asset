#> asset:artifact/1066.weight_stone/equip/update_modifier
# @within function
#   asset:artifact/1066.weight_stone/equip/dis_equip/main
#   asset:artifact/1066.weight_stone/equip/

# エフェクトをつける
    data modify storage api: Argument.ID set value 218
    execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1066}}}]
    execute if data storage api: Argument{Stack:0} run function api:entity/mob/effect/remove/from_id
    execute unless data storage api: Argument{Stack:0} run function api:entity/mob/effect/give
# リセット
    data remove storage api: Argument.Stack
