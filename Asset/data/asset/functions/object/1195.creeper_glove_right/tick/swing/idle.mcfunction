#> asset:object/1195.creeper_glove_right/tick/swing/idle
#
# 待機処理
#
# @within function asset:object/1195.creeper_glove_right/tick/main

# 振ったら攻撃を始める
    execute if score $1195.SwingStart Temporary matches 1 run function asset:object/1195.creeper_glove_right/tick/swing/start

# 待機位置へ動く
    function asset:object/1195.creeper_glove_right/tick/swing/predict
    scoreboard players set $1195.ArcT Temporary 0
    function asset:object/1195.creeper_glove_right/tick/arc/
