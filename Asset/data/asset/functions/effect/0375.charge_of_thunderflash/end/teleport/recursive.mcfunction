#> asset:effect/0375.charge_of_thunderflash/end/teleport/recursive
#
#
#
# @within function
#   asset:effect/0375.charge_of_thunderflash/end/teleport/
#   asset:effect/0375.charge_of_thunderflash/end/teleport/recursive

# tp
    tp @s ~ ~ ~ ~ ~

# Range - 1
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# Rangeが0ならreturn
    execute if data storage asset:context this{Range:0} run return fail

# ヒットボックスがブロックに接触したならreturn
    execute unless function asset:effect/0375.charge_of_thunderflash/end/teleport/check_hit_box run return fail

# 再帰
    execute at @s positioned ^ ^ ^0.5 run function asset:effect/0375.charge_of_thunderflash/end/teleport/recursive
