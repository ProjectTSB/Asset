#> asset:mob/2003.abstract_eye/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/2003/tick

# デフォルトではrotateとmoveを実行する
    execute at @s run function asset:mob/call.m {method:"rotate"}
    execute at @s run function asset:mob/call.m {method:"move"}
