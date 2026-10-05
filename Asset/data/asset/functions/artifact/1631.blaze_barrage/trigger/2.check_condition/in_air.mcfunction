#> asset:artifact/1631.blaze_barrage/trigger/2.check_condition/in_air
#
#
#
# @within function asset:artifact/1631.blaze_barrage/trigger/2.check_condition/if

# OnGround:1bなら失敗
    execute if data storage api: {OnGround:1b} run return 0

# 一定以上浮いてないと失敗
    execute unless block ~ ~ ~ #lib:no_collision/without_fluid run return 0
    execute unless block ~ ~-1 ~ #lib:no_collision/without_fluid run return 0
    execute unless block ~ ~-2 ~ #lib:no_collision/without_fluid run return 0
    execute unless block ~ ~-3 ~ #lib:no_collision/without_fluid run return 0

# 成功
    return 1
