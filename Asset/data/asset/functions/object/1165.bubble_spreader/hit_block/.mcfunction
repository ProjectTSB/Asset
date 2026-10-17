#> asset:object/1165.bubble_spreader/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/hit_block

# General.Object.Tickによって挙動を変える
# 一定時間まで 反射
    execute if score @s General.Object.Tick matches ..100 run function asset:object/1165.bubble_spreader/hit_block/reflect
# それ以後 消滅
    execute if score @s General.Object.Tick matches 100.. run function asset:object/call.m {method:kill}
