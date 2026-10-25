#> asset:object/1191.divine_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1191/tick

# 既に配列が空ならkill
    execute unless data storage asset:context this.List[0] run return run kill @s

# 文字変更
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    function asset:object/1191.divine_thunder/tick/change_char.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp Args
