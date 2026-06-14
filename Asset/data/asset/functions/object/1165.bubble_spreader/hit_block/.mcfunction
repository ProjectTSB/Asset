#> asset:object/1165.bubble_spreader/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/hit_block

# General.Object.Tickによって挙動を変える
# ..15 反射
    execute if score @s General.Object.Tick matches ..15 run function asset:object/1165.bubble_spreader/hit_block/reflect
# 16.. 消滅
    execute if score @s General.Object.Tick matches 16.. run function asset:object/call.m {method:kill}
