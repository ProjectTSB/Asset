#> asset:object/2070.potion/tick/poison/give
#
#
#
# @within function asset:object/2070.potion/tick/poison/tick

# 毒があるかチェック
    data modify storage api: Argument.ID set value 29
    function api:entity/mob/effect/get/from_id

# 毒があればreturn
    execute if data storage api: Return.Effect run return fail

    data modify storage api: Argument.ID set value 79
    function api:entity/mob/effect/get/from_id

# 毒があればreturn
    execute if data storage api: Return.Effect run return fail

# 毒がなければ毒を付与
    data modify storage api: Argument.ID set value 29
    data modify storage api: Argument.Stack set from storage asset:context this.Poison.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Poison.Duration
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
