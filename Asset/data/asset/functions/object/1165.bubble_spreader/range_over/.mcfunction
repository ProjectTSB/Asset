#> asset:object/1165.bubble_spreader/range_over/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/range_over

# killメソッドを呼び出さずそのまま消滅
    #kill @s

    function asset:object/call.m {method:kill}
