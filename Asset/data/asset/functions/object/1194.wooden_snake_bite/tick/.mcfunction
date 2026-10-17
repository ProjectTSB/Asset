#> asset:object/1194.wooden_snake_bite/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1194/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 既に配列が空ならkill
    execute unless data storage asset:context this.List[0] run return run kill @s

# 文字変更
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    function asset:object/1194.wooden_snake_bite/tick/change_char.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]

#攻撃処理
    execute if score @s General.Object.Tick matches 6 run function asset:object/1194.wooden_snake_bite/tick/attack
    
# リセット
    data remove storage asset:temp Args
