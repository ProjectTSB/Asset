#> asset:object/1061.azure_jelly/tick/attack/check_block/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/attack/attack

# 自身の方を見て再帰
    execute facing entity @s feet run function asset:object/1061.azure_jelly/tick/attack/check_block/recursive

# リセット
    scoreboard players reset $Recursive Temporary

# 失敗
    execute unless data storage asset:temp 1061{Success:true} run return fail

# storageをリセット
    data remove storage asset:temp 1061

# 成功
    return 1
