#> asset:object/1183.voltage_effect/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1183/tick

# 消滅処理
    execute unless data storage asset:context this.List[0] run kill @s

# 適用
    data modify storage asset:temp _.Char set from storage asset:context this.List[-1]
    function asset:object/1183.voltage_effect/tick/apply_char.m with storage asset:temp _
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp _
