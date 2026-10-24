#> asset:object/2275.aurora_jump/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2275/tick

# apply
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    execute if data storage asset:temp Args.Char run function asset:object/2275.aurora_jump/tick/apply.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]

# データがなければkill
    execute unless data storage asset:temp Args.Char run function asset:object/2275.aurora_jump/tick/kill

# リセット
    data remove storage asset:temp Args
