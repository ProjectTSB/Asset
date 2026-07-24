#> asset:object/1180.yumeori_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1180/tick

# 消滅処理
    execute unless data storage asset:context this.List[0] run function asset:object/1180.yumeori_vfx/tick/kill

# 適用
    data modify storage asset:temp _.Char set from storage asset:context this.List[-1]
    function asset:object/1180.yumeori_vfx/tick/apply.m with storage asset:temp _
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp _
