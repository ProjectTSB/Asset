#> asset:object/2257.thunder_object/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2257/tick

# 消滅処理
    execute unless data storage asset:context this.List[0] run kill @s

# 適用
    data modify storage asset:temp _.Char set from storage asset:context this.List[-1]
    function asset:object/2257.thunder_object/tick/change_char.m with storage asset:temp _
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp _
