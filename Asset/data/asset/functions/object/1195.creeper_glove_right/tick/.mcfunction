#> asset:object/1195.creeper_glove_right/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1195/tick

# 経過時間を数える
    scoreboard players add @s General.Object.Tick 1

# 所有者がいなければ消滅する
    execute unless function asset:object/1195.creeper_glove_right/tick/owner run return run function asset:object/1195.creeper_glove_right/kill/

# 状態ごとの処理
    function asset:object/1195.creeper_glove_right/tick/main

# リセット
    tag @a[tag=1195.Owner,distance=..16] remove 1195.Owner
    data remove storage asset:temp 1195
    scoreboard players reset $1195.SwingStart Temporary
    scoreboard players reset $1195.ArcT Temporary
    scoreboard players reset $1195.Expired Temporary
