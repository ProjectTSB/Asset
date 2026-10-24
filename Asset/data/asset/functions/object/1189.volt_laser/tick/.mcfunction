#> asset:object/1189.volt_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1189/tick

# 既に配列が空ならkill
    execute unless data storage asset:context this.List[0] run return run function asset:object/1189.volt_laser/tick/kill

# 文字変更
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    function asset:object/1189.volt_laser/tick/change_char.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]

# リセット
    data remove storage asset:temp Args
