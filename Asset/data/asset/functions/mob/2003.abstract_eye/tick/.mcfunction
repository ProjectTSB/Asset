#> asset:mob/2003.abstract_eye/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/2003/tick

# デフォルトではrelfect、rotateとmoveを実行する
    execute at @s run function asset:mob/call.m {method:"reflect"}
    execute at @s run function asset:mob/call.m {method:"rotate"}
    execute at @s run function asset:mob/call.m {method:"move"}

# 完全に重なるのを対策するために低確率で追加でmoveする
    execute if predicate lib:random_pass_per/1 at @s run function asset:mob/call.m {method:"move"}
