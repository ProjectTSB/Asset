#> asset:artifact/0898.gale_pendant/trigger/buff/update
#
# バフを付与する
#
# @within function asset:artifact/0898.gale_pendant/trigger/**main

# 個数が0ならreturnしてバフを解除する
    execute unless data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:898}}}] run return run function asset:artifact/0898.gale_pendant/trigger/buff/remove

# 疾風の加護(ID:261)を付与する
# Stack = 所持数
    data modify storage api: Argument.ID set value 261
    execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:898}}}]
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
